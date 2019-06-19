<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
	<title>房屋租赁网站 - 修改用户</title>
	<style type="text/css">
	body{
		text-align:center;
		margin:0 auto;

	}
	form{
		text-align:center;
		margin:0px auto;
		border:0px solid green;
	}

	table{
		margin:0px auto;
		text-align:center;
		width:700px;
	}
	table,td{
		border:1px solid black;
		border-collapse:collapse;
	}
	td{
		font-size:20px;
		height:50px;
	}
	#tdLeft{
		background-color:grey;
		text-align:right;
	}
	#tdRight{
		height:50px;
		width:480px;
	}
	input{
		height:100%;
		width:98%;
		border:0;
		font-size:20px;
	}
	#header{
		text-align:center;
		background-color: green;
		font-size:30px;
		height:60px;
	}

	#reload,#update{
		display:inline-block;
		width:60px;
		height:30px;
		background-color:rgb(56,139,255);
		color:white;
	}
	</style>
</head>
<body>

	<table cellpadding="0" cellspacing="0">
	    <form action="" method="post">
		<tr>
			<td colspan="2" id="header">修改一条留言信息</td>
		</tr>
		<tr>
			<td id="tdLeft">留言人：</td>
			<td id="tdRight"><input type="text" name="commenter" value="" disabled="disabled"/></td>
		</tr>
		<tr>
			<td id="tdLeft">留言内容：</td>
			<td id="tdRight"><input type="text" name="commentcontent" value=""/></td>
		</tr>

		<tr>
			<td colspan="2" id="tdLast">
				<input type="submit" value="修改" id="update"/>
				<input type="reset" value="重置" id="reload"/>
				<input type="hidden" name="id" value="<?php echo $arr[0];?>" />
			</td>
		</tr>
	   </form>
	</table>

</body>
</html>