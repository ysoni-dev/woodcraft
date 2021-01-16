package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.niit.Dao.CategoryDao;
import com.niit.Dao.CategoryDaoimpl;
import com.niit.Dao.ProductDao;
import com.niit.Dao.ProductDaoImpl;
import com.niit.model.Category;
import com.niit.model.Product;

/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*10,
maxRequestSize=1024*1024*50)
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
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
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		int qty = Integer.parseInt(request.getParameter("qty"));
		int price = Integer.parseInt(request.getParameter("price"));
		String category = request.getParameter("category"); 
		
		System.out.println("category data" +category);
		String image = "images/";
		
		
		
		
		int catId = Integer.parseInt(category);
		
		Product pro = new Product();
	

		Part part =request.getPart("image");
		InputStream fis=part.getInputStream();
		byte[] bytes = IOUtils.toByteArray(fis);
		String path =request.getServletContext().getRealPath("")+ "images";
		//String path = "D:\\Softwares\\NIIT\\ws\\woodcraft\\WebContent\\images"  ;
		String fileName = path+File.separator+name+".jpg";
		image = image.concat(name+".jpg");
	
		System.out.println(fileName);
		FileOutputStream fos =new FileOutputStream(fileName);
		fos.write(bytes);
		fos.close();
		
		
		pro.setName(name);
		pro.setDesc(desc);
		pro.setQty(qty);
		pro.setPrice(price);
		pro.setCatId(catId);
		pro.setImg(image);
		
		
		
		ProductDao pdao = new ProductDaoImpl();
		RequestDispatcher rd = null;
		if(pdao.addProduct(pro))
		{
			System.out.println("data added to"+ fileName);
			
			rd=request.getRequestDispatcher("GetProduct");
			rd.forward(request, response);
		}else 
		{
		response.getOutputStream().print("un expected error");;	
		}
	}

}
