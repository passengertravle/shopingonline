<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="main.java.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateGoods</title>
</head>
<body  style="center">
	<div>
	<form method="post" action="">
	请输入您要修改的周边商品属性：
	<input type=submit name="submit1" id="submit1">
	<br/><br/><br/>
	<table id = "order" style="width: 100%" border="1" >
	<tr>
	<td>商品编号：<input type="text" name="gid" id="gid"></td>
	<td>商品名称：<input type="text" name="gname" id="gname"></td>
	<td>库存：<input type="text" name="gnumber" id="gnumber"></td>
	<td>生产日期：<input type="text" name="gbirth" id="gbirth"></td>
	<td>保质期:<input type="text" name="gprotect" id="gprotect"></td>
	<td>商品价格：<input type="text" name="gprice" id="gprice"></td>
	</tr>
	<% request.setCharacterEncoding("UTF-8"); %>
	<% response.setContentType("text/html;charset=UTF-8"); %>	
	<% String gid = request.getParameter("gid"); %>
	<% String gname = request.getParameter("gname"); %>
	<% String gnumber = request.getParameter("gnumber"); %>
	<% String gbirth = request.getParameter("gbirth"); %>
	<% String gprotect = request.getParameter("gprotect"); %>
	<% String gprice = request.getParameter("gprice"); %>
	<% AdminWorkImplement admin = new AdminWorkImplement();	 %>
	<% if(gnumber!=null)%>
	<% admin.goodModify(gid,"gNumber",gnumber); %>
	<% if(gbirth!=null)%>
	<% admin.goodModify(gid,"gnormalBirth",gbirth); %>
	<% if(gprotect!=null)%>
	<% admin.goodModify(gid,"gProtect",gprotect); %>
	<% if(gprice!=null)%>
	<% admin.goodModify(gid,"gPrice",gprice); %>


	</table>


<br/>
<br/>


</form>
</div>


</body>
</html>