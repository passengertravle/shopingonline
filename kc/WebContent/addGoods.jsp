
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="main.java.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addGoods</title>
</head>
<body style="center">
<div>
	<form method="post" action="">
	请输入您要添加的周边商品信息：
	<input type=submit name="submit1" id="submit1">
	<br/><br/><br/>
	<table id = "order" style="width: 100%" border="1" >
	<tr>
	<td>商品名称*：
	<input type="text" name="gname" id="gname"></td>
	<td>库存*：
	<input type="text" name="gnumber" id="gnumber"></td>
	<td>生产日期*：
	<input type="text" name="gbirth" id="gbirth"></td>
	<td>保质期:
	<input type="text" name="gprotect" id="gprotect"></td>
	<td>商品初始价格*：
	<input type="text" name="gnormalprice" id="gnormalprice"></td>
	<td>商品成交价格：
	<input type="text" name="gfinalprice" id="gfinalprice"></td>
	<td>商品描述：
	<input type="text" name="gdescr" id="gdescr"></td>
	<td>商品图片:
	<input type="file" name"gpic" id="gpic"></td>
	</tr>
	<% request.setCharacterEncoding("UTF-8"); %>
	<% response.setContentType("text/html;charset=UTF-8"); %>	
	<% String gname = request.getParameter("gname"); %>
	<% String gnumber = request.getParameter("gnumber"); %>
	<% String gbirth = request.getParameter("gbirth"); %>
	<% String gprotect = request.getParameter("gprotect"); %>
	<% String gnormalprice = request.getParameter("gnormalprice"); %>
	<% String gfinalprice = request.getParameter("gfinalprice"); %>
	<% String gdescr = request.getParameter("gdescr"); %>
	<% String gpic = request.getParameter("gpic"); %>
	<% AdminWorkImplement admin = new AdminWorkImplement();	 %>
	<% admin.goodAdd(gname, gnumber, gnormalprice, gpic, gdescr, gbirth, gprotect); %>

	</table>


<br/>
<br/>


</form>
</div>


</body>
</html>