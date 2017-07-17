
function abc(){
	var sum = 0;
	var input = document.getElementsByClassName("one");
	var span = document.getElementsByTagName("span")[0];
	for(var j = 0;j<input.length;j++){
		if(input[j].checked){
			var a = parseFloat(document.getElementsByTagName("td")[6*(j+1)-1].innerHTML);
			sum = parseInt(sum + a);
			span.innerHTML = sum;
		}else{
			span.innerHTML = sum;
		}
	}
	}