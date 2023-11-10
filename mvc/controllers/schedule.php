<?php
class schedule extends Controller
{
    public $data = [];
    public function couresschedule()
    {
        // $this->model("couresmodel");
        $this->data['title'] = "Lịch học";
        $this->data['layout'] = "main/student/schedule";
        if (isset($_SESSION['username'])) {
            $this->data['inforsv'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
            $idhv = $this->data['inforsv']['IDHV'];
            $this->data['myschedule'] = $this->model("schedulemodel")->getmyschedule($idhv);
        }
        $this->data['couresschedule'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function couresscheduledetail($id)
    {
        $this->data['title'] = "Lịch học";
        $this->data['layout'] = "main/student/scheduledetail";
        $this->data['couresscheduledetail'] = $this->model("schedulemodel")->schedulecouresdetail($id);
        $this->data['namecoures'] = $this->model("schedulemodel")->getdetailcouresschedule($id);
        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function couresscheduleteacher()
    {
        $this->data['title'] = "Lịch dạy";
        $this->data['layout'] = "main/teacher/schedule";
        if (isset($_SESSION['username'])) {
            $this->data['inforgv'] = $this->model("teachermodel")->getgv($_SESSION['username']);
            $id = $this->data['inforgv']['IDGV'];
            $this->data['myschedule'] = $this->model("schedulemodel")->getmyschedulegv($id);
        }
        $this->data['couresschedule'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/teacher", $this->data);
    }
    public function couresscheduledetailteacher($id)
    {
        $this->data['title'] = "Học viên của lớp";
        $this->data['layout'] = "main/teacher/scheduledetail";
        $this->data['namecoures'] = $this->model("schedulemodel")->getdetailcouresscheduleteacher($id);
        $this->view("masterlayout/teacher", $this->data);
    }
    public function schedulecoures($id)
    {
        $this->data['title'] = "Lịch học";
        $this->data['layout'] = "main/teacher/schedulecoures";
        $this->data['couresscheduledetail'] = $this->model("schedulemodel")->schedulecouresdetail($id);
        $this->data['namecoures'] = $this->model("schedulemodel")->getdetailcouresschedule($id);
        $this->view("masterlayout/teacher", $this->data);
    }
}
