// JavaScript Document


function addUpdate1(jia){		
	var c = jia.parent().find(".car_ipt").val();
	c=parseInt(c)+1;	
	jia.parent().find(".car_ipt").val(c);
	var buygoodsid =  jia.parent().find(".goodsid").val();
	$.ajax({
		type : 'post',
		url :  'CartServlet',
		data : 'buyGoodsId=' + buygoodsid + '&' + 'buyGoodsNumber=' + 1,
		success : function(data) {		
			var jsondata = $.parseJSON(data);
				for(var i in jsondata){
				if(jsondata[i]!=null){
					var goodsSubToTal = jsondata[i].subtotal;
					$("span[id='buySubTotal']").html('￥'+goodsSubToTal);
					window.location.href = "ShowCartServlet";
				}else{
					cosole.log("不操作");
				}			
			}																	
		}
	});
}

function jianUpdate1(jian){    
	var c = jian.parent().find(".car_ipt").val();
	if(c==1){    
		c=1;    
	}else{    
		c=parseInt(c)-1;    
		jian.parent().find(".car_ipt").val(c);
		var buygoodsid =  jian.parent().find(".goodsid").val();
		$.ajax({
			type : 'post',
			url :  'CartServlet',
			data : 'buyGoodsId=' + buygoodsid + '&' + 'buyGoodsNumber=' + (-1),
			success : function(data) {		
				var jsondata = $.parseJSON(data);
					for(var i in jsondata){
					if(jsondata[i]!=null){
						var goodsSubToTal = jsondata[i].subtotal;
						$("span[id='buySubTotal']").html('￥'+goodsSubToTal);
						window.location.href="ShowCartServlet";
					}else{
						cosole.log("不操作");
					}			
				}																	
			}
		});
	}
}    




/*function addUpdate(jia){		
	var c = jia.parent().find(".n_ipt").val();
	var buyGoodsName = 	$("p[id='buyGoodsName']").text();
	var buyGoodsType = 	$("ul[id='ul1'] li[class='checked']").text();
	var buyGoodsColor = $("ul[id='ul2'] li[class='checked']").text();
	c=parseInt(c)+1;
	$.ajax({
		type : 'post',
		url :  'CheckNumbsServlet',
		data : 'buyGoodsName=' + buyGoodsName +'&'+'buyGoodsNumber=' + c +'&'+ 'buyGoodsType='+buyGoodsType + '&' + 'buyGoodsColor=' + buyGoodsColor,
		success : function(data) {
			var jsondata = $.parseJSON(data);
			if(jsondata!=null){
				for(var i in jsondata){
					var goodsNumber = jsondata[i].goodsNumber;
					var b = c - goodsNumber;
					if(b>=0){
						c = goodsNumber;
						alert("该商品库存不够了");
						jia.parent().find(".n_ipt").val(c);
					}else{
						jia.parent().find(".n_ipt").val(c);
					}
				}
			}else{
				var goodsNumber = 0;
				var b = c - goodsNumber;
				if(b>=0){
					c = goodsNumber;
					jia.parent().find(".n_ipt").val(c);
				}else{
					jia.parent().find(".n_ipt").val(c);
				}
			}
															
		}
	});
	
}

function jianUpdate(jian){    
	var c = jian.parent().find(".n_ipt").val();		
	if(c==0){
		jian.parent().find(".n_ipt").val(0);
	}else{
		var c = parseInt(c)-1;
		jian.parent().find(".n_ipt").val(c);
	}																														
}  */  
