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

class NoticeController extends AdminBaseController
{
	/*
	* 公告列表
	*/
	public function index()
	{
		$where = array();
		$where['delete_time'] = 0;
		$title = $this->request->param('title');
		if($title != ''){
			$where['title'] = ['like', "%$title%"];
		}

		$notice = Db::name('notice n')
				->join('user u', 'n.user_id = u.id', 'LEFT')
				->field('n.*, u.user_login')
				->where($where)
				->paginate(10, false, ['query'=>request()->param()]);
		$page = $notice->render();

		$this->assign('notice', $notice);
		$this->assign('page', $page);
		return $this->fetch();
	}

	/*
	* 添加公告页面
	*/
	public function add_notice()
	{
		return $this->fetch();
	}

	/*
	* 编辑公告页面
	*/
	public function edit_notice()
	{
		$id = $this->request->param('id');
		$notice = Db::name('notice')->where('id', $id)->find();
		$notice['content'] = cmf_replace_content_file_url(htmlspecialchars_decode($notice['content']));

		$this->assign('notice', $notice);
		return $this->fetch();
	}

	/*
	* 添加编辑公告
	*/
	public function handle_notice()
	{
		$data = array();
		$action = $this->request->param('action');
		$data['title'] = $this->request->param('title');
		$data['content'] = $this->request->param('content');
		$data['content'] = htmlspecialchars(cmf_replace_content_file_url(htmlspecialchars_decode($data['content']), true));

		if($action == 'add'){
			$data['create_time'] = time();
			$data['update_time'] = time();
			$data['user_id'] = cmf_get_current_admin_id();
			$result = Db::name('notice')->insert($data);
			if($result){
				$this->success('添加成功！', url('notice/index'));
			}else{
				$this->error('添加失败！');
			}
		}else if($action == 'edit'){
			$data['update_time'] = time();
			$data['id'] = $this->request->param('id');
			$result = Db::name('notice')->update($data);
			if($result){
				$this->success('编辑成功！');
			}else{
				$this->error('编辑失败！');
			}
		}
	}

	/*
	* 删除公告
	*/
	public function delete()
	{
		$id = $this->request->param('id');

		$result = Db::name('notice')->where('id', $id)->update(['delete_time' => time()]);
		if($result){
			$this->success('删除成功！');
		}else{
			$this->error('删除失败！');
		}
	}
}