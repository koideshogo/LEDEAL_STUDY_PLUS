// // スクロールして何ピクセルでアニメーションさせるか
// var px_change = 1;
// // スクロールのイベントハンドラを登録
// window.addEventListener('scroll', function(e) {
//   console.log(e);
//     // 変化するポイントまでスクロールしたらクラスを追加
//     var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
//     if ( scrollTop > px_change ) {
//         document.getElementById( "btn-backtotop" ).classList.add( "fadein" );

//     // 変化するポイント以前であればクラスを削除
//     } else {
//         document.getElementById( "btn-backtotop" ).classList.remove( "fadein" );
//     }
// });

// document.getElementById( "btn-backtotop" ).addEventListener('click', function(e) {
//     anime.remove("html, body");
//     anime({
//         targets: "html, body",
//         scrollTop: 0,
//         dulation: 600,
//         easing: 'easeOutCubic',
//     });
//     return false;
// });

$(function () {
    var topBtn = $('#page-top');
    topBtn.hide();
    //スクロールが500に達したらボタン表示
    $(window).scroll(function () {
        if ($(this).scrollTop() > 500) {
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
    //スルスルっとスクロールでトップへもどる
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});
