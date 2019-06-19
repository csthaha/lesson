<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="../css/back.css">
		<script type="text/javascript">
		function userDel(id){
			if(window.confirm("你确定删除吗？")){
				location.href="userDel.jsp?id="+id;
			}
		}
	</script>
</head>
<body>
	<!--用户管理-->
	<fieldset id="manageUser">
		<legend>用户管理</legend>
		<table class="tableUser">
			<tr  style="height:40px" bgcolor="grey">
				<td>编号</td>
				<td>用户名</td>
				<td>密码</td>
				<td>身份证号</td>
				<td>电话号码</td>
				<td bgcolor="white">操作</td>
			</tr>

				<td><?php echo $arr[0];?></td>
				<td><?php echo $arr[1];?></td>
				<td><?php echo $arr[2];?></td>
				<td><?php echo $arr[3];?></td>
				<td><?php echo $arr[4];?></td>
				<td bgcolor="white"><a href="userEdit.jsp?id=<?php echo $arr[0];?>">修改</a>&nbsp;&nbsp;&nbsp;<a href="#" onclick="userDel(<?php echo $arr[0];?>)">删除</a></td>
			</tr>
			<?php }?>
			<tr><!--mysqli_num_rows($query)总记录数-->
				<td colspan="5" class='pagelist' bgcolor="white">

             
				      	<a href='?upage=$previous'>上一页</a>
				    
				      <a href='?upage=$i' class='pagelist'>i</a>
				      <a href='?upage=$next'>下一页</a>
				      </td>
				<td  bgcolor="white">总数量:条</td>
			</tr>
		</table>
	</fieldset>
</body>
</html>