<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh toán</title>
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
				<li><a href="<c:url value="trang-chu"/>">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>
			<h3>Người dùng</h3>

			<div class="span4">
				<div class="well">


					<form:form action="checkout" method="post" modelAttribute="bills"
						class="form-horizontal">
						<h3>Thanh toán đơn hàng</h3>
						<div class="control-group">
							<label class="control-label">Họ tên <sup>*</sup></label>
							<div class="controls">

								<form:input type="text" placeholder=" Mời nhập họ tên"
									path="display_name" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email <sup>*</sup></label>
							<div class="controls">
								<form:input type="text" placeholder=" Mời nhập Email"
									path="user" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Điện thoại <sup>*</sup></label>
							<div class="controls">
								<form:input type="text" placeholder=" Mời nhập số điện thoại"
									path="phone" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Địa chỉ <sup>*</sup></label>
							<div class="controls">
								<form:textarea cols="30" rows="5" path="address" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Ghi chú <sup>*</sup></label>
							<div class="controls">
								<form:textarea cols="30" rows="5" path="note" />
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<input type="submit" onclick = "myFunction()" name="submitAccount" value="Thanh toán"
									class="exclusive shopBtn">
							</div>
						</div>

					</form:form>
				</div>
			</div>


		</div>

	</div>
	<script>
function myFunction() {
  alert("Thanh toán thành công");
}
</script>
</body>
</html>