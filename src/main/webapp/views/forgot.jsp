<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
</head>
<body>
	<h2>Quên mật khẩu</h2>
	<c:if test="${alert != null}">
		<p style="color: red;">${alert}</p>
	</c:if>
	<form action="forgot" method="post">
		<label>Nhập email của bạn:</label> <input type="email" name="email"
			required>
		<button type="submit">Gửi</button>
	</form>
</body>
</html>