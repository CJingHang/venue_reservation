<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Powerless < wzxaini9@gmail.com>
// +----------------------------------------------------------------------
namespace app\user\controller;

use think\Db;
use app\user\model\CommentModel;
use cmf\controller\UserBaseController;
use app\user\model\UserModel;

class OrderController extends UserBaseController
{
	/*
	* 订单列表
	*/
	public function index()
	{
		cmf_check_order();
		$user = cmf_get_current_user();
		$status = $this->request->param('status');

		$where = array();
		if($status != ''){
			$where["i.status"] = $status;
		}
		$where["i.delete_time"] = 0;
		$where['o.user_id'] = $user['id'];
		$order = Db::name('order o')
				->join('order_interval i', 'i.order_id = o.id', 'LEFT')
				->join('place p', 'p.id = i.place_id', 'LEFT')
				->join('venue v', 'v.id = p.venue_id', 'LEFT')
				->field('v.venue_name, p.place_name, o.order_sn, o.order_date, o.pay_status, i.*')
				->where($where)
				->paginate(10, false, ['query'=>request()->param()]);

		$page = $order->render();
		$this->assign('order', $order);
		$this->assign('page', $page);
		$this->assign($user);
		return $this->fetch();
	}

	/*
	* 取消订单
	*/
	public function order_cancel()
	{
		$id = $this->request->param('id');
		$userId = cmf_get_current_user_id();

		$interval = Db::name('order_interval')->where('id', $id)->value('interval');
		if(($interval - time()) < 1800){
			$this->error('距离订单结束不足一小时的不允许取消订单！');
			exit;
		}
		$data = array();
		$data['interval_id'] = $id;
		$data['user_id'] = $userId;
		$data['create_time'] = time();
		$data['update_time'] = time();
		$result = Db::name('order_return')->insert($data);

		if($result){
			$result = Db::name('order_interval')->where('id', $id)->update(['return_status' => 1]);
			if($result !== false){
				$this->success('订单取消申请已提交，审核通过后会退还金额！');
			}else{
				$this->error('服务器繁忙，请稍后再试！');
			}
		}else{
			$this->error('服务器繁忙，请稍后再试！');
		}
	}

	/*
	* 退款申请
	*/
	public function order_return()
	{
		$user = cmf_get_current_user();
		$returnStatus = $this->request->param('return_status');

		$where = array();
		if($returnStatus != ''){
			$where["r.status"] = $returnStatus;
		}
		$where['r.user_id'] = $user['id'];
		$order = Db::name('order_return r')
				->join('order_interval i', 'r.interval_id = i.id', 'LEFT')
				->join('order o', 'o.id = i.order_id', 'LEFT')
				->join('place p', 'p.id = i.place_id', 'LEFT')
				->join('venue v', 'v.id = p.venue_id', 'LEFT')
				->field('v.venue_name, p.place_name, o.order_date, o.pay_status, i.*, r.status as return_status')
				->where($where)
				->paginate(10, false, ['query'=>request()->param()]);

		$page = $order->render();
		$this->assign('order', $order);
		$this->assign('page', $page);
		$this->assign($user);
		return $this->fetch();
	}
}