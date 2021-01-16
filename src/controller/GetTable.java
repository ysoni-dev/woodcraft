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
 * Servlet implementation class GetTable
 */
@WebServlet("/GetTable")
public class GetTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTable() {
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
//GetTable?cat=3
		int cat=Integer.parseInt(request.getParameter("cat"));
		ProductDao cdao = new ProductDaoImpl();
		List<Product> pList = cdao.getproductbycategory(cat);
		if(pList != null)	
		{
			request.setAttribute("list", pList);
			if(cat==1) {
				rd=request.getRequestDispatcher("Sofa.jsp");
				rd.forward(request, response);
			}
			if(cat==2) {
				rd=request.getRequestDispatcher("chair.jsp");
				rd.forward(request, response);
			}
			if(cat==3) {
				rd=request.getRequestDispatcher("table.jsp");
				rd.forward(request, response);
			}
			if(cat==4) {
				rd=request.getRequestDispatcher("spritual.jsp");
				rd.forward(request, response);
			}
			if(cat==5) {
				rd=request.getRequestDispatcher("Wallart.jsp");
				rd.forward(request, response);
			}
			
			
			
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
