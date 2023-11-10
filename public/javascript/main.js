$(document).ready(function () {
  $(".sidenav").sidenav();
});
$(document).ready(function () {
  $(".tabs").tabs();
});
$(document).ready(function () {
  $(".carousel").carousel();
});
$(document).ready(function () {
  $("input.autocomplete").autocomplete({
    data: {
      Apple: null,
      Microsoft: null,
      Google: "https://placehold.it/250x250",
    },
  });
});
$(".dropdown-trigger").dropdown();
$(document).ready(function () {
  $(".datepicker").datepicker({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100, // Creates a dropdown of 15 years to control year
    format: "yyyy/mm/dd",
  });
  // $('.datepicker').pickadate({
  //   selectMonths: true, // Creates a dropdown to control month
  //   selectYears: 15, // Creates a dropdown of 15 years to control year
  //   format: 'dd-mm-yyyy' });
});
$("#password").on("focusout", function (e) {
  if ($(this).val() != $("#password1").val()) {
    $("#password1").removeClass("valid").addClass("invalid");
  } else {
    $("#password1").removeClass("invalid").addClass("valid");
  }
});

$("#password1").on("keyup", function (e) {
  if ($("#password").val() != $(this).val()) {
    $(this).removeClass("valid").addClass("invalid");
  } else {
    $(this).removeClass("invalid").addClass("valid");
  }
});
$(document).ready(function () {
  $("#khoahoc").change(function () {
    var idkh = $(this).val();
    $.ajax({
      url: "http://localhost/Nienluancoso/ajax/getclass/" + idkh,
      dataType: "json",
      success: function (data) {
        $("#lop").html("");
        for (i = 0; i < data.length; i++) {
          var lop = data[i];
          var str = `<option value="${lop["IDLOP"]}">${lop["TENLOP"]}</option>`;
          $("#lop").append(str);
          console.log(str);
        }
      },
    });
  });
});

$(document).ready(function () {
  $("#khoahoc").change(function () {
    var idkh = $(this).val();
    $.ajax({
      url: "http://localhost/Nienluancoso/ajax/gethocphi/" + idkh,
      dataType: "json",
      success: function (data) {
        $("#inputhocphi").html("");
        var hocphi = data;
        // console.log(hocphi['HOCPHI']);
        // var caro = `${hocphi["HOCPHI"]}`
        // console.log(caro);
        var name = parseInt(hocphi["HOCPHI"]).toLocaleString("vi-VN", {
          style: "currency",
          currency: "VND",
        });
        var str = `<input value="${hocphi["HOCPHI"]}" type="hidden" name="hocphi">`;
        $("#inputhocphi").html("Học phí: " + name);
        $("#inputhocphi").append(str);
        console.log(str);
      },
    });
  });
});

$(document).ready(function () {
  var nam = 2023;
  $.ajax({
    url: "http://localhost/Nienluancoso/ajax/thongketheonam/" + nam,
    dataType: "json",
    success: function (data) {
      var xValues = [];
      var yValues = [];
      for (var i in data) {
        xValues.push(data[i].THANG);
        yValues.push(data[i].TONG);
      }
      $("#nam").html(
        '<h5 class="indigo-text text-darken-4">Thống kê doanh thu trong năm 2023:</h5>'
      );
      yValues.push(0);
      $chart = new Chart("myChart", {
        type: "line",
        data: {
          labels: xValues,
          datasets: [
            {
              fill: false,
              lineTension: 0,
              backgroundColor: "rgba(0,0,255,1.0)",
              borderColor: "rgba(0,0,255,0.1)",
              data: yValues,
            },
          ],
        },
        options: {
          legend: { display: false },
          title: {
            display: true,
            text: "Báo cáo tổng thu",
          },
          scales: {
            xAxes: [
              {
                scaleLabel: {
                  display: true,
                  labelString: "Tháng",
                },
              },
            ],
            yAxes: [
              {
                ticks: {
                  callback: function (value) {
                    return parseInt(value).toLocaleString("vi-VN", {
                      style: "currency",
                      currency: "VND",
                    });
                  },
                },
                scaleLabel: {
                  display: true,
                  labelString: "Tổng thành tiền",
                },
              },
            ],
            Plugin: {
              tooltips: {
                title: "Tháng",
                // callbacks: {
                // label: function (tooltipItem, data) {
                //   return parseInt(tooltipItem.value).toLocaleString("vi-VN", {
                //     style: "currency",
                //     currency: "VND",
                //   });
                // },
                // },
              },
            },
          },
        },
      });
    },
  });
});
$(document).ready(function () {
  $("#thang").change(function () {
    var thang = $(this).val();
    $.ajax({
      url: "http://localhost/Nienluancoso/ajax/thongketheothang/" + thang,
      dataType: "json",
      success: function (data) {
        var xValues = [];
        var yValues = [];
        for (var i in data) {
          xValues.push(data[i].NGAYTHU);
          yValues.push(data[i].TONG);
        }
        yValues.push(0);

        $chart = new Chart("myChartthang", {
          type: "line",
          data: {
            labels: xValues,
            datasets: [
              {
                data: yValues,
                borderColor: "red",
                fill: false,
                backgroundColor: "grey",
              },
            ],
          },
          options: {
            legend: { display: false },
            title: {
              display: true,
              text: "Báo cáo tổng thu theo tháng",
            },
            scales: {
              xAxes: [
                {
                  scaleLabel: {
                    display: true,
                    labelString: "Ngày Thu",
                  },
                },
              ],
              yAxes: [
                {
                  ticks: {
                    callback: function (value) {
                      return parseInt(value).toLocaleString("vi-VN", {
                        style: "currency",
                        currency: "VND",
                      });
                    },
                  },
                  scaleLabel: {
                    display: true,
                    labelString: "Tổng thành tiền",
                  },
                },
              ],
            },
          },
        });
      },
    });
  });
});
