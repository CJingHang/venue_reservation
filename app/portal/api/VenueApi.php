<?php
namespace app\portal\api;

use app\portal\model\VenueModel;

class VenueApi
{
    /**
     * 分类列表 用于导航选择
     * @return array
     */
    public function nav()
    {
        $venue = new VenueModel();
        $where = ['status' => 1];

        $venues = $venue->where($where)->select();
        
        $return = [
            'rule'  => [
                'action' => 'portal/List/index',
                'param'  => [
                    'id' => 'id'
                ]
            ],//url规则
            'items' => $venues //每个子项item里必须包括id,name,如果想表示层级关系请加上 parent_id
        ];

        return $return;
    }

}