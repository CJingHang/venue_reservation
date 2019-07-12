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
		$where['i.delete_time'] = 0;

		$userId = $this->request->param('user_id');
		$placeName = $this->request->param('place_name');
		$orderSn = $this->request->param('order_sn');
		$payStatus = $this->request->param('pay_status');
		$status = $this->request->param('status');
		if($userId != ''){
			$where['o.user_id'] = $userId; 
		}
		if($placeName != ''){
			$where['p.place_name'] = ['like', "%$placeName%"];
		}
		if($orderSn != ''){
			$where['o.order_sn'] = ['like', "%$orderSn%"];
		}
		if($payStatus != ''){
			$where['o.pay_status'] = $payStatus;
		}
		if($status != ''){
			$where['i.status'] = $status;
		}

		$fir = "u.user_login, v.venue_name, p.place_name, o.order_sn, o.order_date, o.pay_status, i.*";
		$order = Db::name('order')->alias('o')
				->join('order_interval i', 'i.order_id = o.id', 'LEFT')
				->join('user u', 'o.user_id = u.id', 'LEFT')
				->join('place p', 'i.place_id = p.id', 'LEFT')
				->join('venue v', 'p.venue_id = v.id', 'LEFT')
				->where($where)
				->field($fir)
				->order('i.id DESC')
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

		$isExist = Db::name('order_interval')->where('id', $id)->find();
		if(!$isExist){
			$this->error('时段订单不存在！');
			exit;
		}
		$result = Db::name('order_interval')->where('id', $id)->update(['delete_time'=>time()]);
		if($result){
			$this->success('时段订单删除成功！');
		}else{
			$this->error('时段订单删除失败！');
		}
	}

	/*
	* 订单退款列表
	*/
	public function return_order()
	{
		//搜索条件
		$where = array();
		$where['i.delete_time'] = 0;

		$userId = $this->request->param('user_id');
		$orderSn = $this->request->param('order_sn');
		$status = $this->request->param('status');
		if($userId != ''){
			$where['o.user_id'] = $userId;
		}
		if($orderSn != ''){
			$where['o.order_sn'] = ['like', "%$orderSn%"];
		}
		if($status != ''){
			$where['r.status'] = $status;
		}

		$fir = "u.user_login, o.order_sn, o.order_date, o.add_time, o.pay_status, i.interval, i.price, i.status as order_status, r.*";
		$order = Db::name('order_return')->alias('r')
				->join('order_interval i', 'i.id = r.interval_id', 'LEFT')
				->join('order o', 'i.order_id = o.id', 'LEFT')
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
			$intervalId = Db::name('order_return')->where(['id'=>['in', $checks]])->column('interval_id');

			if($status == 1){
				$update = ['status'=>2, 'return_time'=>time()];
				Db::name('order_interval')->where(['id'=>['in', $intervalId]])->update($update);
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