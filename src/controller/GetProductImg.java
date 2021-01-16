package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.Dao.ProductDao;
import com.niit.Dao.ProductDaoImpl;
import com.niit.model.Product;

/**
 * Servlet implementation class GetProductImg
 */
@WebServlet("/GetProductImg")
public class GetProductImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetProductImg() {
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
		
		ProductDao cdao = new ProductDaoImpl();
		List<Product> pList = cdao.getAllproduct();
		if(pList != null)	
		{
			if(pList != null) 
				request.setAttribute("list", pList);
				rd=request.getRequestDispatcher("Sofa.jsp");
				rd.forward(request, response);
			}
			
		
		else {
			rd=request.getRequestDispatcher("Registration.jsp");
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
