<div>
    <h3 class="indigo-text text-darken-4 center"><b>Học viên</b></h3>
    <a class="waves-effect waves-light btn indigo right m-2 mx-4" href="/Nienluancoso/viewstudent/addhv"><i class="fa-solid fa-plus"></i> Thêm học viên</a>
    <table class="striped">
        <thead>
            <tr>
                <th class="center">Stt</th>
                <th class="center">Họ và Tên</th>
                <th class="center">Ngày sinh</th>
                <th class="center">Giới tính</th>
                <th class="center">Quê quán</th>
                <th class="center">Email</th>
                <th class="center"></th>
            </tr>
        </thead>
        <tbody>

            <?php
            $i = 1;
            foreach ($data['viewstudent'] as $student) {
            ?>
                <tr>
                    <td class="center"><?php echo $i++; ?></td>
                    <td class=""><?php echo $student['TENHV']; ?></td>
                    <td class=""><?php echo $student['NGAYSINH']; ?></td>
                    <td class=""><?php echo $student['GIOITINH']; ?></td>
                    <td class=""><?php echo $student['QUEQUAN']; ?></td>
                    <td class=""><?php echo $student['EMAIL']; ?></td>
                    <td class="center" class="center">
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewstudent/deletestudent/<?php echo $student['IDHV']; ?>"><i class="fa-solid fa-trash"></i></a>
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewstudent/viewstudent/<?php echo $student['IDHV']; ?>"><i class="fa-regular fa-pen-to-square"></i></a>
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewstudent/detailstudent/<?php echo $student['IDHV']; ?>"><i class="fa-solid fa-info"></i></a>
                    </td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>