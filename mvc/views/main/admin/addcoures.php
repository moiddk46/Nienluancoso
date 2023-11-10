<div class="row mt-2 px-4">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 1) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Ngày bắt đầu hoặc ngày kết thúc chưa đúng:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
        <?php
        } else {
        ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Tên hoặc hình ảnh khóa học đã tồn tại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div class="mt-3">
    <h3 class="indigo-text text-darken-4 center"><b>Thêm khóa học</b></h3>
    <a class="waves-effect waves-light btn indigo" href="/Nienluancoso/admin/couresadmin"><i class="fa-solid fa-backward"></i> Back</a>
    <div class="mt-3">
        <form action="../admin/adddetailcoures" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="input-field col s6">
                    <input id="tenkh" type="text" class="validate" name="tenkh" required>
                    <label class="indigo-text" for="tenkh">Tên khóa học</label>
                </div>
                <div class="col s6">
                    <label class="left indigo-text" for="chungchi">Chứng chỉ</label>
                    <select class="browser-default" id="chungchi" name="chungchi">
                        <<option value="" disabled selected>Chọn chứng chỉ</option>
                            <?php
                            foreach ($data['cccoures'] as $cc) {
                            ?>
                                <option value="<?php echo $cc['IDCC']; ?>"><?php echo $cc['TENCC']; ?></option>
                            <?php
                            }
                            ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="file-field input-field col s6">
                    <div class="btn">
                        <span>Chọn ảnh</span>
                        <input type="file" name="hinhanh" id="hinhanh" required>
                    </div>
                    <div class="file-path-wrapper col s8">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
                <div class="input-field col s6">
                    <input id="hocphi" type="text" class="validate" name="hocphi" required>
                    <label class="indigo-text" for="hocphi">Hoc phí</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="ngaybatdau" type="text" class="datepicker" name="ngaybatdau" required>
                    <label class="indigo-text" for="ngaybatdau">Ngày bắt đầu</label>
                </div>
                <div class="input-field col s6">
                    <input id="ngayketthuc" type="text" class="datepicker" name="ngayketthuc" required>
                    <label class="indigo-text" for="ngayketthuc">Ngày kết thúc</label>
                </div>
            </div>
            <textarea name="chitiet" style="min-height: 800px;">
        </textarea>
            <button class="btn waves-effect waves-light indigo right m-3" type="submit" name="addcoures">Thêm
            </button>
        </form>
    </div>

</div>