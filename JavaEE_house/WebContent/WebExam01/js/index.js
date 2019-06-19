function link_onfocus(){
		var link = document.getElementById("link");
		if (link.value =='请点击此处留言...'){link.value ='';}
}

function search_onfocus(){
		var search = document.getElementById("searchT");
		if (search.value =='关键字搜索...'){search.value ='';search.style.border = '1px solid blue';}
		
}

function add(){
	window.location.href="main/addHouse.jsp";
}


function update(){
	window.location.href="main/updateSuccess.jsp";
}



