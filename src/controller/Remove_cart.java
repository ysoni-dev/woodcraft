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
 * Servlet implementation class Remove_cart
 */
@WebServlet("/Remove_cart")
public class Remove_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Remove_cart() {
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
			al=new ArrayList<>();
		}else {
			al=(ArrayList<Fcart>) obj;
		}
		String data= request.getParameter("pname");
		
		response.getOutputStream().print(data+"<hr>");
		int x=0;
		for(Fcart fc:al) {
			response.getOutputStream().print(fc.getItem_name()+"<hr>");
			response.getOutputStream().print(fc.getItem_name().compareTo(data));
			if(fc.getItem_name().equals(data)){
				al.remove(x);
				response.getOutputStream().print(true);
				break;
			}x++;
		}  
		//remove only basis of name 
		hs.setAttribute("ct", al);
		RequestDispatcher rd = null;
		response.sendRedirect("Display_cart");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
