function house(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/house.html');
	xhr.send(null);
	return false;
}


function client(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/client.html');
	xhr.send(null);
	return false;
}

function rent(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/rent.html');
	xhr.send(null);
	return false;
}

function checkIn(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/checkin.html');
	xhr.send(null);
	return false;
}

function link(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/link.html');
	xhr.send(null);
	return false;
}

function exitSystem(){
	var xhr = new  XMLHttpRequest();
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4){
			document.getElementById('content').innerHTML = xhr.responseText;
		}
	}
	xhr.open('get','main/exitsystem.html');
	xhr.send(null);
	return false;
}
