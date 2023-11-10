<div class="row form-custom-register center mt-4">
    <div class="row">
        <i class="material-icons center">portrait</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Chỉnh sửa thông tin học viên</b></h5>
    </div>
    <form class="col s12" action="../../viewstudent/editstudent" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input id="name1" type="text" class="validate" name="hoten" value="<?php echo $data['viewstudent']['TENHV']; ?>" required>
                <label class="indigo-text" for="name1">Họ và Tên</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="ngaysinh" type="text" class="datepicker" name="ngaysinh" value="<?php echo $data['viewstudent']['NGAYSINH']; ?>" required>
                <label class="indigo-text" for="ngaysinh">Ngày sinh</label>
            </div>
            <div class="col s6">
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NAM" <?php if ($data['viewstudent']['GIOITINH'] == 'NAM') echo "checked"; ?> />
                    <span>Nam</span>
                </label>
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NU" <?php if ($data['viewstudent']['GIOITINH'] == 'NU') echo "checked"; ?> />
                    <span>Nữ</span>
                </label>
            </div>

        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email" value="<?php echo $data['viewstudent']['EMAIL']; ?>">
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan" value="<?php echo $data['viewstudent']['QUEQUAN']; ?>" required>
                <label class="indigo-text" for="quequan">Quê quán</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="name" type="text" class="validate" name="username" value="<?php echo $data['viewstudent']['USERNAME']; ?>" required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
            <div class="input-field col s6">
                <input id="password" type="text" class="validate" name="password" value="<?php echo $data['viewstudent']['PASSWORD']; ?>" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
        </div>
        <input type="hidden" name="idhv" value="<?php echo $data['viewstudent']['IDHV']; ?>">
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="editstudent">Cập nhật
            </button>
            <a class="mt-3" href="/Nienluancoso/viewstudent/viewallstudent">Quay lại</a>
        </div>
</div>
</form>
</div>