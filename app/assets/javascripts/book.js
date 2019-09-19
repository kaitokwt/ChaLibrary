$(function(){
  //.bookの中のp要素がクリックされたら
  $('.book p').click(function(){
    //クリックされた.bookの中のp要素に隣接する.bookの中の.book__characterを開いたり閉じたりする。
		$(this).next('.book .book__character').slideToggle();
		//クリックされた.bookの中のp要素以外の.bookの中のp要素に隣接する.bookの中の.book__characterを閉じる
		$('.book p').not($(this)).next('.book .book__character').slideUp();
	});
});