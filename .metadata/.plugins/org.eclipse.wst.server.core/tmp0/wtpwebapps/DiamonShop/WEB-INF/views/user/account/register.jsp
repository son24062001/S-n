<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký/ Đăng nhập</title>
</head>
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">

					<c:forEach var="item" items="${ categorys }">
						<li><a href='<c:url value="/san-pham/${ item.id }"/>'><span
								class="icon-circle-blank"></span> ${ item.name }</a></li>
						<li>
					</c:forEach>

					<li><a class="totalInCart" href="<c:url value="/gio-hang"/>"><strong>Đã
								mua <span class="badge badge-warning pull-right"
								style="line-height: 18px;"><fmt:formatNumber
										type="number" groupingUsed="true" value="${ TotalPriceCart }" />
									₫</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>ĐĂNG KÝ TÀI KHOẢN</h5>
						
						<form:form action="dang-ky" method = "POST" modelAttribute= "user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email
									</label>
								<div class="controls">
									
									<form:input type="email" class="span3" path="user" placeholder="Mời nhập địa chỉ email" />  
								</div>
							</div><div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									
									<form:input type="password" class="span3" path="password" placeholder="Mời nhập mật khẩu" />  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputName">Họ và tên</label>
								<div class="controls">
									
									<form:input type="text" class="span3" path="display_name" placeholder="Mời nhập họ tên" />  
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputAddress">Địa chỉ</label>
								<div class="controls">
									
									<form:input type="text" class="span3" path="address" placeholder="Mời nhập địa chỉ" />  
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Đăng ký thành viên</button>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập hệ thống</h5>
						<h1> ${ statusLogin }</h1>
						<form:form action="dang-nhap" method = "POST" modelAttribute= "user">  
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
								<form:input type="email" class="span3" path="user" placeholder="Mời nhập địa chỉ email" />  
									
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3" path="password" placeholder="Mời nhập mật khẩu" />  
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit"  class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
	
</body>

</html>