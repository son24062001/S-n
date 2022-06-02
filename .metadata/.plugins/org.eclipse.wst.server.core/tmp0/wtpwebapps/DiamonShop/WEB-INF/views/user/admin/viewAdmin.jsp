<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin người dùng</title>
</head>
<body>
	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Tài khoản</th>
                  <th>Mật khẩu</th>
                  <th>Tên hiển thị </th>
                  <th>Địa chỉ </th>
                 
                                 
				</tr>
              </thead>
              <tbody>
              	
				<c:forEach var="item" items="${ users }" >
					<tr>
	                  <td>${ item.id }</td>
	                  <td>${ item.user }</td>
	                  <td>${ item.password }</td>
	                  <td>${ item.display_name }</td>
	                  <td>${ item.address }</td>
	                  
	                 
	                  
	                  
	                </tr>
	                </td>
	                  
	                </tr>
				</c:forEach>
                	
				</tbody>
            </table><br/>
</body>
</html>