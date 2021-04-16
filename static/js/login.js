$(()=>{
  $("#uname").focus()
  $("#loginbtn").click(function(){
    var name = window.document.getElementById("username").value;
    var password = window.document.getElementById("password").value;
  })
})