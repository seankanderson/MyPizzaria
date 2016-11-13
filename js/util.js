function toggle(element) {
	
	var ele = document.getElementById(element+"Div");
	var link = document.getElementById(element);
	
	if(ele.style.display == "block") {
    	ele.style.display = "none";
		//link.setAttribute("class","ui-btn ui-shadow ui-btn-corner-all ui-btn-icon-notext ui-btn-up-c");
		link.setAttribute("data-icon","plus");
		$('#'+element).children().eq(0).children().eq(1).attr('class','ui-icon ui-icon-plus ui-icon-shadow');

  	}
	else {
		ele.style.display = "block";
		//link.setAttribute("class","ui-btn ui-shadow ui-btn-corner-all ui-btn-icon-notext ui-btn-up-c");
		link.setAttribute("data-icon","minus");
		$('#'+element).children().eq(0).children().eq(1).attr('class','ui-icon ui-icon-minus ui-icon-shadow');
	
	}
		
} 

