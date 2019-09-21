$(function(){
  //.bookの中の.book__icon要素がクリックされたら
  $('.book .book__icon').click(function() {
    //クリックされた.bookの中の.book__icon要素に隣接する.bookの中の.book__characterを開いたり閉じたりする。
		$(this).next('.book .book__character').slideToggle();
		//クリックされた.bookの中の.book__icon要素以外の.bookの中の.book__icon要素に隣接する.bookの中の.book__characterを閉じる
    $('.book .book__icon').not($(this)).next('.book .book__character').slideUp();
  });


  $("p").click(function() {
      var scrtop = $(".menus").scrollTop(); //位置を保存
      localStorage.setItem('Key', scrtop);
    });
  $(window).on('load', function() {
    var scrtop = localStorage.getItem('Key');
    if (scrtop) {
        $('.menus').animate({scrollTop: scrtop}, 'fast' );
      }
  });

  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
  $("#book_img").change(function() {
    readURL(this);
  });
});