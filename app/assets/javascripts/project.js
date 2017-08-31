$(function() {
  $("#signup__btn").on('click', function() {
    $("#signup__menu").toggle(300);
  });
  $("#login__btn").on('click', function() {
    $("#login__menu").toggle(300);
  });
  $(".mypage__btn").on('click', function() {
    $(".mypage__menu").toggle(300);
  });
  $("#planner__btn").on('click', function() {
    $("#planner__menu").toggle(300);
  });
});

$(document).on('click', function(e) {
  if (!$(e.target).closest('#signup__btn').length) {
    $('#signup__menu').fadeOut();
  }
  if (!$(e.target).closest('#login__btn').length) {
    $('#login__menu').fadeOut();
  }
  if (!$(e.target).closest('.mypage__btn').length) {
    $('.mypage__menu').fadeOut();
  }
  if (!$(e.target).closest('#planner__btn').length) {
    $('#planner__menu').fadeOut();
  }
});
