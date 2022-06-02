<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lịch sử mua hàng</title>
</head>
<body>
	

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
							<td> ${ item.note }</td>
						</tr>
						</td>

						</tr>
					</c:forEach>

				</tbody>
			</table>
			<br />
			</div>
	
</body>
</html>