<div>
    <h3 class="indigo-text text-darken-4 center"><b><?php echo $data['couresdetail']['TENKH']; ?></b></h3>
    <div>
        <?php echo $data['couresdetail']['CHITIET']; ?>
    </div>
    <div class="introduce-home2">
        <a class="waves-effect waves-light btn indigo left m-2" href="/Nienluancoso/coures/couresteacher"><i class="fa-solid fa-backward"></i> Back</a>
        <a class="waves-effect waves-light btn indigo right m-2" href="/Nienluancoso/coures/editcoures/<?php echo $data['couresdetail']['IDKH']; ?> ">Chỉnh sửa</a>
    </div>
</div>