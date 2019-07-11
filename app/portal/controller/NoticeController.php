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

class NoticeController extends HomeBaseController
{
	public function notice_detail()
	{
		$id = $this->request->param('id');

		$notice = Db::name('notice n')
                ->join('user u', 'n.user_id = u.id', 'LEFT')
                ->field('n.*, u.user_login')
                ->find();
        $this->assign('notice', $notice);
        return $this->fetch(':notice_detail');
	}
}