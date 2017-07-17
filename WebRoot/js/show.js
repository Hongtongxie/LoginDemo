window.onload=function(){
   var name = document.getElementsByTagName("h2")[0];
   var price = parseInt(document.getElementsByTagName("strong")[0]);
   var colors = document.getElementsByName("color");
   var sizes = document.getElementsByName("size");
   var number = document.getElementsByName("number")[0];
   var sub = document.getElementById("sub");
   var add = document.getElementById("add");
   var join = document.getElementsByClassName("join")[0];
   var table = document.getElementById("tab");
   var color = null;
   var size = null;
   for(var i = 0;i<colors.length;i++){
      if(colors[i].checked){
	     color = colors[i].value;
	  }
   }
   
   for(var i = 0;i<sizes.length;i++){
      if(sizes[i].checked){
	     size = sizes[i].value;
	  }
   }
   sub.onclick=function(){
	   if(number.value != 1){
          number.value-=1;
	   }
   }
   add.onclick=function(){
       number.value++;
   }
  
}
$(function(){
	if($(".name").text() == 'null'){
		$(".name").hide();
		$(".car").hide();
	}
})

