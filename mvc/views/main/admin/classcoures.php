<div>
    <h3 class="indigo-text text-darken-4 center"><b>Lớp học</b></h3>
    <a class="waves-effect waves-light btn indigo right m-2 mx-4" href="/Nienluancoso/admin/viewadd"><i class="fa-solid fa-plus"></i> Thêm lớp học</a>
    <table class="striped">
        <thead>
            <tr>
                <th class="center">Stt</th>
                <th class="center">Lớp</th>
                <th class="center">Sỉ số lớp</th>
                <th class="center">Phòng học</th>
                <th class="center">Khóa học</th>
                <th class="center">Giáo viên</th>
                <th class="center"></th>
            </tr>
        </thead>
        <tbody>

            <?php
            $i = 1;
            foreach ($data['classcoures'] as $lop) {
            ?>
                <tr>
                    <td class="center"><?php echo $i++; ?></td>
                    <td class=""><?php echo $lop['TENLOP']; ?></td>
                    <td class=""><?php echo $lop['SISOLOP']; ?></td>
                    <td class=""><?php echo $lop['TENPHONG']; ?></td>
                    <td class=""><?php echo $lop['TENKH']; ?></td>
                    <?php
                    if ($lop['IDGV'] != null) {
                        foreach ($data['teacher'] as $giaovien) {
                            if ($lop['IDGV'] == $giaovien['IDGV']) {
                    ?>
                                <td class=""><?php echo $giaovien['TENGV']; ?></td>
                        <?php
                                break;
                            }
                        }
                    } else {
                        ?>
                        <td class="">Chưa có giáo viên đảm nhiệm</td>
                    <?php
                    }
                    ?>
                    <td class="center" class="center">
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/deleteclass/<?php echo $lop['IDLOP']; ?>"><i class="fa-solid fa-trash"></i></a>
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/viewedit/<?php echo $lop['IDLOP']; ?>/<?php if ($lop['IDGV'] == null) {
                                                                                                                                            echo 0;
                                                                                                                                        }
                                                                                                                                        echo $lop['IDGV'];  ?>"><i class="fa-regular fa-pen-to-square"></i></a>
                    </td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>