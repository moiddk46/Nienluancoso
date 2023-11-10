<div class="row form-custom-register center mt-4">
    <form action="../admin/editinfor" method="post">
        <div class="center m-3">
            <a href=""><i class="large material-icons">account_circle</i></a>
        </div>
        <div class="container">
            <div class="row">
                <div class="input-field col s6">
                    <input id="username" type="text" class="validate" name="username" value="<?php echo $data['infortk']['USERNAME']; ?>" required>
                    <label class="indigo-text" for="username">Tên đăng nhập</label>
                </div>
                <div class="input-field col s6">
                    <input id="hoten" type="text" class="validate" name="hoten" value="<?php echo $data['infortk']['TENGV']; ?>" required>
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
                        <input type="radio" name="gioitinh" value="NAM" <?php if ($data['infortk']['GIOITINH'] == 'NAM') echo 'checked'; ?> />
                        <span>Nam</span>
                    </label>
                    <label class="col s6 mt-4">
                        <input type="radio" name="gioitinh" value="NU" <?php if ($data['infortk']['GIOITINH'] == 'NU') echo 'checked'; ?> />
                        <span>Nữ</span>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="email" type="email" class="validate" name="email" value="<?php echo $data['infortk']['EMAIL']; ?>" required>
                    <label class="indigo-text" for="email">Email</label>
                </div>
                <div class="input-field col s6">
                    <input id="quequan" type="text" class="validate" name="quequan" value="<?php echo $data['infortk']['QUEQUAN']; ?>" required>
                    <label class="indigo-text" for="quequan">Quê quán</label>
                </div>
            </div>
            <input type="hidden" name="id" value="<?php echo $data['infortk']['IDGV']; ?>">
            <div class="row">
                <button class="btn waves-effect waves-light indigo col s12" type="submmit" name="updatetk">Cập nhật</button>
                <a class="mt-2 col s12" href="/Nienluancoso/admin/index">Quay lại</a>
            </div>
        </div>
    </form>
</div>