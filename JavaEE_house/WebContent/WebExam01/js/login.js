function checkname(){

 	var username = document.getElementById("username").value;	
 	var tipUserName = document.getElementById("tipUserName").innerHTML;

 	if(username == "" ){
 		document.getElementById("tipUserName").innerHTML = "请输入用户名";
 	}else{
 		document.getElementById("tipUserName").innerHTML = "";
 	}

 }
function checkpasswd(){
	var passwd = document.getElementById("passwd").value;
	var tipPassWord = document.getElementById("tipPassWord").innerHTML;
	 	if(passwd ==""){
	 		document.getElementById("tipPassWord").innerHTML = "请输入密码";
 	}else{
 		document.getElementById("tipPassWord").innerHTML = "";
 	}
}

function checkUserId(){
	var userId = document.getElementById("userId").value;
	var tipPassWord = document.getElementById("tipUserId").innerHTML;
	 	if(userId ==""){
	 		document.getElementById("tipUserId").innerHTML = "请输入有效证件";
 	}else{
 		document.getElementById("tipUserId").innerHTML = "";
 	}
}

function checkPhone(){
	var phone = document.getElementById("phone").value;
	var tipPassWord = document.getElementById("tipPhone").innerHTML;
	 	if(phone ==""){
	 		document.getElementById("tipPhone").innerHTML = "请输入联系方式";
 	}else{
 		document.getElementById("tipPhone").innerHTML = "";
 	}
}


function checkLogin(){
	var username = document.getElementById("username").value;
	var passwd  = document.getElementById("passwd").value;

	if(username==""||passwd==""){
		alert("信息填写不完整");
		return false;
	}
}

function checkRegister(){
	var username = document.getElementById("username").value;
	var passwd  = document.getElementById("passwd").value;
	var userId = document.getElementById("userId").value;
	var phone = document.getElementById("phone").value;
	if(username==""||passwd==""||userId==""||phone==""){
		alert("信息填写不完整");
		return false;
	}
}