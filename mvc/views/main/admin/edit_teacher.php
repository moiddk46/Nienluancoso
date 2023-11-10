<div class="row form-custom-register center mt-4">
    <div class="row">
        <i class="material-icons center">portrait</i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Chỉnh sửa thông tin giáo viên</b></h5>
    </div>
    <form class="col s12" action="../../viewteacher/editteacher" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input id="name1" type="text" class="validate" name="hoten" value="<?php echo $data['viewteacher']['TENGV']; ?>" required>
                <label class="indigo-text" for="name1">Họ và Tên</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="ngaysinh" type="text" class="datepicker" name="ngaysinh" value="<?php echo $data['viewteacher']['NGAYSINH']; ?>" required>
                <label class="indigo-text" for="ngaysinh">Ngày sinh</label>
            </div>
            <div class="col s6">
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NAM" <?php if ($data['viewteacher']['GIOITINH'] == 'NAM') echo "checked"; ?> />
                    <span>Nam</span>
                </label>
                <label class="col s6 mt-4">
                    <input type="radio" name="gioitinh" value="NU" <?php if ($data['viewteacher']['GIOITINH'] == 'NU') echo "checked"; ?> />
                    <span>Nữ</span>
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col s6">
                <label class="left indigo-text" for="bangcap">Bằng cấp</label>
                <select class="browser-default" id="bangcap" name="bangcap">
                    <?php
                    if (isset($data['viewteacher']['IDBC'])) {
                    ?>
                        <option value="<?php echo $data['viewteacher']['IDBC']; ?>"><?php echo $data['viewteacher']['TENBC']; ?></option>
                        <?php
                        foreach ($data['bangcap'] as $bc) {
                            if ($bc['IDBC'] == $data['viewteacher']['IDBC']) {
                                continue;
                            } else {
                        ?>

                                <option value="<?php echo $bc['IDBC']; ?>"><?php echo $bc['TENBC']; ?></option>
                        <?php
                            }
                        }
                        ?>
                    <?php
                    } else {
                    ?>
                        <option value="" disabled selected>Chọn bằng cấp</option>
                        <?php
                        foreach ($data['bangcap'] as $bc) {
                        ?>
                            <option value="<?php echo $bc['IDBC']; ?>"><?php echo $bc['TENBC']; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="chucvu">Chức vụ</label>
                <select class="browser-default" id="chucvu" name="chucvu">
                    <?php
                    if (isset($data['viewteacher']['IDCV'])) {
                    ?>
                        <option value="<?php echo $data['viewteacher']['IDCV']; ?>"><?php echo $data['viewteacher']['TENCV']; ?></option>
                        <?php
                        foreach ($data['chucvu'] as $cv) {
                            if ($cv['IDCV'] == $data['viewteacher']['IDCV']) {
                                continue;
                            } else {
                        ?>

                                <option value="<?php echo $cv['IDCV']; ?>"><?php echo $cv['TENCV']; ?></option>
                        <?php
                            }
                        }
                        ?>
                    <?php
                    } else {
                    ?>
                        <option value="" disabled selected>Chọn chức vụ</option>
                        <?php
                        foreach ($data['chucvu'] as $cv) {
                        ?>
                            <option value="<?php echo $cv['IDCV']; ?>"><?php echo $cv['TENCV']; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="email" type="email" class="validate" name="email" value="<?php echo $data['viewteacher']['EMAIL']; ?>">
                <label class="indigo-text" for="email">Email</label>
            </div>
            <div class="input-field col s6">
                <input id="quequan" type="text" class="validate" name="quequan" value="<?php echo $data['viewteacher']['QUEQUAN']; ?>" required>
                <label class="indigo-text" for="quequan">Quê quán</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="name" type="text" class="validate" name="username" value="<?php echo $data['viewteacher']['USERNAME']; ?>" required>
                <label class="indigo-text" for="name">Tên đăng nhập</label>
            </div>
            <div class="input-field col s6">
                <input id="password" type="text" class="validate" name="password" value="<?php echo $data['viewteacher']['PASSWORD']; ?>" required>
                <label class="indigo-text" for="password">Mật khẩu</label>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <label class="col s2 mt-4 indigo-text left">Phân quyền: </label>
                <label class="col s5 mt-4">
                    <input type="radio" name="phanquyen" value="0" <?php if ($data['viewteacher']['PHANQUYEN'] == '0') echo "checked"; ?> />
                    <span>Quản trị viên</span>
                </label>
                <label class="col s5 mt-4">
                    <input type="radio" name="phanquyen" value="1" <?php if ($data['viewteacher']['PHANQUYEN'] == '1') echo "checked"; ?> />
                    <span>Giáo viên</span>
                </label>
            </div>
        </div>
        <input type="hidden" name="idgv" value="<?php echo $data['viewteacher']['IDGV']; ?>">
        <div class="row">
            <button class="btn waves-effect waves-light indigo col s12" type="submit" name="editteacher">Cập nhật
            </button>
            <a class="mt-3" href="/Nienluancoso/viewteacher/viewallteacher">Quay lại</a>
        </div>
</div>
</form>
</div>