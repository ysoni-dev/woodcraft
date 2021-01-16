package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.model.Fcart;

/**
 * Servlet implementation class Display_cart
 */
@WebServlet("/Display_cart")
public class Display_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Display_cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession();
		Object obj=hs.getAttribute("ct");
		ArrayList<Fcart> al;
		if(obj==null) {
			System.out.println("null data found");
			al=new ArrayList<>();
		}else {
			//System.out.print("+++++++++++++++++++++++++++++\n"+al.size());
			al=(ArrayList<Fcart>) obj;
			System.out.print("+++++++++++++++++++++++++++++\n"+al.size());
			request.setAttribute("tc", al);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("extra.jsp");
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
