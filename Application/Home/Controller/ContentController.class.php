<?php
/**
 * Created by PhpStorm.
 * User: 凯拓
 * Date: 2018/1/26
 * Time: 10:12
 */

namespace Home\Controller;


class ContentController extends CommonController
{
    public function index() {
        echo 'OK OK TEST';
    }

    public function courseList() {
        $this->list = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->field('n.*,a.nickname')
            ->where(array('type'=>1))->select();
        $this->display();
    }

    public function newsList() {
        $this->list = M('QijiaNews')->where(array('type'=>2))->select();
        $this->display();
    }

    public function lawsList() {
        $this->list = M('QijiaNews')->where(array('type'=>3))->select();
        $this->display();
    }

    public function addContent() {
        $type = I('get.type');
        in_array($type,array(1,2,3)) || $this->error('非法参数');
        $this->type = $type;
        $this->display();
    }

    public function addContentPost() {
        $data['title'] = I('post.title');
        $data['content'] = I('post.content');
        $data['type'] = I('post.type');
        $data['admin_id'] = session('admin_id');
        $News = M('QijiaNews');
        if($_FILES['file']['name'] != '') {
            $info = $this->OneUpload('file');
            $data['img'] = $info['savepath'].$info['savename'];
        }
        $result = $News->add($data);
        if($result !== false) {
            $this->success('添加成功',U('Content/courseList'));
        }else {
            $this->error('添加失败');
        }
    }

    public function modContent() {
        $id = I('get.content_id');
        $this->info = M('QijiaNews')->where(array('id'=>$id))->find();
        $this->content_id = $id;
        $this->display();
    }

    public function modContentPost() {
        $data['title'] = I('post.title');
        $data['content'] = I('post.content');
        $data['admin_id'] = session('admin_id');
        $id = I('post.content_id');
        $News = M('QijiaNews');
        if($_FILES['file']['name'] != '') {
            $info = $this->OneUpload('file');
            $data['img'] = $info['savepath'].$info['savename'];
        }
        $result = $News->where(array('id'=>$id))->save($data);
        if($result !== false) {
            $this->success('修改成功',U('Content/courseList'));
        }else {
            $this->error('修改失败');
        }
    }
}