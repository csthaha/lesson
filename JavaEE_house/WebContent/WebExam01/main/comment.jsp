<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title></title>
		<link rel="stylesheet" type="text/css" href="../css/back.css">
	<script type="text/javascript">
		function commentDel(id){
			if(window.confirm("你确定删除吗？")){
				location.href="commentDel.jsp?id="+id;
			}
		}
	</script>
	<style type="text/css">
	html{
		overflow-x:hidden;
	}
	</style>
</head>
<body scroll="no">
       <!--留言管理-->
	<fieldset id="manageComment">
		<legend>留言管理</legend>
		<table class="tableComment">
			<tr bgcolor="grey">
				<td style="height:40px">编号</td>
				<td>留言人</td>
				<td>留言内容</td>
				<td>发布时间</td>
				<td bgColor="white">操作方式</td>
			</tr>


				<td class="linkcnt"></td>
				<td></td>
				<td></td>
				<td></td>
				<td bgcolor="white"><a href="#" onclick="commentDel(<?php echo $arr[0];?>)">删除</a></td>
			</tr>

			<tr bgcolor="white" >
				<td colspan="4" class='pagelist'>
				<a href='?page=$previous'>上一页</a>
				<a href='?page=$next'>下一页</a>
				<!-- --></td>
				<td  bgcolor="white">总数量:  条</td>
			</tr>
		</table>
	</fieldset>
</body>
</html>