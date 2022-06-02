<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm thiết bị</title>
</head>
<body>
	<div class="span4">
		<div class="well">
			<h5>THÊM THIẾT BỊ</h5>

			<form:form action="addDevice" method="POST" modelAttribute="product">
				<div class="control-group">
					<label class="control-label" for="inputEmail">Email </label>
					<div class="controls">

						<form:input type="email" class="span3" path="id_product"
							placeholder="Mời nhập địa chỉ email" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">Mật khẩu</label>
					<div class="controls">

						<form:input type="password" class="span3" path="id_category"
							placeholder="Mời nhập mật khẩu" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputName">Họ và tên</label>
					<div class="controls">

						<form:input type="text" class="span3" path="sizes"
							placeholder="Mời nhập họ tên" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputAddress">Địa chỉ</label>
					<div class="controls">

						<form:input type="text" class="span3" path="name"
							placeholder="Mời nhập địa chỉ" />
					</div>
				</div>
				<div class="controls">
					<button type="submit" class="btn block">Đăng ký thành viên</button>
				</div>
			</form:form>
		</div>
	</div>

</body>