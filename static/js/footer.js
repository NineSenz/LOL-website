$(function(){
  $.ajax({
    url:"footer.html",
    type:"get",
    success:function(result){
      $(result).replaceAll("footer"); 
      $(`<link rel="stylesheet" href="./css/footer.css">`).appendTo("head");
    }
  })
})
