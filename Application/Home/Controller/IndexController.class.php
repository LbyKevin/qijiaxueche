<?php
namespace Home\Controller;

use Think\Model;

class IndexController extends CommonController {
//首页
    public function index(){
        $this->pvuvStatistics();
        $this->courseList = M('Join')->alias('j')
            ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
            ->field('j.*,c.cat_name')
            ->select();
        $this->display();
    }
//了解更多
    public function course_details() {
        $this->info = M('Join')->alias('j')
            ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
            ->where(array('j.id'=>I('get.id')))
            ->field('j.*,c.cat_name')
            ->find();
        $this->display();
    }
//驾校课程
    public function curriculum_erweima() {
        $this->display();
    }
//企业历程
    public function enterprise_experience() {
        $this->display();
    }
//行业动态
    public function Industry_dynamics() {
        $this->display();
    }
//交通法规
    public function traffic_regulations() {
        $this->display();
    }
//联系我们
    public function contact_us() {
        $this->display();
    }

    public function apply() {
        $Apply = M('QijiaApply');
        $exist = $Apply->where(array('tel'=>I('post.tel')))->find();
        if($exist) {
            json('此号码已预约,请使用其他手机号');
        }
        $_POST['ip'] = $this->getip();
        if($Apply->add($_POST)) {
            json(1);
        }else {
            json('提交失败');
        }
    }

    public function pvuvStatistics() {
        $pvuv = M('QijiaPvuv');
        $exist = $pvuv->where(array('ip'=>$this->getip(),'_string'=>'TO_DAYS(vtime)=TO_DAYS(NOW())'))->find();
        if(!$exist) {
            $pvuv->add(array('client_ip'=>$this->getip()));
        }
    }

    private function getip() {
        $unknown = 'unknown';
        if ( isset($_SERVER['HTTP_X_FORWARDED_FOR']) && $_SERVER['HTTP_X_FORWARDED_FOR'] && strcasecmp($_SERVER['HTTP_X_FORWARDED_FOR'], $unknown) ) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif ( isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], $unknown) ) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        /*
        处理多层代理的情况
        或者使用正则方式：$ip = preg_match("/[\d\.]{7,15}/", $ip, $matches) ? $matches[0] : $unknown;
        */
        if (false !== strpos($ip, ','))
            $ip = reset(explode(',', $ip));
        return $ip;
    }


}