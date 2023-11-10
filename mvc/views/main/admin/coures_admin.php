<?php
?>
<h3 class="indigo-text text-darken-4 center"><b>Khóa học</b></h3>
<a class="waves-effect waves-light btn indigo right m-2 mx-4" href="/Nienluancoso/admin/addcoures"><i class="fa-solid fa-plus"></i> Thêm khóa học</a>
<table class="striped">
    <thead>
        <tr>
            <th class="center">Stt</th>
            <th class="center">Tên khóa học</th>
            <th class="center">Hình ảnh</th>
            <th class="center">Học phí</th>
            <th class="center"></th>
        </tr>
    </thead>
    <tbody>

        <?php
        $i = 1;
        foreach ($data['coures'] as $khoahoc) {
        ?>
            <tr>
                <td class="center"><?php echo $i++; ?></td>
                <td class="center"><?php echo $khoahoc['TENKH']; ?></td>
                <td class="center"><img class="img-coures-admin" src="http://localhost/Nienluancoso/public/img/galarey/<?php echo $khoahoc['HINHANH']; ?>" alt=""></td>
                <td class="center"><?php
                                    echo $khoahoc['HOCPHI'];
                                    ?>
                </td>
                <td class="center" class="center">
                    <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/deletecoures/<?php echo $khoahoc['IDKH']; ?>"><i class="fa-solid fa-trash"></i></a>
                    <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/editcoures/<?php echo $khoahoc['IDKH']; ?>"><i class="fa-regular fa-pen-to-square"></i></a>
                    <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/viewcoures/<?php echo $khoahoc['IDKH']; ?>"><i class="fa-solid fa-info"></i></a>
                </td>
            </tr>
        <?php
        }
        ?>
    </tbody>
</table>