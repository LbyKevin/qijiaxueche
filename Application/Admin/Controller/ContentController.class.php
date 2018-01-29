<?php
/**
 * Created by PhpStorm.
 * User: 凯拓
 * Date: 2018/1/26
 * Time: 10:12
 */

namespace Admin\Controller;


class ContentController extends CommonController
{
    public function index() {
        echo 'OK OK TEST';
    }

    public function courseList() {
        $search = I('get.search');
        $where = array();
        if($search) { $where['n.title'] = array('LIKE',"%" . $search . "%");}
        $this->list = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->where($where)
            ->field('n.*,a.nickname')
            ->order(array('n.sort'=>'ASC'))
            ->where(array('type'=>1))->select();
        $this->type = 1;
        $this->title = '企业历程';
        $this->display();
    }

    public function newsList() {
        $this->list = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->field('n.*,a.nickname')
            ->order(array('n.sort'=>'ASC'))
            ->where(array('type'=>2))->select();
        $this->type = 2;
        $this->title = '行业动态';
        $this->display('courseList');
    }

    public function lawsList() {
        $this->list = M('QijiaNews')->alias('n')
            ->join("LEFT JOIN ims_acti2_qijia_admin a ON n.admin_id=a.id")
            ->field('n.*,a.nickname')
            ->order(array('n.sort'=>'ASC'))
            ->where(array('type'=>3))->select();
        $this->type = 3;
        $this->title = '交通法规';
        $this->display('courseList');
    }

    public function addContent() {
        $type = I('get.type');
        in_array($type,array(1,2,3)) || $this->error('非法参数');
        switch($type) {
            case 1:$typename = '企业历程';break;
            case 2:$typename = '行业动态';break;
            case 3:$typename = '交通法规';break;
        }
        $this->type = $type;
        $this->typename = $typename;
        $this->display();
    }

    public function addContentPost() {
        $data['title'] = I('post.title');
        $data['content'] = I('post.content');
        $data['type'] = I('post.type');
        $data['admin_id'] = session('admin_id');
        $News = D('QijiaNews');
        if($_FILES['file']['name'] != '') {
            $info = $this->OneUpload('file');
            $data['img'] = $info['savepath'].$info['savename'];
        }
        switch($data['type']) {
            case 1:$url = 'Content/courseList';break;
            case 2:$url = 'Content/newsList';break;
            case 3:$url = 'Content/lawsList';break;
        }
        $result = $News->add($data);
        if($result !== false) {
            $this->success('添加成功',U($url));
        }else {
            $this->error('添加失败');
        }
    }

    public function modContent() {
        $id = I('get.content_id');
        $this->info = M('QijiaNews')->where(array('id'=>$id))->find();
        switch($this->info['type']) {
            case 1:$typename = '企业历程';break;
            case 2:$typename = '行业动态';break;
            case 3:$typename = '交通法规';break;
        }
        $this->typename = $typename;
        $this->content_id = $id;
        $this->display();
    }

    public function modContentPost() {
        $data['title'] = I('post.title');
        $data['content'] = I('post.content');
        $data['admin_id'] = session('admin_id');
        $id = I('post.content_id');
        $News = D('QijiaNews');
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

    public function delContent() {
        $id = I('get.content_id');
        $res = D('QijiaNews')->where(array('id'=>$id))->delete();
        if($res) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }

    public function sort() {
        $sort = I('post.sort');
        $id = I('post.id');
        $res = M('QijiaNews')->where(array('id'=>$id))->setField('sort',$sort);
        if($res !== false) {
            $this->ajaxReturn(1);
        }else {
            $this->ajaxReturn(-1);
        }
    }

    public function slideList() {
        $this->list = M('QijiaSlideshow')->order(array('ctime'=>'ASC'))->select();
        $this->display();
    }

    public function addSlide() {
        if(IS_AJAX) {
            if($_FILES['file']['name'] != '') {
                $info = $this->OneUpload('file');
                $_POST['pic'] = $info['savepath'].$info['savename'];
            }
            $Slide = D('QijiaSlideshow');
            if($Slide->create()) {
                if($Slide->add()) {
                    json(1);
                }else {
                    json('添加失败');
                }
            }else {
                json($Slide->getError());
            }
        }
        $this->display();
    }

    public function modSlide() {
        if(IS_AJAX) {
            if($_FILES['file']['name'] != '') {
                $info = $this->OneUpload('file');
                $_POST['pic'] = $info['savepath'].$info['savename'];
            }
            $Slide = D('QijiaSlideshow');
            if($Slide->create()) {
                if($Slide->save() !== false) {
                    json(1);
                }else {
                    json('保存失败');
                }
            }else {
                json($Slide->getError());
            }
        }
        $this->info = M('QijiaSlideshow')->where(array('id'=>I('get.id')))->find();
        $this->display();
    }

    public function newSort() {
        $wraper = M('QijiaSlideshow');
        $order = $wraper->order(array('ctime' => 'ASC'))->getField('ctime', true);

        $newArr = explode(',', $_POST['newid']);
        foreach ($newArr as $key => $v) {
            $data = array(
                'ctime' => $order[$key]
            );
            $wraper->where(array('id' => $v))->save($data);
        }

        $this->ajaxReturn(1);
    }

    public function contactInfo() {
        $this->info = M('QijiaContact')->where(array('id'=>1))->find();
        $this->display();
    }

    public function saveContactInfo() {
        $Contact = D('QijiaContact');
        $_POST['id'] = 1;
        if($_FILES['file']['name'] != '') {
            $info = $this->OneUpload('file');
            $_POST['qrcode'] = $info['savepath'].$info['savename'];
        }
        if(IS_AJAX) {
            if($Contact->create()) {
                $res = $Contact->save();
                if($res !== false) {
                    $this->ajaxReturn(1);
                }else {
                    $this->ajaxReturn('保存失败');
                }
            }else {
                $this->ajaxReturn($Contact->getError());
            }
        }
    }




}