package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.niit.Dao.CustomerDao;
import com.niit.Dao.CustomerDaoImpl;
import com.niit.mail.MailService;
import com.niit.model.CustomerDetails;

/**
 * Servlet implementation class hibernateservlet
 */
@WebServlet("/hibernateservlet")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*50)

public class AddCustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCustomerDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();
		
		
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		
		
	






		
		
		CustomerDetails cd = new CustomerDetails();
		

		cd.setFirstname(firstname);
		cd.setLastname(lastname);
		cd.setEmail(email);
		cd.setPassword(password);
		cd.setAddress(address);
		cd.setAddress2(address2);
		cd.setCity(city);
		
		
		
		
		CustomerDao dao = new CustomerDaoImpl();
		RequestDispatcher rd = null;
		
		HttpSession hs=request.getSession();
		hs.setAttribute("tt", cd);
		if(dao.addcustomerDetails(cd))
		{
			System.out.println("data added");
			
				
				
				
				MailService.MailSending(email);
			
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
			System.out.println("there is something error pls fill the form again");
			rd=request.getRequestDispatcher("Registration.jsp");
			rd.include(request, response);
		}
	}
		
		
}
