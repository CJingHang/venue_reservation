<?php
// +----------------------------------------------------------------------
// | 馆约 [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <馆约@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use think\Db;

class VenueController extends HomeBaseController
{
	/*
	* 场馆预定页面
	*/
    public function venue()
    {
        $lowerPrice = $this->request->param('lower_price');
        $upperPrice = $this->request->param('upper_price');
        $search = $this->request->param('search');

        $project = $this->request->param('project');
        $area = $this->request->param('area');

        $where = array();
        if($lowerPrice != ''){
            $where['p.place_price'] = ['egt', $lowerPrice];
        }
        if($upperPrice != ''){
            $where['p.place_price'] = ['elt', $upperPrice];
        }
        if($search != ''){
            $where['v.venue_name'] = ['like', "%$search%"];
        }
        if($project != ''){
            $where['p.project_id'] = $project;
        }
        if($area != ''){
            $where['v.area_id'] = $area;
        }

        //项目与区域类别
        $projects = Db::name('project')->where('status', 1)->select();
        $areas = Db::name('region')->where(['level' => 3, 'parent_id' => 294])->select();

        //热门场馆
        $hotVenue = Db::name('venue')->order('click_num DESC')->find();

        //推荐场馆
        $recVenue = Db::name('venue')->order('venue_like DESC, click_num DESC')->limit(6)->select();

        //场馆列表
        $venue = Db::name('venue v')
                ->join('place p', 'v.id = p.venue_id')
                ->join('region r', 'r.id = v.area_id', 'LEFT')
                ->field('v.*, r.name')
                ->where($where)
                ->group('v.id')
                ->order('v.id DESC')
                ->paginate(8, false, ['query'=>request()->param()]);

        $page = $venue->render();
        $this->assign('hot_venue', $hotVenue);
        $this->assign('rec_venue', $recVenue);
        $this->assign('projects', $projects);
        $this->assign('areas', $areas);
        $this->assign('venue', $venue);
        $this->assign('page', $page);
        return $this->fetch(":venue");
    }

    /*
    * 场馆详情页
    */
    public function venue_detail()
    {
    	$venueId = $this->request->param('id');
    	$whereVenue = ['v.status' => 1, 'v.delete_time' => 0, 'v.id' => $venueId];
    	$venue = Db::name('venue v')
    			->join('region r', 'v.area_id = r.id')
    			->field('v.*, r.name')
    			->where($whereVenue)
    			->find();
    	Db::name('venue')->where('id', $venueId)->update(['click_num' => $venue['click_num'] + 1]);
    	$this->assign('venue', $venue);
        return $this->fetch(":venue_detail");
    }

    /*
    * 场馆点赞
    */
    public function do_like()
    {
    	$this->checkUserLogin();

    	$id = $this->request->param('id');
    	$result = Db::name('venue')->where('id', $id)->setInc('venue_like');
    	if($result){
    		$this->success('赞好啦！');
    	}else{
    		$this->error('服务器繁忙！');
    	}
    }

    /*
    * 预约场地
    */
    public function venue_order()
    {
        cmf_check_order();
        $this->checkUserLogin();

        $venueId = $this->request->param('id');
        $venue = Db::name('venue')->where('id', $venueId)->find();
        $where = [
            'pl.status' => 1, 
            'pl.delete_time' => 0, 
            'pl.venue_id' => $venueId,
            'pr.status' => 1,
        ];         
        $project = Db::name('place pl')
                ->join('project pr', 'pl.project_id = pr.id', 'LEFT')
                ->where($where)
                ->group('pr.id')
                ->field('pr.id, pr.project_name')
                ->order('pl.id ASC')
                ->select();
        
        $this->assign('project', $project);
        $this->assign('venue', $venue);
        return $this->fetch(':venue_order');
    }

    /*
    * 获取预约场地
    */
    public function get_place()
    {
        $this->checkUserLogin();
        $venueId   = $this->request->param('venue_id');
        $projectId = $this->request->param('project_id');

        $where = array();
        $where['pr.status'] = 1;
        $where['pl.status'] = 1;
        $where['pl.delete_time'] = 0;
        $where['pr.id'] = $projectId;
        $where['pl.venue_id'] = $venueId;

        $place = Db::name('place pl')
                ->join('project pr', 'pl.project_id = pr.id', 'LEFT')
                ->field('pl.id, pl.place_name as name, pl.place_price as price')
                ->where($where)
                ->select()
                ->toArray();

        $this->assign('place', $place);
        return $this->fetch(':get_place');
    }
/*
    * 预约时间段
    */
    public function interval()
    {
        $this->checkUserLogin();
        $placeId = $this->request->param('place_id');
        $place = Db::name('place')->where('id', $placeId)->find();
        $venue = Db::name('venue')->where('id', $place['venue_id'])->find();
        $venue['open_day'] = json_decode($venue['open_day']);
        $days  = $this->getDate($venue['open_day']);

        $this->assign('days', $days);
        $this->assign('place', $place);
        return $this->fetch(':interval');
    }

