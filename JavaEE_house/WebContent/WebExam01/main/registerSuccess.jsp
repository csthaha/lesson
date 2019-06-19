<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<?php

include('phpconnectdb.jsp');
$username = $_POST['userName'];
$passwd =  md5($_POST['passwd']);
$userId = $_POST['userId'];
$phone = $_POST['phone'];

$sql = "INSERT INTO login(username,passwd,uidcard,uphone) VALUES('$username','$passwd','$userId','$phone')";
if($username==""||$passwd == ""||$userId==""||$phone == ""||!$result = mysqli_query($link,$sql)){
	echo "注册失败！".mysqli_error($link);
  header("location:registerFailed.jsp");
	exit();
	//header("location:register.html");
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /> 
<title>注册成功</title> 
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
       history.go(-2);
       clearInterval(flag);
     }
  }
  flag=setInterval(daoji,1000);
}
</script> 

</head> 
<body> 
	<div id="buttom">
		<h1>注册成功!</h1>
    <span id="myspan">10</span>后跳转至登录页面...
    <p>点击<a href="#" onclick="history.go(-2);">此处</a>直接跳转</p>
	</div>
</body> 
</html>