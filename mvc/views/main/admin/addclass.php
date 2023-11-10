<div class="row mt-2 px-4">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 1) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Tên lớp học đã tồn tại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div class="row form-custom-register center mt-4">
    <div class="row">
        <i class="fa-solid fa-plus center"></i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Thêm lớp học</b></h5>
    </div>
    <form class="col s12" action="../admin/submitaddclass" method="POST">
        <div class="row">
            <div class="input-field col s6">
                <input id="tenlop" type="text" class="validate" name="tenlop" required>
                <label class="indigo-text" for="tenlop">Tên lớp</label>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="phonghoc">Phòng học</label>
                <select class="browser-default" id="phonghoc" name="phonghoc">
                    <option value="" disabled selected>Chọn phòng học</option>
                    <?php
                    foreach ($data['phong'] as $phong) {
                    ?>
                        <option value="<?php echo $phong['IDPHONG']; ?>"><?php echo $phong['TENPHONG']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="siso" type="number" class="validate" name="siso" required>
                <label class="indigo-text" for="siso">Sỉ số lớp</label>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="khoahoc">Khóa học</label>
                <select class="browser-default" id="khoahoc" name="khoahoc">
                    <option value="" disabled selected>Chọn khóa học</option>
                    <?php
                    foreach ($data['coures'] as $coures) {
                    ?>
                        <option value="<?php echo $coures['IDKH']; ?>"><?php echo $coures['TENKH']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col s12 mb-2">
                <label class="left indigo-text" for="giaovien">Giáo viên</label>
                <select class="browser-default" id="giaovien" name="giaovien">
                    <option value="" disabled selected>Chọn giáo viên</option>
                    <?php
                    foreach ($data['teacher'] as $teacher) {
                    ?>
                        <option value="<?php echo $teacher['IDGV']; ?>"><?php echo $teacher['TENGV']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="row">
                <button class="btn waves-effect waves-light indigo col s12" type="submit" name="addclass">Thêm
                </button>
                <a class="mt-2" href="/Nienluancoso/admin/classcoures">Quay lại</a>
            </div>
        </div>
    </form>
</div>