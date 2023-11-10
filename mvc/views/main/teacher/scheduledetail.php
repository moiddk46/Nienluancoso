<div>
    <h3 class="indigo-text text-darken-4 center"><b>Học viên của lớp</b></h3>
    <div class="row">
        <table class="responsive-table">
            <thead>
                <tr class="indigo-text text-darken-4">
                    <th class="center">Stt</th>
                    <th class="center">Tên học viên</th>
                    <th class="center">Giới tính</th>
                    <th class="center">Ngày sinh</th>
                    <th class="center">Email</th>
                    <th class="center">Quê quán</th>
                    <th class="center">Trạng thái</th>
                </tr>
            </thead>

            <tbody>
                <?php
                $i = 1;
                foreach ($data['namecoures'] as $hocvien) {
                ?>
                    <tr class="indigo-text text-darken-4 center">
                        <td class="center"><?php echo $i++; ?></td>
                        <td class="center"><?php echo $hocvien['TENHV']; ?></td>
                        <td class="center"><?php echo $hocvien['GIOITINH']; ?></td>
                        <td class="center"><?php echo $hocvien['NGAYSINH']; ?></td>
                        <td class="center"><?php echo $hocvien['EMAIL']; ?></td>
                        <td class="center"><?php echo $hocvien['QUEQUAN']; ?></td>
                        <td class="center"><?php echo $hocvien['TRANGTHAI']; ?></td>
                    </tr>
                <?php
                }
                ?>

            </tbody>
        </table>
        <a class="waves-effect waves-light btn indigo left m-2" href="/Nienluancoso/schedule/couresscheduleteacher"><i class="fa-solid fa-backward"></i> Back</a>
    </div>
</div>