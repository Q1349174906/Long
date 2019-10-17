// JavaScript Document

/*function ShowDiv(show_div,bg_div){
	var buyGoodsId = $("input[name='buyGoodsId']").val();
	var buyGoodsNumber = $("input[name='buyGoodsNumber']").val();	
	if(buyGoodsNumber>0){
		$.ajax({
			type : 'post',
			url :  'CartServlet',
			data : 'buyGoodsId=' + buyGoodsId +'&'+'buyGoodsNumber='+buyGoodsNumber ,
			success : function(back) {
				if(back!=0){
					document.getElementById(show_div).style.display='block';
					document.getElementById(bg_div).style.display='block' ;
					var bgdiv = document.getElementById(bg_div);
					bgdiv.style.width = document.body.scrollWidth;
					// bgdiv.style.height = $(document).height();
					$("#"+bg_div).height($(document).height());		
				}else{
					alert("deal is failed");
				}																			 					
			}
		});
	}else {
		alert("you haven't add any Goods now,so deal is failed");
	}	
};

function CloseDiv(show_div,bg_div){
	document.getElementById(show_div).style.display='none';
	document.getElementById(bg_div).style.display='none';
};*/



function ShowDiv_1(show_div,bg_div){
	document.getElementById(show_div).style.display='block';
	document.getElementById(bg_div).style.display='block' ;
	var bgdiv = document.getElementById(bg_div);
	bgdiv.style.width = document.body.scrollWidth;
	// bgdiv.style.height = $(document).height();
	$("#"+bg_div).height($(document).height());
};
//�رյ�����
function CloseDiv_1(show_div,bg_div){
	document.getElementById(show_div).style.display='none';
	document.getElementById(bg_div).style.display='none';
};