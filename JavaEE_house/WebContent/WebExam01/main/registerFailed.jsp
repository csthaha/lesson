<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /> 
<title>注册失败</title> 
<style type="text/css">
#buttom{
  height:150px;
  width:500px;
  margin:200px auto;
  background-color: rgb(245,245,245);
}
#myspan{
  color:red;
}
</style>
<script type="text/javascript">
window.onload=function(){
  var myspan=document.getElementById("myspan");
  var timer=10;
  var flag;
  function daoji(){
     timer=timer-1;
     myspan.innerHTML=timer;
     if(timer==0){
       history.go(-1);
       clearInterval(flag);
     }
  }
  flag=setInterval(daoji,1000);
}
</script> 

</head> 
<body> 
  <div id="buttom">
    <h1>注册失败!</h1>
    <span id="myspan">10</span>后跳转至注册页面...
    <p>点击<a href="#" onclick="history.go(-1);">此处</a>直接跳转</p>
  </div>
</body> 
</html>