 $(function(){
	 $("pass1").keyup(function(){
		 var pass1 = $("pass1").val();
	 });
	 $("pass2").keyup(function(){
		 var pass1 = $("pass1").val();
	 });
	 if(pass1 == null || pass2 == null){
		    $('p').hide();
	 }else if(pass1 != pass2){
		$('p').text("两次密码不一致").show();	   
		$('sub').attr('disabled','true');
	 }
	 
 } );
	/*
	var pw1 = document.getElementsByTagName("input")[1].value;
	var pw2 = document.getElementsByTagName("input")[2].value;
	var p = document.getElementsByTagName("p")[0];
	if(pw1.length == pw2.length){
		if(pw1 == null || pw2 == null){
	    	p.style.visibility = "hidden";
	    }else if(pw1 != pw2){
	    	p.innerHTML="涓ゆ瀵嗙爜涓嶄竴鑷淬�";
			p.style.visibility = "visible";
			document.getElementById("sub").disabled=true;
		}else{
			p.style.visibility = "hidden";
			document.getElementById("sub").disabled=false;
		}
    }*/

 function nopoint(){
		var pw = document.getElementsByTagName("input")[0].value;
		var p1 = document.getElementsByTagName("p")[0];
		if(pw == null){
			p1.style.visibility = "hidden";
		}else if(pw.length == "0"){	
			p1.innerHTML="用户名不能为空";
			p1.style.visibility = "visible";
			document.getElementById("sub").disabled=true;
		}else if(pw.length != "0"){
			p1.style.visibility = "hidden";
			document.getElementById("sub").disabled=false;
		}
}
