package nhahang.webmvc.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;
import nhahang.webmvc.model.Admin;
import nhahang.webmvc.model.Catalog;
import nhahang.webmvc.service.AdminService;
import nhahang.webmvc.service.impl.AdminServicesImpl;

/**
 * Servlet implementation class CategoryListController
 */

public class AdminListController extends HttpServlet {
	/** 
	 *  
	 */
	private static final long serialVersionUID = 1L;
	AdminService adminService = new AdminServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Admin> adminList = adminService.getAll();
		req.setAttribute("adminlist", adminList);
		RequestDispatcher rd = req.getRequestDispatcher("/view/admin/admin.jsp");
		rd.forward(req, resp);
	}
}