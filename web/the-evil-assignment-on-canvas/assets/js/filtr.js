window.onload = function(){
	var upload = document.getElementById("fileSelect");
	var errorMsg = document.getElementById("errorMsg");
	var uploadMsg = document.getElementById("uploadtext");
	upload.value="";
	upload.addEventListener("change",function(event){
		var file = this.files[0];
		if (file.type != "image/jpeg"){
			upload.value = "";
			uploadMsg.style = "display : none;";
			errorMsg.style="display : block;";
			error();
		} else{
			uploadMsg.innerHTML = "Chosen File: " + upload.value.split(/(\\|\/)/g).pop();
			uploadMsg.style = "display : block;";
			errorMsg.style="display : none;";
			success();
		}
	});
};
