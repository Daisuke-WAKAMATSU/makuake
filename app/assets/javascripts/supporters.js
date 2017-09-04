$(function() {
  $("#support__submit").on('submit', function(e) {
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action')

    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false,
    })
    .done(function(message) {
      buildHTML(message)
      $("#message_body").val('');
      $(".main__send__form-image").val('');
      $('.main__message').animate({
          'scrollTop': $('.main__message')[0].scrollHeight}, 'fast');
      $(".main__send-botton").prop('disabled', false);
    })
    .fail(function() {
      $("#message_body").val('');
      $(".main__send__form-image").val('');
      $(".main__send-botton").prop('disabled', false);
      alert("メッセージ送信が失敗しました")
    })
  });
});
