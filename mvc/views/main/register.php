<div class="row alert-custom-register">
    <?php
    if (isset($data['register'])) {
        if ($data['register'] == 1) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Tên đăng nhập đã tồn tại</span></p>
                </div>
            </div>
        <?php
        } else {
        ?>
        <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Email đã tồn tại</span></p>
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
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email">
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan" required>
                <label class="indigo-text" for="quequan">Quê quán</label>
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
        <input type="hidden" name="phanquyen" value="2">
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="register">Đăng ký
            </button>
            <div class="indigo-text text-darken-4 or-custom"><b>hoặc</b></div>
            <div class="button-dangky row">
                <a href="/Nienluancoso/login/index">Đăng nhập</a>
                <a href="/Nienluancoso/home/index">Quay lại</a>
            </div>
        </div>
    </form>
</div>