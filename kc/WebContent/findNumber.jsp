<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="main.java.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>findNumber</title>
</head>
	<body style="center">
	<div>
	<form method="post" action="">
	请输入您要查询的周边商品名称：
	<input type=text name="search" id="search"> 
	<input type=submit name="submit1" id="submit1">
	<br/><br/><br/>
	<table id = "order" style="width: 100%" border="1" >
	<tr>
	<td>商品编号：</td>
	<td>商品名称：</td>
	<td>库存：</td>
	<td>生产日期：</td>
	<td>保质期:</td>
	<td>商品价格：</td>
	</tr>
	<% request.setCharacterEncoding("UTF-8"); %>
	<% response.setContentType("text/html;charset=UTF-8"); %>	
	<% String gname = request.getParameter("search"); %>
	<% AdminWorkImplement admin = new AdminWorkImplement();	 %>
	<% ResultSet myrs = admin.goodFind(gname); %>

	<% while(myrs.next())
	{
		out.print("<tr>");
		out.print("<td>"+myrs.getString(1)+"</td>");
   	 	out.print("<td>"+myrs.getString(2)+"</td>");
    	out.print("<td>"+myrs.getString(3)+"</td>");
    	out.print("<td>"+myrs.getString(8)+"</td>");
    	out.print("<td>"+myrs.getString(9)+"</td>");
    	out.print("<td>"+myrs.getString(4)+"</td>"); 
    	out.print("</tr>");
	} 
	%>
	</table>


<br/>
<br/>


</form>
</div>

</body>
</html>