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

use cmf\controller\HomeBaseController;
use think\Db;

class NewsController extends HomeBaseController
{
	public function news()
	{
                $where = array();
                $where['post.post_status'] = 1;
                $where['post.delete_time'] = 0;
                $where['categoryId.status'] = 1;
                $where['category.status'] = 1;
                $where['category.delete_time'] = 0;

                $focus = Db::name('portal_post post')
                		->join('portal_category_post categoryId', 'post.id = categoryId.post_id')
                		->join('portal_category category', 'categoryId.category_id = category.id')
                		->where('category.id', 2)
                		->where($where)
                		->field('post.id, post.post_title, post.thumbnail, post.published_time, categoryId.category_id')
                		->order('post.id DESC')
                		->limit(5)
                		->select();
                $match = Db::name('portal_post post')
                		->join('user user', 'post.user_id = user.id')
                		->join('portal_category_post categoryId', 'post.id = categoryId.post_id')
                		->join('portal_category category', 'categoryId.category_id = category.id')
                		->where('category.id', 3)
                		->where($where)
                		->field('post.*, categoryId.category_id, user.user_login')
                		->order('post.id DESC')
                		->paginate(8, false, ['query'=>request()->param()]);

                $page = $match->render();
                $this->assign('focus', $focus);
                $this->assign('match', $match);
                $this->assign('page', $page);
		return $this->fetch(":news");
	}
}