$(document).on('turbolinks:load', function() {
  var index = $(".post__form__project:last").data("number");
  var form__box = $(".form__box");
  function buildHTML(indexNmb) {
    var html = `    <div class='form__box'>
                      <div class='post__field'>
                        <div class='post__field__text'>リターンタイトル</div>
                        <input class="post__field__box form-short" placeholder="例）40文字以内" maxlength="40" size="40" type="text" name="project[investments_attributes][${indexNmb}][title]" id="project_investments_attributes_${indexNmb}_title" />
                      </div>
                      <div class='post__field'>
                        <div class='post__field__text'>リターン詳細文</div>
                        <textarea class="post__field__box form-long" name="project[investments_attributes][${indexNmb}][body]" id="project_investments_attributes_${indexNmb}_body"></textarea>
                      </div>
                      <div class='post__field'>
                        <div class='post__field__text'>金額</div>
                        <input class="post__field__box form-short" placeholder="例）10000" maxlength="6" size="6" type="text" name="project[investments_attributes][${indexNmb}][price]" id="project_investments_attributes_${indexNmb}_price" />
                      </div>
                      <div class='post__field'>
                        <div class='post__field__text'>リターン用画像</div>
                        <div class='input-file'>
                          <input class="input-file" type="file" name="project[investments_attributes][${indexNmb}][image]" id="project_investments_attributes_${indexNmb}_image" /></div>
                      </div>
                      <div class='post__field'>
                        <div class='post__field__text'>用意個数</div>
                        <input class="post__field__box form-short" placeholder="例）20" maxlength="3" size="3" type="text" name="project[investments_attributes][${indexNmb}][stock]" id="project_investments_attributes_${indexNmb}_stock" />
                      </div>
                      <div class='post__field'>
                        <div class='post__field__text'>納品予定日</div>
                        <input class="post__field__box form-short" placeholder="例）2017-12-22" maxlength="10" size="10" type="text" name="project[investments_attributes][${indexNmb}][delivery_date]" id="project_investments_attributes_${indexNmb}_delivery_date" />
                      </div>
                      <div class='post__form__project' data-number="${indexNmb}">
                        <div class='post__form__project-border' id="border__under"></div>
                      </div>
                    </div>`

    form__box.append(html);
  }

  // boxが一つの時はminusボタンを表示しない
  $(function() {
    if ( index === 0) {
      $("#minus__btn").hide();
    }
  });

  // Plusボタンクリックでボックス追加
  $("#plus__btn").on('click', function() {
    index++;
    buildHTML(index)
    $("html,body").animate({scrollTop:$('.form__box:last').offset().top},{ duration: 700, easing: 'swing', });
    if ( index === 0) {
      $("#minus__btn").hide();
    } else  {
      $("#minus__btn").show();
    }
  });

  // minusボタンクリックでボックス削除
  $("#minus__btn").on('click', function() {
    index--;
    $(".form__box:last").remove();
    $("html,body").animate({scrollTop:$('.post__form__project-border:eq(-2)').offset().top},{ duration: 700, easing: 'swing', });
    if ( index === 0) {
      $("#minus__btn").hide();
    } else  {
      $("#minus__btn").show();
    }
  });
});

















