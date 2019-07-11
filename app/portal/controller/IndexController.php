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

class IndexController extends HomeBaseController
{
    public function index()
    {
        cmf_check_order();
    	$whereVenue = ['v.status' => 1, 'v.delete_time' => 0];
    	$venue = Db::name('venue v')
    			->join('region r', 'v.area_id = r.id', 'LEFT')
    			->where($whereVenue)
    			->field('v.*, r.name')
    			->order('v.click_num DESC, v.id ASC')
    			->limit(8)
    			->select()
    			->toArray();

        $notice = Db::name('notice')
                ->where('delete_time', 0)
                ->limit(6)
                ->select();
    	$this->assign('notice', $notice);
        $this->assign('venue', $venue);
        return $this->fetch(':index');
    }
}
