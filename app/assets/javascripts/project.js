// headerメニューボタン
$(document).on('turbolinks:load', function() {
    $(".header__right__btn").on('click', function() {
      $(".header__right__menu").toggle(300);
    });
    $(".header__left__btn").on('click', function() {
      $(".header__left__menu").toggle(300);
    });
  });

$(document).on('click', function(e) {
  if (!$(e.target).closest('.header__right__btn').length) {
    $('.header__right__menu').fadeOut();
  }
  if (!$(e.target).closest('.header__left__btn').length) {
    $('.header__left__menu').fadeOut();
  }
});


// TOPへ戻るボタン
$(document).on('turbolinks:load', function() {
    var showFlag = false;
    var topBtn = $('#page-top');
    topBtn.css('bottom', '-100px');
    var showFlag = false;
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            if (showFlag == false) {
                showFlag = true;
                topBtn.stop().animate({'bottom' : '20px'}, 200); 
            }
        } else {
            if (showFlag) {
                showFlag = false;
                topBtn.stop().animate({'bottom' : '-100px'}, 200); 
            }
        }
    });
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});

// 特定の位置までスクロール
$(document).on('turbolinks:load', function() {
  $('#investments__btn').on('click', function(){
    $("html,body").animate({scrollTop:$('#investments__bar__menu').offset().top},{ duration: 1000, easing: 'swing', });
  });
});

$(document).on('turbolinks:load', function() {
  $('#st__money-btn').on('click', function(){
    $("html,body").animate({scrollTop:$('#investments__bar__menu').offset().top},{ duration: 1000, easing: 'swing', });
  });
});




































