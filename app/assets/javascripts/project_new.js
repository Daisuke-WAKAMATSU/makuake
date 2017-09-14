// project投稿も選択したものが追加
$(document).on('turbolinks:load', function() {
  var totalNmb = $(".data__total:last").data("total");
  var titleIndex = $(".data__title:last").data("title");
  var bodyIndex = $(".data__body:last").data("body");
  var imageIndex = $(".data__image:last").data("image");
  var newproject__post__area = $(".newproject__post__area");
  function buildTilte(tilteIndex, totalNmb) {
    var title = ` <div class='post__field title__post__area'>
                    <input value="${totalNmb}" type="hidden" name="project[introductions_attributes][${tilteIndex}][intro_index]" id="project_introductions_attributes_${tilteIndex}_intro_index" />
                    <div class='post__field__text data__body data__total' data-body="${bodyIndex}" data-total="${totalNmb}"">タイトル</div>
                    <input class="post__field__box form-short" placeholder="例）18文字以内" maxlength="18" size="18" type="text" name="project[introductions_attributes][${tilteIndex}][title]" id="project_introductions_attributes_${tilteIndex}_title" />
                  </div>`
    newproject__post__area.append(title);
  }

  function buildBody(bodyIndex, totalNmb) {
    var body = ` <div class='post__field body__post__area'>
                   <input value="${totalNmb}" type="hidden" name="project[introduction_bodies_attributes][${bodyIndex}][intro_index]" id="project_introduction_bodies_attributes_${bodyIndex}_intro_index" />
                   <div class='post__field__text data__body data__total' data-body="${bodyIndex}" data-total="${totalNmb}">テキスト</div>
                   <textarea class="post__field__box form-long" name="project[introduction_bodies_attributes][${bodyIndex}][body]" id="project_introduction_bodies_attributes_${bodyIndex}_body">
                   </textarea>
                 </div>`
    newproject__post__area.append(body);
  }

  function buildImage(imageIndex, totalNmb) {
    var image = ` <div class='post__field image__post__area'>
                    <input value="${totalNmb}" type="hidden" name="project[introduction_images_attributes][${imageIndex}][intro_index]" id="project_introduction_images_attributes_${imageIndex}_intro_index" />
                    <div class='post__field__text data__image data__total' data-image="${imageIndex}" data-total="${totalNmb}">イメージ</div>
                    <input class="input-file" type="file" name="project[introduction_images_attributes][${imageIndex}][image]" id="project_introduction_images_attributes_${imageIndex}_image" /></div>
                  </div>`
    newproject__post__area.append(image);
  }

  // boxが一つの時はminusボタンを表示しない
  $(function() {
    if ( titleIndex === 0) {
      $("#title__minus").hide();
    }
  });
  $(function() {
    if ( bodyIndex === 0) {
      $("#body__minus").hide();
    }
  });
  $(function() {
    if ( imageIndex === 0) {
      $("#image__minus").hide();
    }
  });


  // titleボタン
  $("#title__plus").on('click', function() {
    titleIndex++;
    totalNmb++;
    buildTilte(titleIndex, totalNmb)
    if ( titleIndex === 0) {
      $("#title__minus").hide();
    } else  {
      $("#title__minus").show();
    }
  });
  $("#title__minus").on('click', function() {
    titleIndex--;
    totalNmb--;
    $(".title__post__area:last").remove();
    if ( titleIndex === 0) {
      $("#title__minus").hide();
    } else  {
      $("#title__minus").show();
    }
  });


  // bodyボタン
  $("#body__plus").on('click', function() {
    bodyIndex++;
    totalNmb++;
    buildBody(bodyIndex, totalNmb)
    if ( bodyIndex === 0) {
      $("#body__minus").hide();
    } else  {
      $("#body__minus").show();
    }
  });
  $("#body__minus").on('click', function() {
    bodyIndex--;
    totalNmb--;
    $(".body__post__area:last").remove();
    if ( bodyIndex === 0) {
      $("#body__minus").hide();
    } else  {
      $("#body__minus").show();
    }
  });


  // imageボタン
  $("#image__plus").on('click', function() {
    imageIndex++;
    totalNmb++;
    buildImage(imageIndex, totalNmb)
    if ( imageIndex === 0) {
      $("#image__minus").hide();
    } else  {
      $("#image__minus").show();
    }
  });
  $("#image__minus").on('click', function() {
    imageIndex--;
    totalNmb--;
    $(".image__post__area:last").remove();
    if ( imageIndex === 0) {
      $("#image__minus").hide();
    } else  {
      $("#image__minus").show();
    }
  });
});

// ボタンクリックでinvestmentsを追加
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

// ボタンクリックでtagを追加
$(document).on('turbolinks:load', function() {
  var tagIndex = 0;
  var tag__form = $(".tag__input__area");
  function buildTag() {
    var tag = `<div class='tag__input__area'>
                 <div class='tag__input__area-text'>タグ</div>
                 <input type="text" name="project[genre_list][]" id="project_genre_list_" value="" class="tag__input__area-box" placeholder="例）お肉" />
               </div>`
    tag__form.append(tag);
  }

  // boxが一つの時はminusボタンを表示しない
  $(function() {
    if ( tagIndex === 0) {
      $("#tag__minus").hide();
    }
  });

    // plusボタンクリックでボックス追加
  $("#tag__plus").on('click', function() {
    tagIndex++;
    buildTag();
    if ( tagIndex === 0) {
      $("#tag__minus").hide();
    } else  {
      $("#tag__minus").show();
    }
    if ( tagIndex >= 4) {
      $("#tag__plus").hide();
      $('#tag__minus').css('margin-left','257px');
    } else  {
      $("#tag__plus").show();
    }
  });

    // minusボタンクリックでボックス削除
  $("#tag__minus").on('click', function() {
    tagIndex--;
    $(".tag__input__area:last").remove();
     if ( tagIndex === 0) {
      $("#tag__minus").hide();
    } else  {
      $("#tag__minus").show();
    }
    if ( tagIndex >= 4) {
      $("#tag__plus").hide();
      $('#tag__minus').css('margin-left','257px');
    } else  {
      $("#tag__plus").show();
      $('#tag__minus').css('margin-left','52px');
    }
  });
});
