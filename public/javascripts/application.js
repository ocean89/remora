


jQuery(document).ready(function() {

  // $('#---------CHANGE THIS----').submit(function() {
  //  $.post($(this).attr("action"), $(this).serialize(), null, "script");
  //   return false;    
  // })
	
  // $("#stuff").sortable({
  // 
  //           update : function(event, ui)
  //           {
  //             var datas = $("#stuff").sortable('serialize');
  //             //datas is a string btw :-()
  //             $.post("posts/sort", {stuff : datas}, null, "script");
  //         }
  //       });
      
$(function() {
    $(".pagination a").live("click", function() {
        alert(this.href);
        $.get(this.href, function(data){
 });
        return false;
        });
});

})

