package nhahang.webmvc.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nhahang.webmvc.model.Catalog;
import nhahang.webmvc.model.Product;
import nhahang.webmvc.service.CategoryService;
import nhahang.webmvc.service.ProductService;
import nhahang.webmvc.service.impl.CategoryServicesImpl;
import nhahang.webmvc.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class ProductListController
 */
public class ProductListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);
		RequestDispatcher rd = req.getRequestDispatcher("/view/admin/show-product.jsp");
		rd.forward(req, resp);
	}
}
