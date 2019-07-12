<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 小夏 < 449134904@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Db;
use think\Exception;

/**
 * Class VenueController
 * @package app\admin\controller
 * @adminMenuRoot(
 *     'name'   => '场馆管理',
 *     'action' => 'default',
 *     'parent' => 'user/AdminIndex/default',
 *     'display'=> true,
 *     'order'  => 10000,
 *     'icon'   => '',
 *     'remark' => '管理组'
 * )
 */
class VenueController extends AdminBaseController
{
	/*
	* 场馆管理列表
	*/
	public function index()
	{
		//搜索条件
		$where = array();
		$where['v.delete_time'] = 0;
		$venueName = $this->request->param('venue_name');
		$status = $this->request->param('status');
		if($venueName != ''){
			$where['v.venue_name'] = ['like', "%$venueName%"];
		}
		if($status != ''){
			$where['v.status'] = $status;
		}

		$venueList = Db::name('venue v')
				->join('region r', 'v.area_id = r.id', 'LEFT')
				->where($where)
				->field('v.*, r.id as area_id, r.name')
				->order('v.id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $venueList->render();

		$this->assign('list', $venueList);
		$this->assign('page', $page);
		return $this->fetch();	
	}

	/*
	* 添加场馆页面
	*/
	public function add_venue()
	{	
		$region = Db::name('region')->field('id, name')->select();
		$this->assign('region', $region);
		return $this->fetch();
	}

	/*
	* 编辑场馆页面
	*/
	public function edit_venue()
	{	
		$venueId = $this->request->param('venue_id');
		$venue = Db::name('venue')->where('id', $venueId)->find();
		$venue['open_day'] = json_decode($venue['open_day']);
		$venue['open_time'] = json_decode($venue['open_time']);

		$region = Db::name('region')->field('id, name')->select();
		$this->assign('venue', $venue);
		$this->assign('region', $region);
		return $this->fetch();
	}

	/*
	* 添加、编辑场馆
	*/
	public function handle_venue()
	{
		$venue = $this->request->param();
		
		//场馆名称不能为空
		if($venue['venue_name'] == ''){
			$this->error('场馆名称不能为空！');
			exit;
		}

		//场馆名称不能为空
		if($venue['photo_url'] == ''){
			$this->error('场馆图片不能为空！');
			exit;
		}

		//场馆名称不能为空
		if($venue['venue_mobile'] == ''){
			$this->error('场馆联系电话不能为空！');
			exit;
		}

		//详细地址不能为空
		if($venue['venue_address'] == ''){
			$this->error('场馆详细地址不能为空！');
			exit;
		}

		//开放时间的结束时间必须大于开始时间
		if($venue['open_time_start'] >= $venue['open_time_end']){
			$this->error('开放时间的结束时间必须大于开始时间！');
			exit;
		}

		$data = array();
		$data['area_id'] = $venue['area'];
		$data['venue_address'] = $venue['venue_address'];
		$data['venue_name'] = $venue['venue_name'];
		$data['venue_img'] = $venue['photo_url'];
		$data['venue_mobile'] = $venue['venue_mobile'];
		$data['venue_desc'] = $venue['desc'];
		$data['status'] = $venue['status'];
		$data['open_day'] = json_encode(['0'=>$venue['open_day_start'], '1'=>$venue['open_day_end']]);
		$data['open_time'] = json_encode(['0'=>$venue['open_time_start'], '1'=>$venue['open_time_end']]);

		if($venue['action'] == 'add'){
			$data['create_time'] = time();
			$data['update_time'] = time();
			
			$venueSn = Db::name('venue')->limit(1)->order('id DESC')->value('venue_sn');
			if($venueSn){
				$venueSn = $venueSn + 1;
			}else{
				$venueSn = 100001;
			}
			$data['venue_sn'] = $venueSn;

			$result = Db::name('venue')->insert($data);
			if($result){
				$this->success('提交成功！', url('venue/index'));
				exit;
			}else{
				$this->error('提交失败！');
				exit;
			}
		}else if($venue['action'] == 'edit'){
			//检测当前场馆是否存在
			$isExist = Db::name('venue')->where('id', $venue['id'])->find();
			if(!$isExist){
				$this->error('场馆不存在！');
				exit;
			}

			$data['id'] = $venue['id'];
			$data['update_time'] = time();
			try{
				Db::name('venue')->update($data);
				$this->success('提交成功！');
				exit;
			}catch(Exception $e){
				$this->error('提交失败！');
				exit;
			}
		}

	}

	/*
	* 场地列表
	*/
	public function place()
	{
		//搜索条件
		$where = array();
		$where['delete_time'] = 0;
		$venueId = $this->request->param('venue_id');
		$placeName = $this->request->param('place_name');
		$status = $this->request->param('status');
		if($venueId != ''){
			$where['venue_id'] = $venueId;
		}
		if($placeName != ''){
			$where['pl.place_name'] = ['like', "%$placeName%"];
		}
		if($status != ''){
			$where['pl.status'] = $status;
		}

		$venueName = Db::name('venue')->where('id', $venueId)->value('venue_name');
		$project = Db::name('project')->order('id DESC')->select();
		$list = Db::name('place')->alias('pl')
				->join('project pr', 'pl.project_id = pr.id')
				->field('pl.*, pr.project_name')
				->where($where)
				->order('id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $list->render();
		$this->assign('venue_id', $venueId);
		$this->assign('venue_name', $venueName);
		$this->assign('project', $project);
		$this->assign('list', $list);
		$this->assign('page', $page);
		return $this->fetch();
	}

	/**
	* 添加、编辑场地
	*/
	public function handle_place()
	{
		$place = $this->request->param();

		//场地名称、价格都不能为空
		if($place['place_name'] == ''){
			$data = ['status' => 0, 'msg' => '场地名称不能为空！'];
			return $data;
		}
		if($place['place_price'] == ''){
			$data = ['status' => 0, 'msg' => '价格不能为空！'];
			return $data;
		}

		if($place['action'] == 'add'){
			$placeData = array(
				'venue_id' => $place['venue_id'],
				'project_id' => $place['project_id'],
				'place_name' => $place['place_name'],
				'place_price' => round($place['place_price'], 2),
				'create_time' => time(),
				'update_time' => time(),
				'status' => $place['status'],
			);
			$result = Db::name('place')->insert($placeData);
			if($result){
				$data = ['status' => 1, 'msg' => '提交成功！'];
			}else{
				$data = ['status' => 0, 'msg' => '提交失败！'];
			}
			return $data;

		}else if($place['action'] == 'edit'){
			$placeData = array(
				'id' => $place['place_id'],
				'project_id' => $place['project_id'],
				'place_name' => $place['place_name'],
				'place_price' => round($place['place_price'], 2),
				'update_time' => time(),
				'status' => $place['status'],
			);

			try{
				Db::name('place')->update($placeData);
				$data = ['status' => 1, 'msg' => '提交成功！'];
			}catch(Exception $e){
				$data = ['status' => 0, 'msg' => '提交失败！'];
			}
			return $data;
		}
	}

	/*
	* 场馆项目管理列表
	*/
	public function project_list()
	{
		$where = array();
        /**搜索条件**/
        $projectName = $this->request->param('project_name');
        $status = trim($this->request->param('status'));
        if ($projectName) {
            $where['project_name'] = ['like', "%$projectName%"];
        }
        if ($status != '') {	
            $where['status'] = $status;
        }

        $list = Db::name('project')
       			->where($where)
       			->order('id DESC')
       			->paginate(15, false, ['query' => request()->param()]);
       	$page = $list->render();
       	$this->assign('page', $page);
       	$this->assign('list', $list);
		return $this->fetch();	
	}

	/*
	* 添加、编辑项目
	*/
	public function handle_project()
	{
		$project = $this->request->param();

		//检测空值
		if($project['project_name'] == ''){
			$data = ['status' => 0, 'msg' => '项目名称不能为空！'];
			return $data;
		}

		//检测项目名称是否已存在
		$projects = Db::name('project')->where('id', 'not in', $project['id'])->column('project_name');
		if(in_array($project['project_name'], $projects)){
			$data = ['status' => 0, 'msg' => '项目已存在！'];
			return $data;
		}

		if($project['action'] == 'edit'){
			//编辑项目			
			$isExist = Db::name('project')->where('id', $project['id'])->find();
			if(!$isExist){
				$data = ['status' => 0, 'msg' => '该项目不存在！'];
				return $data;
			}

			$editData = [
				'id' => $project['id'], 
				'desc' => $project['desc'],
				'project_name' => $project['project_name'], 
			];
			try{
				Db::name('project')->update($editData);
				$data = ['status' => 1, 'msg' => '提交成功！'];
				return $data;
			}catch(\Exception $e){
				$data = ['status' => 0, 'msg' => '提交失败！'];
				return $data;
			}

		}else if($project['action'] == 'add'){
			//添加项目
			$addData = [
				'project_name' => $project['project_name'], 
				'status' => $project['status'],
				'ctime' => time(),
				'desc' => $project['desc'],
			];
			$result = Db::name('project')->insert($addData);
			if($result){
				$data = ['status' => 1, 'msg' => '提交成功！'];
				return $data;
			}else{
				$data = ['status' => 0, 'msg' => '提交失败！'];
				return $data;
			}
		}
	}

	/*
	* 软删除列表数据
	*/
	public function delete()
	{
		$id = $this->request->param('id');
		$table = $this->request->param('table');

		$result = Db::name($table)->where('id', $id)->update(['delete_time'=>time()]);
		if($result !== false ){
			$this->success('删除成功！');
		}else{
			$this->error('删除失败！');
		}
	}

	/*
	* 修改列表数据状态
	*/
	public function change_status()
	{
		$id = $this->request->param('id');
		$status = $this->request->param('status');
		$table = $this->request->param('table');

		$result = Db::name($table)->where('id', $id)->update(['status' => $status]);
		if($result !== false){
			$this->success('操作成功！');
		}else{
			$this->error('操作失败！');
		}
	}

	/*
	* 获取表信息
	*/
	public function get_info()
	{
		$id = $this->request->param('id');
		$table = $this->request->param('table');

		$result = Db::name($table)->where('id', $id)->find();
		if($result !== false){
			$data = ['status' => 1, 'msg' => '获取成功！', 'data' => $result];
		}else{
			$data = ['status' => 0, 'msg' => '获取失败！', 'data' => ''];
		}
		return $data;
	}

	/*
	* 获取地区
	*/	
	public function get_region()
	{
		$parentId = $this->request->param('id');
		$level = $this->request->param('level');

		$region = Db::name('region')
			->where(['level' => $level, 'parent_id' => $parentId])
			->field('id, name')
			->select();

		if(!empty($region)){
			$data = ['status' => 1, 'msg' => '获取成功！', 'data' => $region];
		}else{
			$data = ['status' => 0, 'msg' => '地区获取失败，请联系客服！', 'data' => ''];
		}
		return $data;
	}

	/*
	* 获取场馆图片
	*/	
	public function get_venue_img()
	{
		$id = $this->request->param('id');

		$img = Db::name('venue')->where('id', $id)->value('venue_img');
		if(!empty($img)){
			if (strpos($img, "/") === 0) {
                $img = $this->request->domain() . '/upload' . $img;
            }else{
            	$img = $this->request->domain() . '/upload/' . $img;
            }
		}else{
			$img = $this->request->domain() . "/static/images/venue.jpg";
		}
		return redirect($img);
	}
}