<div class="mx-3">
    <h3 class="indigo-text text-darken-4 center"><b>Học viên</b></h3>
    <div class="row">
        <h6 class="indigo-text text-darken-4 ">Thông tin học viên:</h6>
        <table class="responsive-table">
            <thead>
                <tr>
                    <th class="">Họ và Tên</th>
                    <th class="">Ngày sinh</th>
                    <th class="">Giới tính</th>
                    <th class="">Quê quán</th>
                    <th class="">Email</th>
                    <th class="">Username</th>
                    <th class="">Password</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class=""><?php echo $data['viewstudent']['TENHV']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['NGAYSINH']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['GIOITINH']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['QUEQUAN']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['EMAIL']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['USERNAME']; ?></td>
                    <td class=""><?php echo $data['viewstudent']['PASSWORD']; ?></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row mt-4">
        <h6 class="indigo-text text-darken-4 ">Lịch học của học viên:</h6>
        <table class="responsive-table">
            <thead>
                <tr class="indigo-text text-darken-4">
                    <th class="center">Stt</th>
                    <th class="center">Khóa học</th>
                    <th class="center">Tên lớp</th>
                    <th class="center">Sỉ số lớp</th>
                    <th class="center">Phòng</th>
                    <th class="center">Trạng thái</th>
                </tr>
            </thead>

            <tbody>
                <?php
                $i = 1;
                foreach ($data['myschedule'] as $myschedule) {
                ?>
                    <tr class="indigo-text text-darken-4 center">
                        <td class="center"><?php echo $i++; ?></td>
                        <td class="center"><?php echo $myschedule['TENKH']; ?></td>
                        <td class="center"><?php echo $myschedule['TENLOP']; ?></td>
                        <td class="center"><?php echo $myschedule['SISOLOP']; ?></td>
                        <td class="center"><?php echo $myschedule['TENPHONG']; ?></td>
                        <td class="center"><?php echo $myschedule['TRANGTHAI']; ?></td>
                    </tr>
                <?php
                }
                ?>

            </tbody>
        </table>
    </div>
    <div class="row">
        <a class="col s1 waves-effect waves-light btn indigo m-3" href="/Nienluancoso/viewstudent/viewallstudent"><i class="fa-solid fa-backward"></i> Back</a>
    </div>

</div>