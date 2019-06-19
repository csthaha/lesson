<?php
  session_start();
/*
//登录
  if(!isset($_POST['submit'])){
  	exit("<h1 align='center' >------非法访问------</h1>");
  }
  */
  $username = ($_POST['username']);
  $passwd = ($_POST['passwd']);

  // 包含数据库连接文件
  include('phpconnectdb.php');

  $sql = "SELECT uid FROM login WHERE username='$username' AND passwd='$passwd' LIMIT 1";

  $check_query = mysqli_query($link,$sql);
  if(!$result = mysqli_fetch_array($check_query)){
    echo "failed";
    exit();
  }
  $_SESSION['username'] = $username;
  $_SESSION['userid'] = $result['uid'];
  ?>

  
  <html>
  <head>
    <title></title>
  </head>
  <body>
<!--   <script type="text/javascript">
    window.location.href="../xiaodong.php";
  </script> -->
  
  </body>
  </html>