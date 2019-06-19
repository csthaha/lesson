<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
 <?php
 include('phpconnectdb.jsp');
 if(!isset($_POST['address'])){
  echo "test";
 }
  if(isset($_POST["address"])){
  $hid = $_POST["hid"];
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
  $sqlComment = "UPDATE house_information SET  `haddress`='$address', `hfloor`=$floor, `hrent`=$rent, `harea`=$area, `hdirection`='$direction', `hshape`='$shape', `orientation`='$orientation',  `environment`='$environment', `fitment`='$fitment', `contact`='$contact', `phone`='$phone', `habout`='$habout' WHERE `hid`=$hid ";

  if(!$result = mysqli_query($link,$sqlComment)){
    echo "更改房屋错误".mysqli_error($link);
    exit();
   }
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" /> 
<title>更改成功</title> 
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
       location.href=("../index.jsp");
       clearInterval(flag);
     }
  }
  flag=setInterval(daoji,1000);
}
</script> 

</head> 
<body> 
	<div id="buttom">
		<h1>更改房屋信息成功!</h1>
    <span id="myspan">10</span>后跳转至首页...
    <p>点击<a href="#" onclick="location.href=('../index.jsp');">此处</a>直接跳转</p>
	</div>
</body> 
</html>