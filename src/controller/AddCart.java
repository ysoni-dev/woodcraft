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
 * Servlet implementation class AddCart
 */
@WebServlet("/AddCart")
public class AddCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCart() {
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
		int price= Integer.parseInt(request.getParameter("price"));
		String image = request.getParameter("img");
		Fcart dc=new Fcart(data, price, 1, image);
		al.add(dc);
		hs.setAttribute("ct", al);

		response.sendRedirect("Display_cart");
	
		response.getWriter().append("Served at: ").append(data +" " + price);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
