<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 <?php
 include('phpconnectdb.jsp');
  if(isset($_POST["address"])){
  $address = $_POST["address"];
  $floor = $_POST["floor"];
  $rent = $_POST["rent"];
  $area = $_POST["area"];
  $direction = $_POST["direction"];
  $shape = $_POST["shape"];
  $orientation = $_POST["orientation"];
  $environment = $_POST["environment"];
  $fitment = $_POST["fitment"];
  $contact = $_POST["contact"];
  $phone = $_POST["phone"];
  $habout = $_POST["habout"];
  $sqlComment = "INSERT INTO house_information(hid, haddress, hfloor, hrent, harea, hdirection, hshape, orientation,  environment, fitment, contact, phone, habout) VALUES (NULL,'$address',$floor,'$rent',$area,'$direction','$shape','$orientation','$environment','$fitment','$contact','$phone','$habout')";
  
  if(!$result = mysqli_query($link,$sqlComment)){
    echo "添加房屋错误".mysqli_error($link);

    exit();
   }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /> 
<title>房屋租赁网站 - 添加成功</title> 
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
		<h1>添加房屋信息成功!</h1>
    <span id="myspan">10</span>后跳转至首页...
    <p>点击<a onclick="history.go(-2);">此处</a>直接跳转</p>
	</div>
</body> 
</html>