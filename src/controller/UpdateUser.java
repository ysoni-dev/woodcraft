package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.Dao.CustomerDao;
import com.niit.Dao.CustomerDaoImpl;
import com.niit.model.CustomerDetails;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		System.out.println("id" + id);
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
	




			

		CustomerDao dao = new CustomerDaoImpl();
		int dataid = Integer.parseInt(id.trim());
		
		CustomerDetails cd = new CustomerDetails();
		
		
		cd.setId(dataid);
		cd.setFirstname(firstname);
		cd.setLastname(lastname);
		cd.setEmail(email);
		cd.setPassword(password);
		cd.setAddress(address);
		cd.setAddress2(address2);
		cd.setCity(city);
	
		dao.updatecustomer(cd);
		
		rd = request.getRequestDispatcher("UserList.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
