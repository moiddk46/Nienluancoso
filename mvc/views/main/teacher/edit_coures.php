<div class="mt-3">
    <h3 class="indigo-text text-darken-4 center"><b><?php echo $data['editcoures']['TENKH']; ?></b></h3>
    <div class="mt-3">
        <form action="../../coures/submitedit" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="input-field col s6">
                    <input id="tenkh" type="text" class="validate" name="tenkh" value="<?php echo $data['editcoures']['TENKH']; ?>" required>
                    <label class="indigo-text" for="tenkh">Tên khóa học</label>
                </div>
                <div class="col s6">
                    <label class="left indigo-text" for="chungchi">Chứng chỉ</label>
                    <select class="browser-default" id="chungchi" name="chungchi">
                        <?php
                        if (isset($data['editcoures']['IDCC'])) {
                        ?>
                            <option value="<?php echo $data['editcoures']['IDCC']; ?>"><?php echo $data['editcoures']['TENCC']; ?></option>
                            <?php
                            foreach ($data['cccoures'] as $cc) {
                                if ($cc['IDCC'] == $data['editcoures']['IDCC']) {
                                    continue;
                                } else {
                            ?>

                                    <option value="<?php echo $cc['IDCC']; ?>"><?php echo $cc['TENCC']; ?></option>
                            <?php
                                }
                            }
                            ?>
                        <?php
                        } else {
                        ?>
                            <option value="" disabled selected>Chọn chứng chỉ</option>
                            <?php
                            foreach ($data['cccoures'] as $cc) {
                            ?>
                                <option value="<?php echo $cc['IDCC']; ?>"><?php echo $cc['TENCC']; ?></option>
                        <?php
                            }
                        }
                        ?>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="file-field input-field col s6">
                    <div class="btn">
                        <span>Chọn ảnh</span>
                        <input type="file" name="hinhanh" id="hinhanh">
                    </div>
                    <div class="file-path-wrapper col s8">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
                <div class="input-field col s6">
                    <input id="hocphi" type="text" class="validate" name="hocphi" value="<?php echo $data['hocphicoures']['HOCPHI']; ?>" required>
                    <label class="indigo-text" for="hocphi">Hoc phí</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="ngaybatdau" type="text" class="datepicker" name="ngaybatdau" value="<?php
                                                                                                    echo $data['editcoures']['NGAYBD'];
                                                                                                    ?>" required>
                    <label class="indigo-text" for="ngaybatdau">Ngày bắt đầu</label>
                </div>
                <div class="input-field col s6">
                    <input id="ngayketthuc" type="text" class="datepicker" name="ngayketthuc" value="<?php
                                                                                                        echo $data['editcoures']['NGAYKT'];
                                                                                                        ?>" required>
                    <label class="indigo-text" for="ngayketthuc">Ngày kết thúc</label>
                </div>
            </div>
            <div class="row">
                <textarea name="chitiet" style="min-height: 800px;">
                    <?php
                    echo $data['editcoures']['CHITIET'];
                    ?>
                </textarea>
            </div>
            <input type="hidden" name="idkh" value="<?php echo $data['editcoures']['IDKH']; ?>">
            <div class="row">
                <a class="waves-effect waves-light btn indigo left m-2" href="/Nienluancoso/coures/couresteacher"><i class="fa-solid fa-backward"></i> Back</a>
                <button class="btn waves-effect waves-light indigo right m-2 right" type="submit" name="chinhsua">Cập nhật
                </button>
            </div>
        </form>
    </div>

</div>