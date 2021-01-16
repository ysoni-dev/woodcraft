package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.Dao.CategoryDao;
import com.niit.Dao.CategoryDaoimpl;
import com.niit.Dao.ProductDao;
import com.niit.Dao.ProductDaoImpl;
import com.niit.model.Category;
import com.niit.model.Product;

/**
 * Servlet implementation class GetProduct
 */
@WebServlet("/GetProduct")
public class GetProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = null;
		
		ProductDao cdao = new ProductDaoImpl();
		List<Product> pList = cdao.getAllproduct();
		if(pList != null)	
		{
			request.setAttribute("list", pList);
			rd=request.getRequestDispatcher("poutput.jsp");
			rd.forward(request, response);
		}
		else {
			rd=request.getRequestDispatcher("Registration.jsp");
			rd.forward(request, response);
		}

	}protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}



