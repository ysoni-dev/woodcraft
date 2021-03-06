package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Dao.CustomerDao;
import com.niit.Dao.CustomerDaoImpl;
import com.niit.model.CustomerDetails;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String e = request.getParameter("email");
		String p = request.getParameter("password");
		
		CustomerDetails cd = new CustomerDetails();
		cd.setEmail(e);
		cd.setPassword(p);
		
		CustomerDao cdao = new CustomerDaoImpl();
		RequestDispatcher rd = null;
		
		HttpSession hs=request.getSession();
		hs.setAttribute("tt", cd);
		
		if(cdao.validate(e, p))
		{
			List<CustomerDetails> cdd = cdao.getUsersByEmail(e);
			cd=cdd.get(0);
			String adminroll=cd.getRoll();
		if(adminroll.equalsIgnoreCase("admin")){
				System.out.println("\n "+cd.getRoll()+" found");
			rd=request.getRequestDispatcher("Admin.jsp");
				rd.forward(request, response);
				
		}else {
		rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		}
		else
		{
			rd=request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
			
			
		}
		
		
	//	Servlet OutputStream out();
		// out.println("<script type='text/javascript'>");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/javascript/loginerror.js");
//			out.println("</script>");		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}	
