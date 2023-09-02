<div class="row alert-custom-register">
    <?php
    if (isset($data['register'])) {
        if ($data['register'] == 0) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Tài khoản đã tồn tại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div class="row form-custom-register center">
    <div class="row">
        <i class="material-icons center">lock_open</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Đăng ký</b></h5>
    </div>
    <form class="col s12" action="checkregister" method="POST">
        <div class="row">
            <div class="input-field col s6">
                <input id="name" type="text" class="validate" name="username" required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
            <div class="input-field col s6">
                <input id="name1" type="text" class="validate" name="hoten" required>
                <label class="indigo-text" for="name1">Họ và Tên</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="ngaysinh" type="text" class="datepicker" name="ngaysinh" required>
                <label class="indigo-text" for="ngaysinh">Ngày sinh</label>
            </div>
            <div class="input-field col s6">
                <input id="diachi" type="text" class="validate" name="diachi" required>
                <label class="indigo-text" for="diachi">Địa chỉ</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email">
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="telephone" type="tel" class="validate" name="phone">
                <label class="indigo-text" for="telephone">Số điện thoại</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="password" type="password" class="validate" name="password" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
            <div class="input-field col s6">
                <input id="password1" type="password" name="password1" required>
                <label class="indigo-text" for="password1">Nhập lại mật khẩu</label>
            </div>
        </div>
        <divm class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="register">Đăng ký
            </button>
            <div class="indigo-text text-darken-4 or-custom"><b>hoặc</b></div>
            <div class="button-dangky">
                <a href="/Nienluancoso/login/index">Đăng nhập</a>
            </div>
</div>
</form>
</div>