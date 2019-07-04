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

/**
 * Class OrderController
 * @package app\admin\controller
 * @adminMenuRoot(
 *     'name'   => '订单管理',
 *     'action' => 'default',
 *     'parent' => 'user/AdminIndex/default',
 *     'display'=> true,
 *     'order'  => 10000,
 *     'icon'   => '',
 *     'remark' => '管理组'
 * )
 */
class OrderController extends AdminBaseController
{
	/*
	* 订单管理列表
	*/
	public function index()
	{
		//搜索条件
		$where = array();
		$where['o.delete_time'] = 0;

		$userId = $this->request->param('user_id');
		$placeName = $this->request->param('place_name');
		$orderSn = $this->request->param('order_sn');
		$payStatus = $this->request->param('pay_status');
		$orderStatus = $this->request->param('order_status');
		if($userId != ''){
			$where['o.user_id'] = $userId;
		}
		if($placeName != ''){
			$where['p.place_name'] = "%$placeName%";
		}
		if($orderSn != ''){
			$where['o.order_sn'] = "%$orderSn%";
		}
		if($payStatus != ''){
			$where['o.pay_status'] = $payStatus;
		}
		if($orderStatus != ''){
			$where['o.order_status'] = $orderStatus;
		}

		$fir = "u.user_login, v.venue_name, p.place_name, o.*";
		$order = Db::name('order')->alias('o')
				->join('user u', 'o.user_id = u.id', 'LEFT')
				->join('place p', 'o.place_id = p.id', 'LEFT')
				->join('venue v', 'p.venue_id = v.id', 'LEFT')
				->where($where)
				->field($fir)
				->order('o.id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $order->render();

		$this->assign('list', $order);
		$this->assign('page', $page);
		return $this->fetch();	
	}

	/*
	* 订单删除
	*/
	public function delete()
	{
		$id = $this->request->param('id');

		$isExist = Db::name('order')->where('id', $id)->find();
		if(!$isExist){
			$this->error('订单不存在！');
			exit;
		}
		$result = Db::name('order')->where('id', $id)->update(['delete_time'=>time()]);
		if($result){
			$this->success('订单删除成功！');
		}else{
			$this->error('订单删除失败！');
		}
	}

	/*
	* 订单退款列表
	*/
	public function return_order()
	{
		//搜索条件
		$where = array();
		$where['o.delete_time'] = 0;

		$userId = $this->request->param('user_id');
		$orderSn = $this->request->param('order_sn');
		$status = $this->request->param('status');
		if($userId != ''){
			$where['o.user_id'] = $userId;
		}
		if($orderSn != ''){
			$where['o.order_sn'] = "%$orderSn%";
		}
		if($status != ''){
			$where['r.status'] = $status;
		}

		$fir = "u.user_login, o.order_sn, o.order_money, o.order_time, 
				o.pay_status, o.order_status, o.add_time, r.*";
		$order = Db::name('order_return')->alias('r')
				->join('order o', 'r.order_id = o.id', 'LEFT')
				->join('user u', 'o.user_id = u.id', 'LEFT')
				->where($where)
				->field($fir)
				->order('r.id DESC')
				->paginate(15, false, ['query'=>request()->param()]);
		$page = $order->render();

		$this->assign('list', $order);
		$this->assign('page', $page);
		return $this->fetch();	
	}

	/*
	* 订单退款
	*/
	public function return_examine()
	{
		$status = $this->request->param('status/s');
		$remark = $this->request->param('remark/s');
		$checks = $this->request->param('checks/a');
		
		Db::startTrans();
		try{
			if($status == 1){
				$orderId = Db::name('order_return')->where(['id'=>['in', $checks]])->column('order_id');
				Db::name('order')->where(['id'=>['in', $orderId]])->update(['order_status'=>2]);
			}
			$update = ['status'=>$status, 'remark'=>$remark, 'update_time'=>time()];
			Db::name('order_return')->where(['id'=>['in', $checks]])->update($update);
			Db::commit();
			$data = ['status' => 1, 'msg' => '操作成功！'];
		}catch(\Exception $e){
			Db::rollback();
			$data = ['status' => 0, 'msg' => '操作失败！'];
		}

		return $data;
	}
}