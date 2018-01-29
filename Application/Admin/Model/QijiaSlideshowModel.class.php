<?php
/**
 * Created by PhpStorm.
 * User: 凯拓
 * Date: 2018/1/26
 * Time: 15:44
 */
namespace Admin\Model;
use Think\Model;
class QijiaSlideshowModel extends Model
{
    protected $_validate = array(
        array('title','require','标题不能为空',0,'regex',3),
        array('desc','require','描述不能为空',0,'regex',3),
    );

    protected function _before_update(&$data,$options) {
        //删除老图片
        if($data['pic']!='') {
            $oldPath = $this->where($options['where'])->getField('pic');
            if($oldPath){
                if(file_exists($oldPath)){
                    @unlink($oldPath);
                }
            }
        }
    }

    protected function _before_delete($options) {
        $oldPath = $this->where($options['where'])->field('pic')->select();
        foreach($oldPath as $key=>$val) {
            @unlink($val['pic']);
        }
    }
}