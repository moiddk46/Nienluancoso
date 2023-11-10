<div class="row mt-2 px-4">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 2) {
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
<div class="row form-custom-register center">
    <div class="row">
        <i class="material-icons center">portrait</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Thêm học viên</b></h5>
    </div>
    <form class="col s12" action="../viewstudent/addstudent" method="POST">
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
                    <input type="radio" name="gioitinh" value="NAM"  />
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
                <input id="email" type="email" class="validate" name="email" required>
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan"required>
                <label class="indigo-text" for="quequan">Quê quán</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="name" type="text" class="validate" name="username" required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
            <div class="input-field col s6">
                <input id="password" type="text" class="validate" name="password" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
        </div>
        <input type="hidden" name="phanquyen" value="2">
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="addstudent">Thêm
            </button>
            <a class="mt-3" href="/Nienluancoso/viewstudent/viewallstudent">Quay lại</a>
        </div>
</div>
</form>
</div>