package nhahang.webmvc.controller.client;

import java.io.IOException;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import nhahang.webmvc.model.Boardnew;
import nhahang.webmvc.model.Product;
import nhahang.webmvc.service.BoardnewService;
import nhahang.webmvc.service.ProductService;
import nhahang.webmvc.service.impl.BoardnewServicesImpl;
import nhahang.webmvc.service.impl.ProductServiceImpl;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = { "/homepage" })
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	BoardnewService boardnewService = new BoardnewServicesImpl();
	DecimalFormat df = new DecimalFormat("#.000");

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Boardnew> boardnewList = boardnewService.getAll();
		req.setAttribute("boardnewlist", boardnewList);
		// Product Gà ta
		List<Product> product_gata = productService.getProductById(1);
		req.setAttribute("product_gata", product_gata);

		// Product Gà đen 
		List<Product> product_gaden = productService.getProductById(2);
		req.setAttribute("product_gaden", product_gaden);

		// Product Nộm salad
		List<Product> product_nomsalad = productService.getProductById(3);
		req.setAttribute("product_nomsalad", product_nomsalad);

		// Product Rau theo mùa
		List<Product> product_rau = productService.getProductById(4);
		req.setAttribute("product_rau", product_rau);

		// Product sup
		List<Product> product_sup = productService.getProductById(5);
		req.setAttribute("product_sup", product_sup);

		// Product khai vi
		List<Product> product_khaivi = productService.getProductById(6);
		req.setAttribute("product_khaivi", product_khaivi);
		
		// Product Nuoc uong
		List<Product> product_nuocuong = productService.getProductById(7);
		req.setAttribute("product_nuocuong", product_nuocuong);

		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);
		// Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for (Product product : productList) {
			Product product1 = productService.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(
					Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount()) / 100)))));
			productsList1.add(product1);

		}

		req.setAttribute("productlist1", productsList1);

		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}
}
