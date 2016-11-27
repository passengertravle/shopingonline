<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http//fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>

</head>
<body>
       <div class="header-top">
			<div class="wrap"> 
			  <div class="header-top-left">		  	   
   				    <div class="clear"></div>
   			 </div>
			  <div class="cssmenu">
				<ul>
				<li>
				    <% String username = (String) session.getAttribute("unickname"); %>
				    <% if( username==null ) 
				    {
				    	out.write("欢迎您,请登录！");
				    	out.write("<li><a href=\"login.html\">登录</a></li> |");
				    } 
				     else 
				     {
				    	 out.write("<li> 欢迎！"+username+"！"+"</li>"+"<li><a href=\"LoginoutServlet\">注销</a></li>");
				    	 }
				     %>
				    </li>
				
					<li class="active"><a href="order.jsp">账户</a></li> |
					<li><a href="checkout.html">购物车</a></li> 
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		</div>
 			<div class="header-bottom">
	    <div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
				</div>
				<div class="menu">
	            <ul class="megamenu skyblue">
			<li class="active grid"><a href="index.jsp">主页</a></li>
			<li><a class="color4" href="#">宠物</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>选择分类</h4>
								<ul>
									<li><a href="womens.html">猫</a></li>
									<li><a href="womens.html">狗</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>狗分类</h4>
								<ul>
									<li><a href="womens.html">金毛</a></li>
									<li><a href="womens.html">松狮</a></li>
									<li><a href="womens.html">泰迪</a></li>
									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>猫分类</h4>
								<ul>
									<li><a href="womens.html">布偶猫</a></li>
									<li><a href="womens.html">孟买猫</a></li>
									<li><a href="womens.html">加拿大无毛猫</a></li>
									<li><a href="womens.html">英格兰折耳猫</a></li>
								
								</ul>	
							</div>												
						</div>
					  </div>
					</div>
				</li>				
				
				<li><a class="color6" href="other.html">宠物周边</a></li>
			</ul>
			</div>
		</div>
	   <div class="header-bottom-right">
         <div class="search">	  
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		 	 </div>
	  <div class="tag-list">
		<ul class="icon1 sub-icon1 profile_img">
			<li><a class="active-icon c2" href="#"> </a>
				<ul class="sub-icon1 list">
					<li><h3>No Products</h3><a href=""></a></li>
					<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
				</ul>
			</li>
		</ul>
	  </div>
    </div>
     <div class="clear"></div>
     </div>
	</div>




</body>
</html>