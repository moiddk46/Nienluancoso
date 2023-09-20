<?php
class schedule extends Controller
{
    public $data = [];
    public function couresschedule()
    {
        // $this->model("couresmodel");
        $this->data['title'] = "Lịch học";
        $this->data['layout'] = "main/schedule";
        $this->data['couresschedule'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/sinhvien", $this->data);
    }
}
