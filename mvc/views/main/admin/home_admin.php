<div>
    <h3 class="indigo-text text-darken-4 center"><b>Trung tâm anh ngữ OCEAN</b></h3>
    <div class="mt-4">
        <div>
            <div id="nam">
            </div>
            <div>
                <canvas class="mt-3 center" id="myChart" style="width:100%;max-width:1000px"></canvas>
            </div>
        </div>
        <div>
            <h5 class="indigo-text text-darken-4">Thống kê doanh thu trong tháng:</h5>
            <div>
                <label class="col s12 indigo-text" for="thang">Tháng:</label>
                <select class="browser-default col s5" name="thang" id="thang">
                    <option value="" disabled selected>Chọn tháng</option>
                    <?php
                    for ($i = 1; $i <= 12; $i++) {
                    ?>
                        <option value="<?php echo $i; ?>">Tháng <?php echo $i; ?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div>
                <canvas class="mt-3 center" id="myChartthang" style="width:100%;max-width:1000px"></canvas>
            </div>
        </div>
    </div>
</div>