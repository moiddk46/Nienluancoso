<div>
    <h3 class="indigo-text text-darken-4 center"><b>Khóa học</b></h3>
    <div class="row">
        <?php
        foreach ($data['coures'] as $khoahoc) {
        ?>
            <a class="col s2 m4" href="/Nienluancoso/coures/couresdetail/<?php echo $khoahoc['idkhoahoc']; ?>">
                <div class="card">
                    <div class="card-image">
                        <img src="http://localhost/Nienluancoso/public/img/slide1.jpg">
                    </div>
                    <div class="card-content indigo-text">
                        <span class="card-title indigo-text text-darken-4"><b><?php echo $khoahoc['tenkh']; ?></b></span>
                        <p>Luyện thi chứng chỉ <?php echo $khoahoc['chungchi']; ?> cho nhóm tuổi <?php echo $khoahoc['nhomtuoi']; ?>.</p>
                        <h6 class="red-text text-darken-2">Học phí: <?php echo $khoahoc['hocphi']; ?></h6>
                    </div>
                </div>
            </a>

        <?php
        }
        ?>
    </div>
</div>