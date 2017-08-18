$(function() {
  $('#modal-new-user').modal('show');
  $('.signin__btn').on('click', function() {
    $(this).parent().submit();
  })
})