    /*
    * 获取预约时间段
    */
    public function get_interval()
    {
        $this->checkUserLogin();
        $placeId = $this->request->param('place_id');
        $orderDate = $this->request->param('order_date');

        $place = Db::name('place')->where('id', $placeId)->find();
        $openTime = Db::name('venue')->where('id', $place['venue_id'])->value('open_time');
        $order = $this->get_order($placeId, $orderDate);
                
        $flag = true; //获取时段的标志
        $openTime = json_decode($openTime);
        $startTime = (int)($openTime[0]); //预约开始时间（小时）
        $endTime = (int)($openTime[1]); //预约结束时间（小时）
        $startTime = (strlen($startTime) == 1) ? '0' . $startTime : $startTime;
        $nowTime = strtotime(date("Y-m-d", time())); //当前时间
        $nowHour = date("H", time()); //当前小时
        $orderDate = (int)$orderDate; //预约日期
        if($orderDate == $nowTime){
            if($startTime < $nowHour){
                $startTime = $nowHour + 1;
            }
            if($endTime < $nowHour){
                $flag = false;
            }
        }

        $interval = array();
        if($flag){
            for ($i=$startTime; $i < $endTime; $i++) { 
                $interval[$i]['price'] = $place['place_price'];
                $interval[$i]['time_str'] = $i . ':00-' . ($i+1) . ':00';
                if(strlen($i) == 1){
                    $interval[$i]['time'] = 0 . $i;
                }else{
                    $interval[$i]['time'] = $i;
                }
                if(in_array($interval[$i]['time'], $order)){
                    $interval[$i]['flag'] = 0;
                }else{
                    $interval[$i]['flag'] = 1;
                }
            }
        }

        $this->assign('interval', $interval);
        $this->assign('place', $place);
        return $this->fetch(':get_interval');
    }

    /*
    * 获取某天已被预约的时段
    */
    public function get_order($placeId, $orderDate)
    {
        $where = array();
        $where['i.status'] = 0;
        $where['i.place_id'] = $placeId;
        $where['o.order_date'] = $orderDate;
        $order = Db::name('order o')
                ->join('order_interval i', 'i.order_id = o.id', 'LEFT')
                ->where($where)
                ->column("FROM_UNIXTIME(i.interval, '%H')");
        return $order;
    }

    /*
    * 选择预定时段
    */
    public function order()
    {
        $this->checkUserLogin();
        $placeId   = $this->request->param('place_id');
        $orderDate = $this->request->param('order_date');
        $interval = $this->request->param('interval');

        $price = Db::name('place')->where('id', $placeId)->value('place_price');
        $order = $this->get_order($placeId, $orderDate);
        if(in_array($interval, $order)){
            $data = ['price' => $price];
            $data = ['status' => 0, 'msg' => '该时段已被预约！', 'data' => $data];
            return $data;
        }else{
            $endTime = $interval + 1;
            $endTime = strlen($endTime) == 1 ? '0' . $endTime : $endTime;
            $data['price'] = $price;
            $data['time'] = $interval;
            $data['order_date'] = date("Y-m-d", $orderDate);
            $data['interval'] = $interval . ":00-" . $endTime .":00";
            $data = ['status' => 1, 'msg' => '选择预定时段！', 'data' => $data];
            return $data;
        }
    }

    /*
    * 处理预约时段
    */
    public function do_order()
    {
        $this->checkUserLogin();
        $data = $this->request->param();
        $data['interval'] = array_unique($data['interval']);
        $isOrder = $this->check_interval($data['id'], $data['date'], $data['interval']);
        if(count($isOrder) > 0){
            $result = ['status' => 2, 'msg' => '已有时段被预约，请重新选择！', 'data' => $isOrder];
            return $result;
        }

        $user = cmf_get_current_user();

        $order = array();
        $order['user_id'] = $user['id'];
        $order['user_mobile'] = $user['mobile'];
        $order['user_email'] = $user['user_email'];
        // $order['place_id'] = $data['id'];
        $order['order_date'] = $data['date'];
        $order['order_sn'] = date("YmdHis", time());
        $order['order_money'] = $data['total'];
        // $order['order_status'] = 0;
        $order['pay_status'] = 1;
        $order['pay_time'] = time();
        $order['add_time'] = time();

        Db::startTrans();
        try{
            $interval = array();
            $orderId = Db::name('order')->insertGetId($order);

            foreach ($data['interval'] as $key => $value) {
                $interval[$key]['order_id'] = $orderId;
                $interval[$key]['place_id'] = $data['id'];  
                $interval[$key]['price'] = $data['price'];
                $date =(string)(date('Y-m-d', $data['date']) . " " . $value . ":00:00");
                $interval[$key]['interval'] = strtotime($date);
                $interval[$key]['add_time'] = time();
                $interval[$key]['status'] = 0;
            }
            Db::name('order_interval')->insertAll($interval);
            Db::commit();
            $result = ['status' => 1, 'msg' => '预约时段场地成功！', 'data' => ''];
            return $result;
        }catch(\Exception $e){
            Db::rollback();
            $result = ['status' => 0, 'msg' => '服务器繁忙，请稍后再试！', 'data' => ''];
            return $result;
        }
    }

    /*
    * 检测时段是否已被预约
    */
    public function check_interval($placeId, $orderDate, $interval)
    {
        //已预约时段数组
        $orderArray = array(); 
        $order = $this->get_order($placeId, $orderDate);
        foreach ($interval as $key => $value) {
            if (in_array($value, $order)) {
                $orderArray[] = $value;
            }
        }
        return $orderArray;
    }

    /*
    * 获取场馆最近7天能预约的日期
    */
    public function getDate($data)
    {
        $flag = false;
        $index = array();
        $chinese = array("日","一","二","三","四","五","六");
        foreach ($chinese as $key => $value) {
            if(in_array($value, $data)){
                $flag = !$flag;
                if(!$flag){
                    $index[] = $key;
                }
            }
            if($flag){
                $index[] = $key;
            }
        }
        
        $data = [];
        for ($i=0; $i <= 7; $i++) { 
            $data[$i]['time'] = date('Y-m-d',strtotime($i . 'days', time()));
            $data[$i]['time'] = strtotime($data[$i]['time']);
            $day = date("w", $data[$i]['time']);
            if(in_array($day, $index)){
                $data[$i]['flag'] = 1;
            }else{
                $data[$i]['flag'] = 0;
            }
        }
        return $data;
    }
}
