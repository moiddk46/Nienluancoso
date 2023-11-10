<div class="row mt-2 px-4">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 1) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Email đã tồn tại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
        <?php
        } else{
        ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Tên đăng nhập đã tồn tại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div class="row form-custom-register center mt-4">
    <div class="row">
        <i class="material-icons center">portrait</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Thêm giáo viên</b></h5>
    </div>
    <form class="col s12" action="../viewteacher/addgv" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input id="name1" type="text" class="validate" name="hoten" required>
                <label class="indigo-text" for="name1">Họ và Tên</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="ngaysinh" type="text" class="datepicker" name="ngaysinh" required>
                <label class="indigo-text" for="ngaysinh">Ngày sinh</label>
            </div>
            <div class="col s6">
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NAM" />
                    <span>Nam</span>
                </label>
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NU" />
                    <span>Nữ</span>
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col s6">
                <label class="left indigo-text" for="bangcap">Bằng cấp</label>
                <select class="browser-default" id="bangcap" name="bangcap">
                    <option value="" disabled selected>Chọn bằng cấp</option>
                    <?php
                    foreach ($data['bangcap'] as $bc) {
                    ?>
                        <option value="<?php echo $bc['IDBC']; ?>"><?php echo $bc['TENBC']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="chucvu">Chức vụ</label>
                <select class="browser-default" id="chucvu" name="chucvu">
                    <option value="" disabled selected>Chọn chức vụ</option>
                    <?php
                    foreach ($data['chucvu'] as $cv) {
                    ?>
                        <option value="<?php echo $cv['IDCV']; ?>"><?php echo $cv['TENCV']; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email" required>
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan" required>
                <label class="indigo-text" for="quequan">Quê quán</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="name" type="text" class="validate" name="username"required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
            <div class="input-field col s6">
                <input id="password" type="text" class="validate" name="password" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <label class="col s2 mt-4 indigo-text left">Phân quyền: </label>
                <label class="col s5 mt-4">
                    <input type="radio" name="phanquyen" value="0" />
                    <span>Quản trị viên</span>
                </label>
                <label class="col s5 mt-4">
                    <input type="radio" name="phanquyen" value="1" />
                    <span>Giáo viên</span>
                </label>
            </div>
        </div>
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="addteacher">Thêm
            </button>
            <a class="mt-3" href="/Nienluancoso/viewteacher/viewallteacher">Quay lại</a>
        </div>
</div>
</form>
</div>