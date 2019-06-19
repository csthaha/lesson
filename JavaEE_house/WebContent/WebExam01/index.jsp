<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%-- <%
session_start();


   /*------------------非法访问--------------*/
    if(!isset($_SESSION['username'])&&!isset($_POST['submit1'])){
      header("location:main/unlogin.html");
    }


 include('main/phpconnectdb.jsp');


 if(isset($_POST['submit1']))
 {
    $username = ($_POST['username']);
    $passwd = md5($_POST['passwd']);

    // 包含数据库连接文件
    
    //获取用户名
    $sql = "SELECT uid FROM login WHERE username='$username' AND passwd='$passwd' LIMIT 1";
    $check_query = mysqli_query($link,$sql);
    if(!$result = mysqli_fetch_array($check_query)){
      session_destroy();
      header("location:main/loginFailed.html");
      exit();
    }
    $_SESSION['username'] = $username;
    $_SESSION['userid'] = $result['uid'];

}
    $name = $_SESSION['username'];

  //翻页设置
  $yema=1;
  $countPage = mysqli_query($link,"SELECT * FROM house_information");
  $url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];
  if(isset($_GET["page"])){
    if(intval($_GET["page"])<=0||$_GET["page"]>intval(mysqli_num_rows($countPage))){   //mysqli_num_rows(mysqli_query(string))获取总行数
      echo "<script>window.location.href=document.referrer;</script>";
    }$yema=intval($_GET["page"]);
  }
  //获取房屋总记录数
  $sql = "SELECT * FROM house_information";
  $result = mysqli_query($link,$sql);
  $records = mysqli_num_rows($result); 

 //获取房屋结果集
  $sql = "SELECT * FROM house_information  limit ".($yema-1).",1";
  $result = mysqli_query($link,$sql);
  
  if(!$arr = mysqli_fetch_row($result)){
    echo "房屋信息查询错误".mysqli_error($link);
    exit();
  }

                /* -----------------留言---------------*/
  if(isset($_POST["link"])){
  $comment = $_POST["link"];
  //获得时间戳
  $timezone_identifier = "PRC";  //PRC本地时区标识符
  //解决时间相差8小时问题
  date_default_timezone_set($timezone_identifier); 
  $stamp =  date('Y-m-d H:i');
 
  $commenter = $_SESSION['username'];
  $sqlComment = "insert into comment(commentid,commentcontent,stamp,commenter) values (NULL,'$comment','$stamp','$commenter')";
  
  if(!$result = mysqli_query($link,$sqlComment)){

    echo "连接留言库错误".mysqli_error($link);
    exit();
   }
}
   


          /*--------------------图片处理---------------*/
          $imagename = $arr[7];
  %> --%>

  <html>
<head>
  <meta charset="utf-8">
  <title>房屋租赁网站 - 首页</title>

  <link rel="stylesheet" type="text/css" href="css/index.css">
  <script type="text/javascript" src="js/index.js">

  </script>

</head>
<body>

                            <!--显示用户登录名与注销-->
  
  <div id="welcome"><?php echo $_SESSION['username'].",欢迎你！&nbsp;&nbsp;&nbsp;<a href='main/logout.jsp' id='logout'>注销</a>" ;?></div>

                            <!----显示房屋信息---->


  <div class="login_logo"></div>
    <h1>小 Dong 房 屋 租 赁 网 站</h1>
    <div id="blackbottom">
      <div id="image"><img src="<?php echo 'image/'.$imagename.'.jpg' ?>" width="100%" height="100%" title="<?php echo $imagename ?>"></div>
      <div id="content">
        <div id="searchD"><input type="text" name="search" id="searchT" value="关键字搜索..." onfocus="search_onfocus()" onblur="if (value ==''){value='关键字搜索...';this.style.border = '1px solid #b8b8b8';}"/>

          <!--搜索-->

          <input type="button" name="look" class="searchB" value="搜 索" onclick="searchH()"></div>

        <fieldset id="fieldset">
          <legend id="legend">房屋信息</legend>
          <form action="main/updateSuccess.jsp" method="post">
          <table>
            <input type="hidden" name="hid" value="">
            <tr>
              <td id="td_right">房屋地址:</td>
              <td id="td_input"><input type="text" name="address" id="address" value=""></td>
              <td id="td_right">建筑面积m²:</td>
              <td><input type="text" name="area" id="area" value=""></td>
            </tr>
            <tr>
              <td id="td_right">层楼:</td>
              <td><input type="text" name="floor" id="floor" value=""></td>
              <td id="td_right">租金￥:</td>
              <td><input type="text" name="rent" id="rent" value=""></td>
            </tr>
            <tr>
              <td id="td_right">区域:</td>
              <td><input type="text" name="direction" id="direction" value=""></td>
              <td id="td_right">房型:</td>
              <td><input type="text" name="shape" id="shape" value=""></td>
            </tr>
            <tr>
              <td id="td_right">朝向:</td>
              <td><input type="text" name="orientation" id="orientation" value=""></td>
              <td id="td_right">周围环境:</td>
              <td><input type="text" name="environment" id="environment" value=""></td>
            </tr>

            <tr>
              <td id="td_right">装修情况:</td>
              <td><input type="text" name="fitment" id="fitment" value=""></td>
              <td id="td_right">联系人:</td>
              <td><input type="text" name="contact" id="contact" value=""></td>
            </tr>

            <tr>
              <td id="td_right">联系电话:</td>
              <td><input type="text" name="phone" id="phone" value=""></td>
              <td id="td_right">出租情况:</td>
              <td><input type="text" name="habout" id="habout" value=""></td>
            </tr>

            <tr>
              <td colspan="2" id="page">共条&nbsp;&nbsp;&nbsp;&nbsp;<a href="?page=<?= $yema-1?>" id="front">上一条</a><div id="pageNum">第 条</div><a href="?page=<?= $yema+1?>" id="later">下一条</a></td>
              <td colspan="2"><input type="button" value="添  加" id="addHouse" onclick="add()"><input type="submit" value="修  改" id="update" onclick="update()"><input type="button" value="删  除" id="del" onclick="if(window.confirm('你确定删除吗？'))window.location.href='main/houseUel.jsp?hid=<?php echo $arr[0];?>';">
              </td>

            </tr>
          </table>
        </form>
        </fieldset>
      </div>
      <hr />


                                                   <!---------留言--------->

