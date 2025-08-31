<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

	<%@ include file="/views/common/topbar.jsp"%>

	<h2>Đăng nhập</h2>
	<c:if test="${alert != null}">
		<h3 class="alert alert-danger">${alert}</h3>
	</c:if>

	<form action="login" method="post">

		<section>
			<label class="input login-input">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
						type="text" placeholder="Tài khoản" name="username"
						class="form-control">
				</div>
			</label>
		</section>
		<section>
			<label class="input login-input">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
						type="password" placeholder="Mật khẩu" name="password"
						class="form-control">
				</div>
			</label>
		</section>
		<section>
			<label class="checkbox"> <input type="checkbox"
				name="remember" id="remember"> <i></i> Nhớ mật khẩu
			</label>
		</section>
		<section>
			<a href="${pageContext.request.contextPath}/forgot">Quên mật khẩu?</a>
		</section>
		<button type="submit" class="btn btn-primary">Đăng nhập</button>
	</form>
</body>
</html>