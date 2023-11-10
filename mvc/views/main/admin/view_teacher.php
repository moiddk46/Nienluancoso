<div class="mx-3">
    <h3 class="indigo-text text-darken-4 center"><b>Giáo viên</b></h3>
    <div class="row">
        <h6 class="indigo-text text-darken-4 ">Thông tin giáo viên:</h6>
        <table class="responsive-table">
            <thead>
                <tr>
                    <th class="">Họ và Tên</th>
                    <th class="">Ngày sinh</th>
                    <th class="">Giới tính</th>
                    <th class="">Bằng cấp</th>
                    <th class="">Chức vụ</th>
                    <th class="">Quê quán</th>
                    <th class="">Email</th>
                    <th class="">Username</th>
                    <th class="">Password</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class=""><?php echo $data['viewteacher']['TENGV']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['NGAYSINH']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['GIOITINH']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['TENBC']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['TENCV']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['QUEQUAN']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['EMAIL']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['USERNAME']; ?></td>
                    <td class=""><?php echo $data['viewteacher']['PASSWORD']; ?></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row mt-4">
        <h6 class="indigo-text text-darken-4 ">Lịch dạy của giáo viên:</h6>
        <table class="responsive-table">
            <thead>
                <tr class="indigo-text text-darken-4">
                    <th class="center">Stt</th>
                    <th class="center">Khóa học</th>
                    <th class="center">Tên lớp</th>
                    <th class="center">Sỉ số lớp</th>
                    <th class="center">Phòng</th>
                    <th class="center">Giáo viên</th>
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
                        <td class="center"><?php echo $myschedule['TENGV']; ?></td>
                    </tr>
                <?php
                }
                ?>

            </tbody>
        </table>
    </div>
    <div class="row">
        <a class="col s1 waves-effect waves-light btn indigo m-3" href="/Nienluancoso/viewteacher/viewallteacher"><i class="fa-solid fa-backward"></i> Back</a>
    </div>

</div>