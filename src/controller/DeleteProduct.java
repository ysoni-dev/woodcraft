package controller;

import java.io.IOException;
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
import com.niit.model.Product;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd = null;
		 
		 String st = request.getParameter("productId");
		 int id = Integer.parseInt(st);
		 
		 ProductDao dao = new ProductDaoImpl();
		 
		 if(dao.deleteProduct(id))
		 {
			 
			 List<Product> pList = dao.getAllproduct();
				if(pList != null)
				{
					request.setAttribute("list", pList);
					rd=request.getRequestDispatcher("poutput.jsp");
					rd.forward(request, response);
				}
				else {
					rd=request.getRequestDispatcher("AProduct.jsp");
					rd.forward(request, response);
				}
			 
//			 rd = request.getRequestDispatcher("deletepro.jsp");
//			 rd.forward(request, response);
		 }
		 else
		 {
			 rd = request.getRequestDispatcher("coutput.jsp");
			 rd.forward(request, response);
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

