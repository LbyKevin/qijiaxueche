<?php
/**
 * Created by PhpStorm.
 * User: 凯拓
 * Date: 2018/1/26
 * Time: 15:44
 */
namespace Admin\Model;
use Think\Model;
class QijiaNewsModel extends Model
{
    protected $_validate = array(
        array('title','require','标题不能为空',0,'regex',3),
        array('content','require','内容不能为空',0,'regex',3),
        array('admin_id','require','管理员ID不能为空',0,'regex',3),
        array('type','require','类型不能为空',0,'regex',3)
    );

    protected function _before_update(&$data,$options) {
        //删除老图片
        if($data['img']!='') {
            $oldPath = $this->where($options['where'])->getField('img');
            if($oldPath){
                if(file_exists($oldPath)){
                    @unlink($oldPath);
                }
            }
        }
    }

    protected function _before_delete($options) {
        $oldPath = $this->where($options['where'])->field('img')->select();
        foreach($oldPath as $key=>$val) {
            @unlink($val['img']);
        }
    }
}