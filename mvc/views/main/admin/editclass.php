<div class="row form-custom-register center mt-4">
    <div class="row">
        <i class="fa-regular fa-pen-to-square center"></i>
        <h5 class="indigo-text text-darken-4 col s12"><b>Chỉnh sửa thông tin lớp học</b></h5>
    </div>
    <form class="col s12" action="../../submiteditclass" method="POST">
        <div class="row">
            <div class="input-field col s6">
                <input id="tenlop" type="text" class="validate" name="tenlop" value="<?php echo $data['editclass']['TENLOP']; ?>" required>
                <label class="indigo-text" for="tenlop">Tên lớp</label>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="phonghoc">Phòng học</label>
                <select class="browser-default" id="phonghoc" name="phonghoc">
                    <?php
                    if (isset($data['editclass']['IDPHONG'])) {
                    ?>
                        <option value="<?php echo $data['editclass']['IDPHONG']; ?>"><?php echo $data['editclass']['TENPHONG']; ?></option>
                        <?php
                        foreach ($data['phong'] as $phong) {
                            if ($phong['IDPHONG'] == $data['editclass']['IDPHONG']) {
                                continue;
                            } else {
                        ?>

                                <option value="<?php echo $phong['IDPHONG']; ?>"><?php echo $phong['TENPHONG']; ?></option>
                        <?php
                            }
                        }
                        ?>
                        <?php
                    } else {
                        foreach ($data['phong'] as $phong) {
                        ?>
                            <option value="<?php echo $phong['IDPHONG']; ?>"><?php echo $phong['TENPHONG']; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="siso" type="number" class="datepicker" name="siso" value="<?php echo $data['editclass']['SISOLOP']; ?>" required>
                <label class="indigo-text" for="siso">Sỉ số lớp</label>
            </div>
            <div class="col s6">
                <label class="left indigo-text" for="khoahoc">Khóa học</label>
                <select class="browser-default" id="khoahoc" name="khoahoc">
                    <?php
                    if (isset($data['editclass']['IDKH'])) {
                    ?>
                        <option value="<?php echo $data['editclass']['IDKH']; ?>"><?php echo $data['editclass']['TENKH']; ?></option>
                        <?php
                        foreach ($data['coures'] as $coures) {
                            if ($coures['IDKH'] == $data['editclass']['IDKH']) {
                                continue;
                            } else {
                        ?>

                                <option value="<?php echo $coures['IDKH']; ?>"><?php echo $coures['TENKH']; ?></option>
                        <?php
                            }
                        }
                        ?>
                        <?php
                    } else {
                        foreach ($data['coures'] as $coures) {
                        ?>
                            <option value="<?php echo $coures['IDKH']; ?>"><?php echo $coures['TENKH']; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col s12 mb-2">
                <label class="left indigo-text" for="giaovien">Giáo viên</label>
                <select class="browser-default" id="giaovien" name="giaovien">
                    <?php
                    if ($data['editclass']['IDGV'] != null) {
                    ?>
                        <option value="<?php echo $data['teacherid']['IDGV']; ?>"><?php echo $data['teacherid']['TENGV']; ?></option>
                        <?php
                        foreach ($data['teacher'] as $teacher) {
                            if ($teacher['IDGV'] == $data['editclass']['IDGV']) {
                                continue;
                            } else {
                        ?>

                                <option value="<?php echo $teacher['IDGV']; ?>"><?php echo $teacher['TENGV']; ?></option>
                        <?php
                            }
                        }
                        ?>
                    <?php
                    } else {
                    ?>
                        <option value="" disabled selected>Chọn giáo viên</option>
                        <?php
                        foreach ($data['teacher'] as $teacher) {
                        ?>
                            <option value="<?php echo $teacher['IDGV']; ?>"><?php echo $teacher['TENGV']; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <input type="hidden" name="idlop" value="<?php echo $data['editclass']['IDLOP']; ?>">
            <div class="row">
                <button class="btn waves-effect waves-light indigo col s12" type="submit" name="editclass">Cập nhật
                </button>
                <a class="mt-3" href="/Nienluancoso/admin/classcoures">Quay lại</a>
            </div>
        </div>
    </form>
</div>