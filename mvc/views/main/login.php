<div class="row alert-custom">
    <?php
    if (isset($data['check'])) {
        if ($data['check'] == 0) {
    ?>
            <div class="alert card red white-text top">
                <div class="card-content center">
                    <p><i class="material-icons left">report</i><span>Đăng nhập thất bại:</span> Vui lòng kiểm tra lại.</p>
                </div>
            </div>
    <?php
        }
    }
    ?>
</div>
<div class="row form-custom center">
    <h5 class="indigo-text text-darken-4"><b>Đăng nhập</b></h5>
    <form class="col s12" action="check" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input id="name" type="text" class="validate" name="username" required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <input id="password" type="password" class="validate" name="password" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
        </div>
        <div class="row">
            <button class="btn waves-effect waves-light indigo" type="submit" name="submit">Đăng nhập
                <i class="material-icons left">lock_open</i>
            </button>
            <p class="indigo-text text-darken-4"><b>hoặc</b></p>
            <div class="button-dangky">
                <a href="/Nienluancoso/register/index">Đăng ký ?</a>
            </div>
        </div>
    </form>
</div>