<div class="row alert-custom-register">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 0) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Bạn còn khóa học chưa hoàn thành không thể đang ký khóa học mới.</span></p>
                </div>
            </div>
        <?php
        } elseif ($data['check'] == 1) {
        ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Vui lòng kiểm tra lại thông tin đăng ký.</span></p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div id="trochoi"></div>
<div class="row form-custom-register center">
    <div class="row">
        <i class="material-icons center">lock_open</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Đăng ký khóa học</b></h5>
    </div>
    <form class="col s12" action="../../registercoures/checkregistercoures" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input id="name1" type="text" class="validate" name="hoten" value="<?php echo $data['infortk']['TENHV']; ?>" required>thanhmoi
                <label class="indigo-text" for="name1">Họ và Tên</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="ngaysinh" type="text" class="datepicker" name="ngaysinh" value="<?php echo $data['infortk']['NGAYSINH']; ?>" required>
                <label class="indigo-text" for="ngaysinh">Ngày sinh</label>
            </div>
            <div class="col s6">
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NAM" <?php if ($data['infortk']['GIOITINH'] == 'NAM') echo "checked"; ?> />
                    <span>Nam</span>
                </label>
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NU" <?php if ($data['infortk']['GIOITINH'] == 'NU') echo "checked"; ?> />
                    <span>Nữ</span>
                </label>
            </div>

        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email" value="<?php echo $data['infortk']['EMAIL']; ?>">
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan" value="<?php echo $data['infortk']['QUEQUAN']; ?>" required>
                <label class="indigo-text" for="quequan">Quê quán</label>
            </div>
        </div>
        <div class="row">
            <div class="col s6">
                <label class="left indigo-text">Khóa học</label>
                <select class="browser-default" id="khoahoc" name="khoahoc">
                    <option value="" disabled selected>Chọn khóa học</option>
                    <?php
                    foreach ($data['allcoures'] as $kh) {
                    ?>
                        <option value="<?php echo $kh['IDKH']; ?>"><?php echo $kh['TENKH']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="col s6">
                <label class="left indigo-text">Lớp học</label>
                <select class="browser-default" id="lop" name="lop">
                    <option value="" disabled selected>Choose your option</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12" id="inputhocphi"> 
            </div>
        </div>
        <input type="hidden" name="idhv" value="<?php echo $data['infortk']['IDHV']; ?>">
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="registercoures">Đăng ký
            </button>
            <a class="mt-3" href="/Nienluancoso/home/index">Quay lại</a>
        </div>
</div>
</form>
</div>