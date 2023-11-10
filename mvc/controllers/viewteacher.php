<?php
class viewteacher extends Controller
{
    public $data = [];

    public function viewallteacher()
    {
        $this->data['title'] = "Giáo viên";
        $this->data['layout'] = "main/admin/teacher_admin";
        $this->data['viewteacher'] = $this->model("teachermodel")->getallgv();
        $this->view("masterlayout/admin", $this->data);
    }

    public function viewteacher($id)
    {
        $this->data['title'] = "Giáo viên";
        $this->data['layout'] = "main/admin/edit_teacher";
        $this->data['viewteacher'] = $this->model("teachermodel")->getgvtheoid($id);
        $this->data['bangcap'] = $this->model("teachermodel")->getbangcap();
        $this->data['chucvu'] = $this->model("teachermodel")->getchucvu();
        $this->view("masterlayout/admin", $this->data);
    }

    public function editteacher()
    {
        if (isset($_POST['editteacher'])) {
            if ($this->model("teachermodel")->update($_POST['idgv'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['bangcap'], $_POST['chucvu'], $_POST['quequan'], $_POST['email']) == true) {
                if ($this->model("teachermodel")->updatetk($_POST['idgv'], $_POST['username'], $_POST['password'], $_POST['phanquyen']) == true) {
                    header("location: http://localhost/Nienluancoso/viewteacher/viewallteacher");
                }
            }
        }
    }

    public function deleteteacher($id)
    {
        if ($this->model("teachermodel")->updatelop($id) == true) {
            if ($this->model("teachermodel")->deletetk($id) == true) {
                if ($this->model("teachermodel")->delete($id) == true) {
                    header("location: http://localhost/Nienluancoso/viewteacher/viewallteacher");
                }
            }
        }
    }

    public function detailteacher($id)
    {
        $this->data['title'] = "Giáo viên";
        $this->data['layout'] = "main/admin/view_teacher";
        $this->data['viewteacher'] = $this->model("teachermodel")->getgvtheoid($id);
        $this->data['myschedule'] = $this->model("schedulemodel")->getmyschedulegv($id);
        $this->view("masterlayout/admin", $this->data);
    }

    public function addteacher()
    {
        $this->data['title'] = "Giáo viên";
        $this->data['layout'] = "main/admin/addteacher";
        $this->data['bangcap'] = $this->model("teachermodel")->getbangcap();
        $this->data['chucvu'] = $this->model("teachermodel")->getchucvu();
        $this->view("masterlayout/admin", $this->data);
    }
    public function addgv()
    {
        if (isset($_POST['addteacher'])) {
            if ($this->model("teachermodel")->check($_POST['username'], $_POST['email']) == 0) {
                if ($this->model("teachermodel")->addgv($_POST['chucvu'], $_POST['bangcap'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email'], $_POST['phanquyen'], $_POST['username'], $_POST['password']) == true) {
                    header("location: http://localhost/Nienluancoso/viewteacher/viewallteacher");
                }
            } else {
                if ($this->model("teachermodel")->check($_POST['username'], $_POST['email']) == 1) {
                    $this->data['check'] = 1;
                    $this->data['title'] = "Giáo viên";
                    $this->data['layout'] = "main/admin/addteacher";
                    $this->data['bangcap'] = $this->model("teachermodel")->getbangcap();
                    $this->data['chucvu'] = $this->model("teachermodel")->getchucvu();
                    $this->view("masterlayout/admin", $this->data);
                } else {
                    $this->data['check'] = 2;
                    $this->data['title'] = "Giáo viên";
                    $this->data['layout'] = "main/admin/addteacher";
                    $this->data['bangcap'] = $this->model("teachermodel")->getbangcap();
                    $this->data['chucvu'] = $this->model("teachermodel")->getchucvu();
                    $this->view("masterlayout/admin", $this->data);
                }
            }
        }
    }
}
