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
import com.niit.model.Category;

/**
 * Servlet implementation class UpdateCategory
 */
@WebServlet("/UpdateCategory")
public class UpdateCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCategory() {
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
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		
		CategoryDao cdao = new CategoryDaoimpl();
		int dataid = Integer.parseInt(id.trim());
		
		Category cat = new Category();
		cat.setCatId(dataid);
		cat.setCatName(name);
		cat.setCatDesc(desc);
		
		if(cdao.UpdateCategory(cat));
		{
			List<Category> categoryList = cdao.getAllCategory();
			 if(categoryList != null)
				{
					request.setAttribute("list", categoryList);
					rd=request.getRequestDispatcher("categorydata.jsp");
					rd.forward(request, response);
				}
				else {
					rd=request.getRequestDispatcher("dashboard.jsp");
					rd.forward(request, response);
				}
			 
//			 rd = request.getRequestDispatcher("success.jsp");
//			 rd.forward(request, response);
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
