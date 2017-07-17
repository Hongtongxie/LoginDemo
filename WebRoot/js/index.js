$(function(){
	//榧犳爣鐐瑰嚮鍥炬爣鎹㈤〉闈�
	$(".anniu li").click(function(){
		var num = $(this).index();
		$(this).addClass("on").siblings().removeClass("on");
		$(".pil").animate({marginLeft:-700*num},"slow");
		$(".txt").text($(".pil li img").eq(num).attr("alt"));
		});
		//宸﹀彸闅愬舰妗�
	
		
	var a=0;
	$(".right").click(function(){
		a++;
		a = a%5;
		$(".pil").animate({marginLeft:-700*a},"slow");
		$(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
		$(".txt").text($(".pil li img").eq(a).attr("alt"));
	});
	$(".left").click(function(){
		a--;
		a=(a+5)%5;
		$(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
		$(".txt").text($(".pil li img").eq(a).attr("alt"));
		});
	var timer = setInterval(function(){
		a++;
		a=a%5;
		$(".pil").animate({marginLeft:-700*a},"slow");
		$(".anniu li").eq(a).addClass("on").siblings().removeClass("on");
		$(".txt").text($(".pil li img").eq(a).attr("alt"));
		},5000);
	if($(".name").text() == 'null'){
		$(".name").hide();
		$(".car").hide();
	}
	})
