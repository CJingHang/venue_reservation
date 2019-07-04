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
		$venueName = $this->request->param('venue_name');
		$status = $this->request->param('status');
		if($venueName){
			$where['venue_name'] = '%$venueName%';
		}
		if($status){
			$where['status'] = $status;
		}

		$venueList = Db::name('venue')
				->where($where)
				->order('id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $venueList->render();

		$this->assign('list', $venueList);
		$this->assign('page', $page);
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
			$data = ['status' => 0, 'msg' => '场馆名称不能为空！'];
			return $data;
		}

		//场馆名称是否已存在
		$venueNames = Db::name('venue')->where('id', 'not in', $venue['id'])->column('venue_name');
		if(in_array($venue['venue_name'], $venueNames)){
			$data = ['status' => 0, 'msg' => '场馆名称已存在！'];
			return $data;
		}

		//开放时间不能为空
		if($venue['open_time'] == ''){
			$data = ['status' => 0, 'msg' => '开放时间不能为空！'];
			return $data;
		}

		if($venue['action'] == 'add'){
			$addData = array();
			$addData['province_id'] = $venue['province'];
			$addData['city_id'] = $venue['city'];
			$addData['area_id'] = $venue['area'];
			$addData['venue_name'] = $venue['venue_name'];
			$addData['venue_img'] = $venue['photo_url'];
			$addData['venue_desc'] = $venue['desc'];
			$addData['open_time'] = $venue['open_time'];
			$addData['create_time'] = time();
			$addData['update_time'] = time();
			$addData['status'] = $venue['status'];

			$result = Db::name('venue')->insert($addData);
			if($result){
				$data = ['status' => 1, 'msg' => '提交成功！'];
				return $data;
			}else{
				$data = ['status' => 0, 'msg' => '提交失败！'];
				return $data;
			}
		}else if($venue['action'] == 'edit'){
			//检测当前场馆是否存在
			$isExist = Db::name('venue')->where('id', $venue['id'])->find();
			if(!$isExist){
				$data = ['status' => 0, 'msg' => '场馆不存在！'];
				return $data;
			}

			$editData = array();
			$editData['id'] = $venue['id'];
			$editData['province_id'] = $venue['province'];
			$editData['city_id'] = $venue['city'];
			$editData['area_id'] = $venue['area'];
			$editData['venue_name'] = $venue['venue_name'];
			$editData['venue_img'] = $venue['photo_url'];
			$editData['venue_desc'] = $venue['desc'];
			$editData['open_time'] = $venue['open_time'];
			$editData['update_time'] = time();
			$editData['status'] = $venue['status'];

			try{
				Db::name('venue')->update($editData);
				$data = ['status' => 1, 'msg' => '提交成功！'];
				return $data;
			}catch(Exception $e){
				$data = ['status' => 0, 'msg' => '提交失败！'];
				return $data;
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
		$venueId = $this->request->param('venue_id');
		$placeName = $this->request->param('place_name');
		$isBook = $this->request->param('is_book');
		$status = $this->request->param('status');
		if($venueId){
			$where['venue_id'] = $venueId;
		}
		if($placeName){
			$where['pl.place_name'] = '%$placeName%';
		}
		if($isBook){
			$where['pl.is_book'] = $isBook;
		}
		if($status){
			$where['pl.status'] = $status;
		}

		$list = Db::name('place')->alias('pl')
				->join('project pr', 'pl.project_id = pr.id')
				->field('pl.*, pr.project_name')
				->where($where)
				->order('id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $list->render();
		$this->assign('venue_id', $venueId);
		$this->assign('list', $list);
		$this->assign('page', $page);
		return $this->fetch();
	}

	/**
	* 添加场地界面
	*/
	public function add_place()
	{
		$venueId = $this->request->param('venue_id');

		$project = Db::name('project')->order('id DESC')->select();
		$this->assign('venue_id', $venueId);
		$this->assign('project', $project);
		return $this->fetch();
	}

	/**
	* 添加场地
	*/
	public function handle_place()
	{
		$place = $this->request->param();

		//场地名称、价格都不能为空
		if($place['place_name'] == ''){
			$this->error('场地名称不能为空！');
			exit;
		}
		if($place['place_price'] == ''){
			$this->error('场地价格不能为空！');
			exit;
		}
		if($place['start_time'] >= $place['end_time']){
			$this->error('开放的开始时间不能大于或等于结束时间！');
			exit;
		}

		if($place['action'] == 'add'){
			$placeData = array(
				'venue_id' => $place['venue_id'],
				'project_id' => $place['project_id'],
				'place_name' => $place['place_name'],
				'place_price' => round($place['place_price'], 2),
				'start_time' => $place['start_time'],
				'end_time' => $place['end_time'],
				'create_time' => time(),
				'update_time' => time(),
				'status' => $place['status'],
			);
			$result = Db::name('place')->insert($placeData);
			if($result){
				$this->success('添加成功！', url('venue/place', array('venue_id' => $place['venue_id'])));	
				exit;
			}else{
				$this->error('添加失败！');
				exit;
			}
		}else if($place['action'] == 'edit'){
			$placeData = array(
				'id' => $place['place_id'],
				'project_id' => $place['project_id'],
				'place_name' => $place['place_name'],
				'place_price' => round($place['place_price'], 2),
				'start_time' => $place['start_time'],
				'end_time' => $place['end_time'],
				'update_time' => time(),
				'status' => $place['status'],
			);

			try{
				Db::name('place')->update($placeData);
				$this->success('编辑成功！', url('venue/place', array('venue_id' => $place['venue_id'])));	
			}catch(Exception $e){
				$this->error('编辑失败！');
			}
		}
	}

	/**
	* 编辑场地界面
	*/
	public function edit_place()
	{
		$placeId = $this->request->param('id');
		$venueId = $this->request->param('venue_id');

		$project = Db::name('project')->order('id DESC')->select();
		$place = Db::name('place')->where('id', $placeId)->find();
		$this->assign('project', $project);
		$this->assign('venue_id', $venueId);
		$this->assign('place', $place);
		return $this->fetch();
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
	* 场馆项目停用、启用
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
}