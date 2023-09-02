$(document).ready(function(){
    $('.sidenav').sidenav();
  });
  $(document).ready(function(){
    $('.tabs').tabs();
  });
  $(document).ready(function(){
    $('.carousel').carousel();
  });
  $(document).ready(function(){
    $('input.autocomplete').autocomplete({
      data: {
        "Apple": null,
        "Microsoft": null,
        "Google": 'https://placehold.it/250x250'
      },
    });
  });
  $('.dropdown-trigger').dropdown();
  $(document).ready(function(){
    $('.datepicker').datepicker({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 100, // Creates a dropdown of 15 years to control year
      format: 'yyyy/mm/dd'
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
// $("#telephone").on("focusout", function (e) {
//   if ($(this).lenght == 10) {
//     $("#telephone").removeClass("invalid").addClass("valid");
//   } else {
//     $("#telephone").removeClass("valid").addClass("invalid");
//   }
// });

// $("#telephone").on("keyup", function (e) {
//   if ($("#telephone").lenght == 10) {
//     $("#telephone").removeClass("invalid").addClass("valid");
//   } else {
//       $("#telephone").removeClass("valid").addClass("invalid");
//   }
// });