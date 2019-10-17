<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
</body>
</html>