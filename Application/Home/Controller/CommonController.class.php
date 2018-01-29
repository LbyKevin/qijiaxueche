<?php
/**
 * Created by PhpStorm.
 * User: 凯拓
 * Date: 2018/1/29
 * Time: 10:33
 */

namespace Home\Controller;

use Think\Controller;
class CommonController extends Controller
{
    public function _initialize() {
        $this->qijia_url = 'http://we.kaituocn.com/attachment/';
        $this->contact_info = M('QijiaContact')->where(array('id'=>1))->find();
    }
}