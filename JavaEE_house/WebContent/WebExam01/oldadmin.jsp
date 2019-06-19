<?php
 session_start();
 //连接数据库
 include('main/phpconnectdb.php');

//验证账号密码
 if(isset($_POST['username'])&&isset($_POST['passwd'])){
 	$adminName = $_POST['username'];
    $passwd = $_POST['passwd'];
    $sql = "SELECT * FROM admin WHERE adminName='$adminName' AND passwd='$passwd' LIMIT 1";
    $query = mysqli_query($link,$sql);
    if(!$result = mysqli_fetch_row($query)){
    	echo "获取admin账号失败".mysqli_error($link);
    	header("location:admin.html");
 	    exit();
 	}
 $_SESSION['admin'] = $_POST['username'];
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>房屋租赁管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/backstage.css">
	<script src="js/container_xhr.js"></script>
	
</head>
<body>

		<header id="header">
			<h1>房屋租赁后台管理<a href="index.html">登录界面>></a></h1>


		</header>
		<container class="container">
			<div id="nav">
				<table>
					<tr>
						<td><a href="#" onclick="house()">房屋信息查询</a></td>
						<td><a href="#" onclick="client()">用户信息管理</a></td>
						<td><a href="#" onclick="link()">留言板管理</a></td>
					</tr>
				</table>
			</div>
			<div id="content">

			</div>
		</container>

</body>
</html>