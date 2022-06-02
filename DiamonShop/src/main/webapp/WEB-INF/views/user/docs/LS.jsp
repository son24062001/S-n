<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Lịch sử mua hàng</title>
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

					<li><a class="totalInCart" href="cart.html"><strong>Đã
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
				<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Mã đơn hàng</th>
							<th>Người đặt</th>
							<th>Số điện thoại</th>
							<th>Địa chỉ</th>
							<th>Mã Sản phẩm</th>
							<th>Số lượng</th>
							<th>Giá</th>
							<th>Ghi chú</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ bills }">
							<tr>
								<td>${ item.id }</td>
								<td>${ item.display_name }</td>
								<td>${ item.phone }</td>
								<td>${ item.address }</td>
								<td><a
									href="<c:url value="/chi-tiet-san-pham/${ item.id_product }"/>"
									class="shopBtn">${ item.id_product }</a></td>

								<td>${ item.quanty }</td>
								<td>${ item.total }</td>
								<td>${ item.note }</td>
							</tr>
							</td>

							</tr>
						</c:forEach>

					</tbody>
				</table>
				<br />








			</div>
		</div>
	</div>
</body>
