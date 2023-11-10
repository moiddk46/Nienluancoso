<div>
    <h3 class="indigo-text text-darken-4 center"><b><?php echo $data['namecoures']['TENKH']; ?></b></h3>
    <div class="m-2">
        <p class="indigo-text text-darken-4">Ngày bắt đầu: <?php
                                                            $date = date_create($data['namecoures']['NGAYBD']);
                                                            echo date_format($date, "d-m-Y");
                                                            ?></p>
        <p class="indigo-text text-darken-4">Ngày kết thúc: <?php
                                                            $date = date_create($data['namecoures']['NGAYKT']);
                                                            echo date_format($date, "d-m-Y");
                                                            ?></p>
    </div>
    <div class="m-5">
        <table class="responsive-table">
            <thead>
                <tr class="indigo-text text-darken-4">
                    <th class="center">Stt</th>
                    <th class="center">Tên lớp</th>
                    <th class="center">Sỉ số lớp</th>
                    <th class="center">Phòng</th>
                    <th class="center">Khóa học</th>
                </tr>
            </thead>

            <tbody>

                <?php
                $i = 1;
                foreach ($data['couresscheduledetail'] as $schedule) {
                ?>
                    <tr class="indigo-text text-darken-4 center">
                        <td class="center"><?php echo $i++; ?></td>
                        <td class="center"><?php echo $schedule['TENLOP']; ?></td>
                        <td class="center"><?php echo $schedule['SISOLOP']; ?></td>
                        <td class="center"><?php echo $schedule['TENPHONG']; ?></td>
                        <td class="center"><?php echo $schedule['TENKH']; ?></td>
                    </tr>
                <?php
                }
                ?>

            </tbody>
        </table>
        <a class="waves-effect waves-light btn indigo left m-2" href="/Nienluancoso/schedule/couresscheduleteacher"><i class="fa-solid fa-backward"></i> Back</a>
    </div>
</div>