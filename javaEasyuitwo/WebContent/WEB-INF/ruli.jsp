<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
	<title>Accordion Actions - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="themes/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
	$(function(){
		//创建一个脚本datagrid
		$('#mytable').datagrid({
			url:'',//脚本的请求路径
			method:'post',//请求方式
			fitColumns:true,//自动适应高度
			width:'100%',//宽度
			heght:'500px',//高度
			title:'标题',//表格标题
			singleSelect:true,//单行选中
			pagination:true,//分页栏
			pageList:[5,10,15,20],//给分页栏设值
			//内容  从脚本路径传过来的内容
			columns:[[
				{filed:'id',title:'书本id'},
				{field:'title',title:'书本标题'},
				{field:'author',author:'书本作者'},
				{field:'author',title:'书本作者'},
		        {field:'publisher',title:'书本出版社'},
		        {field:'description',title:'书本描述'},
		        {field:'price',title:'书本价格'}
			]],
			//添加工具栏
			toolbar[{
				iconCls:'icon-add',//图片
				text:'添加',//按钮的文字
				handler:function(){
				//打开对话框
				alert('帮助按钮');
				}
			},'-',{
				iconCls:'icon-edit',
				text:'修改',
				handler:function(){
					alert('帮助按钮');
				}
			},'-',{
				iconCls:'icon-remove',
				text:'删除',
				handler:function(){
					//选择要删除的行
					var row=$('#matable').datagrid("getSelected");
					if(row){
						//确认框
						$.messager.confirm('确认','您确认想要删除记录吗？',function(r){
							if(r){
								$.ajax({
									type:'post',
									url:'',
									date:'bookld'='+row.id',
									success:function(back){
										//验证框
										if(back=="1"){
											$.messager.show({
												title:'删除书本信息',
												msg:'删除书本信息成功',
												timeout:4000,
												showType:'slide'
											});
			
										}else{
											$.messager.show({
												title:'删除书本信息',
												mag:'删除书本信息失败',
												timeout:4000,
												showType:'slide'	
											});
										}
										//成功 刷新表格
										$('#mytable').datagrid("reload");
									}
								});
							}
						});
					}else{
						alert("请先选择要删除的行");
					}
				}
			},'-',{
				text:'书的标题:<input class="easyui-textbox" id="title" name="uid"/>',
				handler:function(){
				}
				},{
					text:'<input type="button" value="搜素"></input>',
					handler:function(){
						//根据title模糊查询
						$('#mytable').dategrid('load',{
							title:$("#title").val(),//title参数名称
						});
					}
			}
			}],
		});
	});
	//新增
	function submitForm(){
		//验证框  验证新增属性是否表单是否能通过
		$('#myForm').form('submit',{
			url:'';
			onSubmit:function(){
				//validate 验证整个form表单
				var isValid=$(this).form('validate');
				return isValid;//如果form 表单验证通过，返回true//否则返回false
				
			}
		})
	}
	</script>
</head>
<body>
<!-- 先创建一个表格  在头部写表格的大小 脚本 内容-->
<table id="mytable"></table>
</body>
</html>