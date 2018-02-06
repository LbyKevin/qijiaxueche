<?php
namespace Home\Controller;

class IndexController extends CommonController {
//首页
    public function index(){
        $this->pvuvStatistics();

        $this->slide = M('QijiaSlideshow')
            ->where(array('is_recommend'=>1))
            ->order(array('ctime'=>'ASC'))->select();
        $this->env = M('QijiaNews')->where(array('type'=>4))->select();
        if($this->isMobile()) {
            $limit = '0,2';
            if(I('get.act') == 'more') {
                $limit = '0,100';
            }
            $this->courseList = M('Join')->alias('j')
                ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
                ->field('j.*,c.cat_name')
                ->order(array('id'=>'DESC'))
                ->limit($limit)
                ->select();
            $this->display('Index/Mobile/index');
        }else {
            $limit = '0,6';
            $this->courseList = M('Join')->alias('j')
                ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
                ->field('j.*,c.cat_name')
                ->order(array('id'=>'DESC'))
                ->limit($limit)
                ->select();
            $this->display();
        }
    }
//了解更多
    public function course_details() {
        $this->info = M('Join')->alias('j')
            ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
            ->where(array('j.id'=>I('get.id')))
            ->field('j.*,c.cat_name')
            ->find();
        if($this->isMobile()) {
            $this->display('Index/Mobile/course_details');
        }else {
            $this->display();
        }
    }
//驾校课程
    public function curriculum_erweima() {
        $this->courseList = M('Join')->alias('j')
            ->join("LEFT JOIN ims_acti2_cat c ON j.pid=c.id")
            ->field('j.*,c.cat_name')
            ->select();
        if($this->isMobile()) {
            $this->display('Index/Mobile/curriculum_erweima');
        }else {
            $this->display();
        }
    }
//企业历程
    public function enterprise_experience() {
        $this->list = M('QijiaNews')
            ->where(array('type'=>1,'is_recommend'=>1))
            ->order(array('sort'=>'ASC'))
            ->select();
        if($this->isMobile()) {
            $this->display('Index/Mobile/enterprise_experience');
        }else {
            $this->display();
        }
    }
//行业动态
    public function Industry_dynamics() {
        $limit = '0,4';
        if(I('get.act') == 'history') {
            $limit = '0,100';
        }
        $this->list = M('QijiaNews')
            ->order(array('id'=>'DESC'))
            ->limit($limit)
            ->where(array('type'=>2,'is_recommend'=>1))->select();
        if($this->isMobile()) {
            $this->display('Index/Mobile/industry_dynamics');
        }else {
            $this->display();
        }
    }

    public function dynamic_details() {
        $this->info = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->field('n.*,a.nickname')
            ->where(array('n.id'=>I('get.id')))->find();
        if($this->isMobile()) {
            $this->display('Index/Mobile/dynamic_details');
        }else {
            $this->display();
        }
    }
//交通法规
    public function traffic_regulations() {
        $this->list = M('QijiaNews')->where(array('type'=>3,'is_recommend'=>1))->select();
        if($this->isMobile()) {
            $this->display('Index/Mobile/traffic_regulations');
        }else {
            $this->display();
        }
    }

    public function details_of_traffic_regulations() {
        $this->info = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->field('n.*,a.nickname')
            ->where(array('n.id'=>I('get.id')))->find();
        if($this->isMobile()) {
            $this->display('Index/Mobile/details_of_the_laws');
        }else {
            $this->display();
        }
    }
//联系我们
    public function contact_us() {
        if($this->isMobile()) {
            $this->display('Index/Mobile/contact_us');
        }else {
            $this->display();
        }
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