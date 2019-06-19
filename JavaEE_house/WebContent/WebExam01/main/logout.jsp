<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /> 
<title>用户注销</title> 
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
       location.href="../index.html";
       clearInterval(flag);
     }
  }
  flag=setInterval(daoji,1000);
}
</script> 

</head> 
<body> 
	<div id="buttom">
		<h1>管理员已注销!</h1>
    <span id="myspan">10</span>后跳转至登录界面...
    <p>点击<a href="../index.html">此处</a>直接跳转</p>
	</div>
</body> 
</html>