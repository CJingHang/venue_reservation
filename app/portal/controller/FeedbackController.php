<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <ThinkCMF@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use think\Db;
use cmf\controller\HomeBaseController;

class FeedbackController extends HomeBaseController
{
	/*
	* 用户反馈页面
	*/
	public function feed()
	{
		$this->checkUserLogin();
		return $this->fetch(":feed");
	}

	/*
	* 用户反馈处理
	*/
	public function do_feed()
	{
		$this->checkUserLogin();
		$content = $this->request->param("content");
		if($content == ''){
			$this->error('反馈内容不能为空！');
		}

		$userId = cmf_get_current_user_id();
		$data = array();
		$data['user_id'] = $userId;
		$data['content'] = $content;
		$data['ctime'] = time();

		$result = Db::name("feedback")->insert($data);
		if($result){
			$this->success('提交成功!');
		}else{
			$this->error('提交失败！');
		}
	}
}