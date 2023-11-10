<div>
    <h3 class="indigo-text text-darken-4 center"><b>Lịch học</b></h3>
    <div class="row">
        <h6 class="indigo-text text-darken-4 ">Lịch học của bạn:</h6>
        <?php
        if (isset($_SESSION['username'])) {
            if (!empty($data['myschedule'])) {
        ?>
                <table class="responsive-table">
                    <thead>
                        <tr class="indigo-text text-darken-4">
                            <th class="center">Stt</th>
                            <th class="center">Tên lớp</th>
                            <th class="center">Sỉ số lớp</th>
                            <th class="center">Phòng</th>
                            <th class="center">Khóa học</th>
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
                                <td class="center"><?php echo $myschedule['TENLOP']; ?></td>
                                <td class="center"><?php echo $myschedule['SISOLOP']; ?></td>
                                <td class="center"><?php echo $myschedule['TENPHONG']; ?></td>
                                <td class="center"><?php echo $myschedule['TENKH']; ?></td>
                                <td class="center"><?php echo $myschedule['TRANGTHAI']; ?></td>
                            </tr>
                        <?php
                        }
                        ?>

                    </tbody>
                </table>
            <?php
            } else {
            ?>
                <p class="indigo-text text-darken-4 center mb-4">Bạn chưa có lịch học nào.</p>
        <?php
            }
        }
        ?>
    </div>
    <div class="row">
        <?php
        foreach ($data['couresschedule'] as $khoahoc) {
        ?>
            <a class="col s2 m4" href="/Nienluancoso/schedule/couresscheduledetail/<?php echo $khoahoc['IDKH']; ?>">
                <div class="card">
                    <div class="card-content indigo-text">
                        <span class="card-title indigo-text text-darken-4"><b><?php echo $khoahoc['TENKH']; ?></b></span>
                        <p>Bắt đầu: <?php
                                    $date = date_create($khoahoc['NGAYBD']);
                                    echo date_format($date, "d-m-Y");
                                    ?>
                        <p>Kết thúc: <?php
                                        $date = date_create($khoahoc['NGAYKT']);
                                        echo date_format($date, "d-m-Y");
                                        ?></p>

                    </div>
                </div>
            </a>

        <?php
        }
        ?>
    </div>
</div>