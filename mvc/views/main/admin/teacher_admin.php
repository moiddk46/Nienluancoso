<div>
    <h3 class="indigo-text text-darken-4 center"><b>Giáo viên</b></h3>
    <a class="waves-effect waves-light btn indigo right m-2 mx-4" href="/Nienluancoso/viewteacher/addteacher"><i class="fa-solid fa-plus"></i> Thêm giáo viên</a>
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
            foreach ($data['viewteacher'] as $teacher) {
            ?>
                <tr>
                    <td class="center"><?php echo $i++; ?></td>
                    <td class=""><?php echo $teacher['TENGV']; ?></td>
                    <td class=""><?php echo $teacher['NGAYSINH']; ?></td>
                    <td class=""><?php echo $teacher['GIOITINH']; ?></td>
                    <td class=""><?php echo $teacher['QUEQUAN']; ?></td>
                    <td class=""><?php echo $teacher['EMAIL']; ?></td>
                    <td class="center" class="center">
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewteacher/deleteteacher/<?php echo $teacher['IDGV']; ?>"><i class="fa-solid fa-trash"></i></a>
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewteacher/viewteacher/<?php echo $teacher['IDGV']; ?>"><i class="fa-regular fa-pen-to-square"></i></a>
                        <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/viewteacher/detailteacher/<?php echo $teacher['IDGV']; ?>"><i class="fa-solid fa-info"></i></a>
                    </td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
</div>