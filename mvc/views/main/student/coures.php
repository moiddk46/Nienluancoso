<div>
    <h3 class="indigo-text text-darken-4 center"><b>Khóa học</b></h3>
    <div class="row">
        <?php
        foreach ($data['coures'] as $khoahoc) {
        ?>
            <a class="col s2 m4" href="/Nienluancoso/coures/couresdetail/<?php echo $khoahoc['IDKH']; ?>">
                <div class="card">
                    <div class="card-image">
                        <img class="img-coures-svgv" src="http://localhost/Nienluancoso/public/img/galarey/<?php echo $khoahoc['HINHANH']; ?>" alt=""">
                    </div>
                    <div class="card-content indigo-text">
                        <span class="card-title indigo-text text-darken-4"><b><?php echo $khoahoc['TENKH']; ?></b></span>
                        <p>Luyện thi chứng chỉ <?php echo $khoahoc['TENCC']; ?>.</p>
                        <h6 class="red-text text-darken-2">Học phí: <?php echo $khoahoc['HOCPHI']; ?></h6>
                    </div>
                </div>
            </a>

        <?php
        }
        ?>
    </div>
</div>