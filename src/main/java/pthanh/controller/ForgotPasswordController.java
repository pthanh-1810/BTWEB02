package thanhtai.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import thanhtai.service.UserService;
import thanhtai.service.UserServiceImpl;
import thanhtai.model.User;

import java.io.IOException;

@WebServlet(urlPatterns = "/forgot")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// mở form nhập email
		req.getRequestDispatcher("/views/forgot.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String alertMsg = "";

		User user = userService.findByEmail(email);
		if (user == null) {
			alertMsg = "Email này chưa đăng ký!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/forgot.jsp").forward(req, resp);
		} else {
			// demo: reset mật khẩu thành "123456"
			String newPass = "123456";
			userService.updatePassword(user.getUserName(), newPass);
			alertMsg = "Mật khẩu mới của bạn là: " + newPass;
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		}
	}
}
