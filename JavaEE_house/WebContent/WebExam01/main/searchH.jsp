<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>



<input type="text" name="info" id="searchT" onclick="search_onfocus()" 		onblur="search_onblur()"/>
<input type="submit" value="搜索" class="searchB"/>
<input type="button" value="返回" class="back" onclick="back()"/>



<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="../css/back.css">
		<script type="text/javascript">
		function userDel(id){
			if(window.confirm("你确定删除吗？")){
				location.href="houseDel.jsp?hid="+id;
			}
		}
		function search_onfocus(){
		var search = document.getElementById("searchT");
		search.value ='';search.style.border = '1px solid blue';}
		function search_onblur(){
			var search = document.getElementById("searchT");
			search.style.border = '1px solid #b8b8b8';
		}

	</script>
	<style type="text/css">
	body{
		text-align:center;
	}
	table,tr{
		text-align:center;
	}
	form{
		margin-top:10px;
		margin-bottom:100px;
	}
	.searchB{
	padding:0;
	background-color: #3385ff;
	width:100px;
	height:40px;
	line-height:34px;
	color:white;
	border:0px;
	font-size:14px;
}
.back{
	padding:0;
	background-color: green;
	width:100px;
	height:40px;
	line-height:34px;
	color:white;
	border:1px solid #b8b8b8;
	font-size:14px;
	float:right;
}
#searchT{
	margin:0px;
	position: relative;
	width:300px;
	height:41px;
	margin-right:0px;
	border-right-width:0px;
	border-color:#b8b8b8;
}
	</style>
</head>
<body>
	<!--用户管理-->
	<fieldset id="manageUser">
		<legend>用户管理</legend>
		<table class="tableUser">
			<tr  style="height:40px" bgcolor="grey">
				<td>房屋地址</td>
				<td>建筑面积</td>
				<td>层楼</td>
				<td>租金</td>
				<td>区域</td>
				<td>房型</td>
				<td>朝向</td>
				<td>周围环境</td>
				<td>装修情况</td>
				<td>联系人</td>
				<td>联系电话</td>
				<td>出租情况</td>
			</tr>

				<td><?php echo $arr[1];?></td>
				<td><?php echo $arr[3];?></td>
				<td><?php echo $arr[4];?></td>
				<td><?php echo $arr[6];?></td>
				<td><?php echo $arr[2];?></td>
				<td><?php echo $arr[7];?></td>
				<td><?php echo $arr[5];?></td>
				<td><?php echo $arr[9];?></td>
				<td><?php echo $arr[10];?></td>
				<td><?php echo $arr[11];?></td>
				<td><?php echo $arr[12];?></td>
				<td><?php echo $arr[8];?></td>
			</tr>
			<?php }?>
			<tr><!--mysqli_num_rows($query)总记录数-->
				<td   colspan="11" class='pagelist' bgcolor="white">


				      	<a href='?info=$info&upage=$previous'>上一页</a>
                        <a href='?upage=$i' class='pagelist'>i</a>

				        <a href='?info=$info&upage=$next'>下一页</a>
				 </td>
				<td  border="0px" bgcolor="white">总数量:条</td>
			</tr>
		</table>
	</fieldset>
	<script type="text/javascript">
		function back(){
			location.href="../index.jsp";
		}
	</script>
</body>
</html>