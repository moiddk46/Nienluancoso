<div>
    <h3 class="indigo-text text-darken-4 center"><b>Lịch học</b></h3>
    <div class="row">
        <?php
        foreach ($data['couresschedule'] as $khoahoc) {
        ?>
            <a class="col s2 m4" href="/Nienluancoso/coures/couresdetail/<?php echo $khoahoc['id']; ?>">
                <div class="card">
                    <div class="card-content indigo-text">
                        <span class="card-title indigo-text text-darken-4"><b><?php echo $khoahoc['tenkh']; ?></b></span>
                        <p>Bắt đầu: <?php echo $khoahoc['batdau']; ?></p>
                        <p>Kết thúc: <?php echo $khoahoc['ketthuc']; ?></p>
                        
                    </div>
                </div>
            </a>

        <?php
        }
        ?>
    </div>
</div>