<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>menu</title>
<script type="text/javascript">
function setWindowSize(){ //iframe自动本窗口高度
	try{
	var thiswin = window.parent.document.getElementById(window.name);
	if(window.document.body.scrollWidth-thiswin.offsetWidth>6){
	document.body.style.overflowX="auto";
	thiswin.height=window.document.body.scrollHeight+20;
	thiswin.width=window.document.body.scrollWidth+20;
	}else{
	document.body.style.overflowX="hidden";
	thiswin.height=window.document.body.scrollHeight;
	thiswin.width=window.document.body.scrollWidth
	}
	}catch(e){ } 
	}
</script>
</head>
<body  onLoad="setWindowSize()" style="centre">
	<a href="uploadNumber.jsp" target="framcontent">增加商品库存</a>
	<a>修改商品库存</a>
	<a href="findNumber.jsp" target="framcontent">查询商品库存</a>
</body>
</html>