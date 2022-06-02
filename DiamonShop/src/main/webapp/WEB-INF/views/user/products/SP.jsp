<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
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
	
	<c:forEach var="item" items = "${ products }">
	<div class="row-fluid">	
		<div class="span2">
			<img src="<c:url value="${ item.img }"/>" alt="">
		</div>
		<div class="span6">
			<h5>${ item.name } </h5>
			<p>
				${ item.title }
			</p>
		</div>
		<div class="span4 alignR">
		<form class="form-horizontal qtyFrm">
		<h3> <fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" /> ₫</h3>
		
		<div class="btn-group">
		  <a href="<c:url value="/AddCart/${ item.id_product }"/>" class="defaultBtn"><span class=" icon-shopping-cart"></span> Thêm </a>
		  <a href="<c:url value="/chi-tiet-san-pham/${ item.id_product }"/>" class="shopBtn">Xem chi tiết</a>
		 </div>
			</form>
		</div>
		</div>
	<hr class="soften">
	</c:forEach>  
		
		
		
	
	
	
	
</div>
		</div>
	</div>
</body>