<fieldset id="fieldset_link">
  <legend id="linkboard">子曰:</legend>
  <form action="" method="post" id="form1">
  <input type="text" name="link" id="link" value="请点击此处留言..." onfocus="link_onfocus()" onblur="if (value ==''){value='请点击此处留言...';}" />

  <input type="submit"  id="submit2"value="留  言" /><!-- <a href="?" name="linkSend" id="linkSend">发 送</a> --></form>
</fieldset>


                                                  <!---------显示留言---------->

<fieldset id="commentFieldset">
  <legend id="newComment">最新留言</legend>

  <table id="commentDisplay">
    <?php 
    include('main/phpconnectdb.jsp');
    $comments = "SELECT * FROM comment ORDER BY commentid DESC";
    $commentResults = mysqli_query($link,$comments);


                    /*--------------分页---------------*/

             $pagesize = 10; //每页显示 自定义
             if(empty($_GET['upage'])){     //$page;设置当前页 用户自己选择
              $upage = 1;
              $startrow = ($upage -1)*$pagesize; //开始行号($page -1)*$pagesize
             }else{
              $upage = $_GET['upage'];
              $startrow = ($upage - 1)*$pagesize;
             }
       $records = mysqli_num_rows($commentResults);  //总记录数mysqli_num_rows()
       $pages = ceil($records/$pagesize); //总页数 $records/$pagesize ceil()向上取整
       //构建分页sql语句
       $sql = "SELECT * FROM comment ORDER BY commentid DESC LIMIT $startrow,$pagesize";
      $Results = mysqli_query($link,$sql);?>

          <tr><!--mysqli_num_rows($query)总记录数-->
        <td colspan="5" class='pagelist' bgcolor="white">
                <a href='?upage=$previous'>上一页</a>
                <span>${i}</span>
      <a href='?upage=$i' class='pagelist'>${i}</a>
      <a href='?upage=$next'>下一页</a>
 
          </td>
        </tr>
<?php
    //设置楼层 $a = mysqli_fetch_array($commentResults)['commentid']; $floorCount = $commentResults;

    while($comment = mysqli_fetch_row($Results)){
    // 设置楼层$floorCount--;
      ?>
    <tr>
      <td id="floorName"><!--设置楼层--><?php echo $comment[3]?></td><td id="timeDisplay"><?php echo date($comment[2])?></td>

           
           <td id='delup'><a href='main/commentUdit.jsp?id=$comment[0];'>修改</a>&nbsp;&nbsp;&nbsp;<a href='#' onclick='commentDel($comment[0])'>删除</a></td> 

      </td>
    </tr>
    <tr>
      <td colspan="3" id="floorContent"><?php echo $comment[1]?></td>
    </tr>

    <?php } ?>



  </table>
</fieldset>




                                                   <!--------js实现分页---------->
<!--   <script type="text/javascript">
              
        function nextPage(){
          alert("test");
              
        }
      //   var inputs = document.getElementsByTagName("input");
      //   for(var i=0;i<inputs.length-2;i++){
      //     (inputs[i].value)=<?php 
      //   echo $arr[$i];
        
      // ?>;
      //   }
      //   alert(c);
      
  </script>  -->



</div>
  <script type="text/javascript">
function logout(){
  var logout  = document.getElementById('logout');

  window.location.href="index.html";
}
    function commentDel(id){
      if(window.confirm("你确定删除吗？")){
        location.href="main/commentUel.jsp?id="+id;
      }
    }

    function searchH(){

      var x=document.getElementById("searchT").value;
      location.href='main/searchH.jsp?info='+x;
    }
    function del(){
      alert("test");
  window.location.href="main/houseDel.jsp?hid=";
}
  </script>


</body>
</html>