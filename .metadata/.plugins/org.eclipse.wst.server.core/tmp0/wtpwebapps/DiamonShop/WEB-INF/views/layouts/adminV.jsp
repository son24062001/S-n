<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="Master-layout"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css" />" rel="stylesheet" />
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css" />" rel="stylesheet" />
<!-- font awesome styles -->
<link href="<c:url value="/assets/user/font-awesome/css/font-awesome.css" />" rel="stylesheet">

<!-- Favicons -->
<link rel="shortcut icon" href="<c:url value="/assets/user/ico/favicon.ico" />">

</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
						<a href="#"><span class="icon-twitter"></span></a> <a href="#"><span
							class="icon-facebook"></span></a> <a href="#"><span
							class="icon-youtube"></span></a> <a href="#"><span
							class="icon-tumblr"></span></a>
					</div>
					<a class="active" href="<c:url value="/trang-chu"/>"> <span class="icon-home"></span>
						Home
					</a>
					<c:if test="${ not empty LoginInfoAdmin }">
						<a href="#"><span class="icon-user"></span> ${LoginInfoAdmin.display_name }</a>
						<a href="<c:url value="log-out"/>"><span class="icon-edit"></span> Đăng xuất </a>
					</c:if>
					<c:if test="${ empty LoginInfoAdmin }">
					 <a href="<c:url value="/check"/>"><span class="icon-edit"></span></a>
					</c:if>
					
					  
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		
		<%@include file="/WEB-INF/views/layouts/user/headAdmin.jsp" %>
		
		<decorator:body/>
		
		
		
	</div>
	<!-- /container -->
	<!-- 
Clients 
-->
<section class="our_client">
	<hr class="soften" />
	<h4 class="title cntr">
		<span class="text">Manufactures</span>
	</h4>
	<hr class="soften" />
	<div class="row">
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/1.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/2.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/3.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/4.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/5.png"/>"></a>
		</div>
		<div class="span2">
			<a href="#"><img alt=""
				src="<c:url value = "/assets/user/img/6.png"/>"></a>
		</div>
	</div>
</section>

<!--
Footer
-->
<footer class="footer">
	<div class="row-fluid">
		<div class="span2">
			<h5>Your Account</h5>
			<a href="#">YOUR ACCOUNT</a><br> <a href="#">PERSONAL
				INFORMATION</a><br> <a href="#">ADDRESSES</a><br> <a href="#">DISCOUNT</a><br>
			<a href="#">ORDER HISTORY</a><br>
		</div>
		<div class="span2">
			<h5>Iinformation</h5>
			<a href="contact.html">CONTACT</a><br> <a href="#">SITEMAP</a><br>
			<a href="#">LEGAL NOTICE</a><br> <a href="#">TERMS AND
				CONDITIONS</a><br> <a href="#">ABOUT US</a><br>
		</div>
		<div class="span2">
			<h5>Our Offer</h5>
			<a href="#">NEW PRODUCTS</a> <br> <a href="#">TOP SELLERS</a><br>
			<a href="#">SPECIALS</a><br> <a href="#">MANUFACTURERS</a><br>
			<a href="#">SUPPLIERS</a> <br />
		</div>
		<div class="span6">
			<h5>The standard chunk of Lorem</h5>
			The standard chunk of Lorem Ipsum used since the 1500s is reproduced
			below for those interested. Sections 1.10.32 and 1.10.33 from "de
			Finibus Bonorum et Malorum" by Cicero are also reproduced in their
			exact original form, accompanied by English versions from the 1914
			translation by H. Rackham.
		</div>
	</div>
</footer>

	<div class="copyright">
		<div class="container">
			<p class="pull-right">
				<a href="#"><img src="<c:url value="/assets/user/img/maestro.png"/>" alt="payment"></a>
				<a href="#"><img src="<c:url value="/assets/user/img/mc.png"/>" alt="payment"></a> <a
					href="#"><img src="<c:url value="/assets/user/img/pp.png"/>" alt="payment"></a> <a
					href="#"><img src="<c:url value="/assets/user/img/visa.png"/>" alt="payment"></a> <a
					href="#"><img src="<c:url value="/assets/user/img/disc.png"/>" alt="payment"></a>
			</p>
			<span>Copyright &copy; 2013<br> bootstrap ecommerce
				shopping template
			</span>
		</div>
	</div>
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src=" <c:url value="/assets/user/js/jquery.js" />"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
	<script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
	<script src="<c:url value="/assets/user/js/shop.js" /> "></script>
	<decorator:getProperty property="page.script"></decorator:getProperty>	
</body>
</html>