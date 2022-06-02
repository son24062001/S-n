<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Liên hệ</title>
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
			<div class="well well-small">
			<div class="promote-baner blackish low-opacity">
									<div class="bg-image" style="background-image: url(images/resources/coming-soon-bg.jpg)"></div>
									<h3>Thông tin liên hệ</h3>
									<ul class="ads-links">
									<li><a href="https://www.facebook.com/caoanhminhh" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i> Facebook: Cao Anh Minh</a></li>
									<li><a href="https://www.facebook.com/nvdung1607" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i>Facebook: Dũng</a></li>
									<li><a href="facebook.com/UETTung" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i>Facebook: Thanh tùng</a></li>
									<li><a href="https://www.facebook.com/son.nguyencong.9634" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i>Facebook: Công Sơn</a></li>
									<li><a href="https://www.facebook.com/profile.php?id=100022016288106" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i>Facebook: Nguyễn Minh Ngọc</a></li>
									<li><a href="https://www.facebook.com/groups/1107801420052688/user/100078932885038/" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i>Thầy giáo đẹp troai</a></li>
									<li><a href="<c:url value="/trang-chu"/>" title="" data-toggle="tooltip" data-original-title="Create a new ad from scratch"><i class="fa fa-edit"></i> Quay lại Trang chủ</a></li>
									</ul>
								</div>
				
		
		
		
	
	
	
	
</div>
		</div>
	</div>
</body>
