<?php
// +----------------------------------------------------------------------
// | 馆约 [ WE CAN DO IT MORE SIMPLE ]
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

class FeedbackController extends AdminBaseController
{
	/*
	* 反馈列表
	*/
	public function index()
	{
		$where = ["user_type" => 2];
		$where['delete_time'] = 0;
        /**搜索条件**/
        $userLogin = $this->request->param('user_login');
        $userEmail = trim($this->request->param('user_email'));
        if ($userLogin) {
            $where['user_login'] = ['like', "%$userLogin%"];
        }
        if ($userEmail) {
            $where['user_email'] = ['like', "%$userEmail%"];
        }
		
		$fir  = 'f.*, u.user_login, u.user_email'; 
		$list = Db::name('feedback')->alias('f')
				->join('user u', 'u.id = f.user_id')
				->where($where)
				->field($fir)
				->order('id DESC')
				->paginate(10, false, ['query'=>request()->param()]);
		$page = $list->render();
		$this->assign('page', $page);
		$this->assign('list', $list); 
		return $this->fetch();
	}

	/*
	* 反馈查看
	*/
	public function check()
	{
		$id = $this->request->param('id');
		Db::name('feedback')->where('id', $id)->update(['status' => 1]);

		$fir  = 'f.content, f.ctime, u.user_login, u.user_email';
		$feedback = Db::name('feedback')->alias('f')
				->join('user u', 'u.id = f.user_id')
				->where('f.id', $id)
				->field($fir)
				->find();
		$this->assign('feedback', $feedback);
		return $this->fetch();
	}

	/*
	* 反馈删除
	*/
	public function delete()
	{
		$id = $this->request->param('id');
		if (Db::name('feedback')->delete($id) !== false) {
            $this->success("删除成功！");
        } else {
            $this->error("删除失败！");
        }
	}
}