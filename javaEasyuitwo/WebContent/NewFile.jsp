<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
		//脚本方式创建datagrid
		$('#mytable').datagrid({    
		    url:'DataGridServlet', //请求路径
		    method:'post', //请求方式
		    fitColumns:true, //自动适应宽度
		    width:'100%',   //表格高度
		    height:'500px',  //表格宽度
		    title:'书本信息', //表格标题
		    singleSelect:true,//单选 true 多选 false
		    pagination:true,//加一个分页栏
		    pageList:[5,10,15,20,25],//给分页栏设置每页数量
		    columns:[[    
		        {field:'id',title:'书本id'},    
		        {field:'title',title:'书本标题'},    
		        {field:'author',title:'书本作者'},
		        {field:'publisher',title:'书本出版社'},
		        {field:'description',title:'书本描述'},
		        {field:'price',title:'书本价格'}
		    ]],
		    //添加工具栏
		    toolbar: [{
				iconCls: 'icon-add', //图片
				text:'添加', //按钮的文字
				handler: function(){
					//打开对话框
					$('#addStudentDialog').dialog('open');  
				}
			},'-',{
				iconCls: 'icon-edit',
				text:'修改',
				handler: function(){
					$('#addStudentDialog').dialog('open');
				}
			},'-',{
				iconCls: 'icon-remove',
				text:'删除',
				handler: function(){
					//选择要删除的行 没有选择 提示
					//确认删除 才去删
					//得到被选择的行
					var row = $("#mytable").datagrid("getSelected");
					if(row){
						//确认框
						$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
						    if (r){    
						          $.ajax({
						        	  type:'post',
						        	  url:'DeleteBookServlet',
						        	  data:'bookId='+row.id,
						        	  success:function(back){
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
							  		    			msg:'删除书本信息失败',
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
			}]

		});  
	});
	
	function submitForm(){
		$('#myForm').form('submit', {    
		    url:'AddBookServlet',    
		    onSubmit: function(){    
		    	//validate 验证 整个form表单
		    	var isValid = $(this).form('validate');
		    	return isValid;  //如果form表单验证通过，返回true
		    	                 //否则返回false
		    },    
		    success:function(data){    
		       if(data=="1"){
		    	   $.messager.show({
		    			title:'新增书本信息',
		    			msg:'新增书本信息成功',
		    			timeout:4000,
		    			showType:'slide'
		    		});
		    	   $('#addStudentDialog').dialog('close'); 
		       }else{
		    	   $.messager.show({
		    			title:'新增书本信息',
		    			msg:'新增书本信息失败',
		    			timeout:4000,
		    			showType:'slide'
		    		});
		       }
		        //刷新表格
		        $('#mytable').datagrid("reload");
		    }    
		}); 
	}
	function submitFormk(){
		$("#myForm").form('修改',{
			url:'',
			onSubmit:function(){
				var isValid=$(this).form('validate');
				return isValid;
			},
		success:function(data){
			if(data==1){
				$.messager.show({
	    			title:'修改书本信息',
	    			msg:'修改书本信息成功',
	    			timeout:4000,
	    			showType:'slide'
	    		});
				//修改后关闭窗口
				 $('#addStudentDialog').dialog('close'); 
			}else{
				$.messager.show({
	    			title:'修改书本信息',
	    			msg:'修改书本信息失败',
	    			timeout:4000,
	    			showType:'slide'
	    		});
			}
			
		}
		});
	}
	</script>
	
	
	
</head>
<body>
<table id=”” class="easyui-datagrid"title="学生信息"style="width:700px;height:250px" toolbar="#tb"
data-options="pagination:true,singleSelect:true,collapsible:true,
url:'TestPanelServlet',method:'get'">
<thead>
	<tr>
	<th data-options="field:'stuId',width:80">学生id</th>
<th data-options="field:'stuName',width:100">学生姓名</th>
<th data-options="field:'stuSex',width:80,align:'right'">学生性别</th>
<th data-options="field:'stuAge',width:80,align:'right'">学生年龄</th>
<th data-options="field:'stuPhone',width:250">学生电话</th>
</tr>
</thead>
</table>

 <table id="mytable"></table>
 <!-- closed="true"  文本框直接弹出页面填写是false -->
 <div id="addStudentDialog" closed="true"  class="easyui-dialog" title="新增书本信息" style="width:600px;height:500px;"   
        data-options="iconCls:'icon-save',resizable:false,modal:true">   
    <form id="myForm" method="post">
	书本标题：<input class="easyui-textbox" type="text" name="title" data-options="required:true"></input><br/>
	书本作者：<input class="easyui-textbox" type="text" name="author" data-options="required:true"></input><br/>
       书本出版社：<input class="easyui-textbox" type="text" name="publisher" data-options="required:true"></input><br/>
	书本描述：<input class="easyui-textbox" type="text" name="description" data-options="required:true"></input><br/>
        价格：<input class="easyui-numberbox" type="text" name="price" data-options="required:true"></input><br/>
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm();">Submit</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitFormk();">修改</a>
	</form>
    
    
    
      
</div> 


</body>
</html>