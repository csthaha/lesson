<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>房屋租赁网站 - 添加房屋信息</title>
  <style type="text/css">
  body{
    margin:0 auto;
    text-align: center;
    background-image:url("../image/bottom.jpg");
  }
  #fieldset{
    width:650px;
    height:450px;
    margin:100px auto;
    background-color:rgb(171,230,189);
    border:2px solid black;
  }
  legend{
    font-size:1.2em;
    color:rgb(0,120,215);
  }
  table{
    margin:0 auto;
  }
  #td_right{
    text-align:right;
  }
  td{
    height:40px;
    width:178px;
  }
  input{
    height:100%;
  }
  #x{
    color:white;
    font-size:1.5em;
    background:rgb(0,120,215);
    border:2px solid blue;
  }
</style>
</head>
<body>
 <fieldset id="fieldset">
          <legend id="legend">添加新房屋信息</legend>
          <form action="addsuccess.jsp" method="post">
          <table>
            <tr>
              <td id="td_right">房屋地址:</td>
              <td id="td_input"><input type="text" name="address" id="adress"></td>
              <td id="td_right">建筑面积m²:</td>
              <td><input type="text" name="area" id="area"></td>
            </tr>
            <tr>
              <td id="td_right">层楼:</td>
              <td><input type="text" name="floor" id="floor"></td>
              <td id="td_right">租金￥:</td>
              <td><input type="text" name="rent" id="rent"></td>
            </tr>
            <tr>
              <td id="td_right">区域:</td>
              <td><input type="text" name="direction" id="direction""></td>
              <td id="td_right">房型:</td>
              <td><input type="text" name="shape" id="shape"></td>
            </tr>
            <tr>
              <td id="td_right">朝向:</td>
              <td><input type="text" name="orientation" id="orientation"></td>
              <td id="td_right">周围环境:</td>
              <td><input type="text" name="environment" id="environment"></td>
            </tr>

            <tr>
              <td id="td_right">装修情况:</td>
              <td><input type="text" name="fitment" id="fitment"></td>
              <td id="td_right">联系人:</td>
              <td><input type="text" name="contact" id="contact"></td>
            </tr>

            <tr>
              <td id="td_right">联系电话:</td>
              <td><input type="text" name="phone" id="phone"></td>
              <td id="td_right">出租情况:</td>
              <td><input type="text" name="habout" id="habout"></td>
            </tr>
            <tr>
              <td colspan="1" id="page"></td>
              <td colspan="3"><input type="submit" value="添  加" id="x" name="submit3"></td>
            </tr>
          </table>
      </form>
        </fieldset>
</body>
</html>