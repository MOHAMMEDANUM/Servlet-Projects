package first_web_app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


@WebServlet("/save")
public class Save extends HttpServlet{
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		System.out.println(req.getParameter("id"));
		System.out.println(req.getParameter("name"));
		System.out.println(req.getParameter("email"));
		System.out.println(req.getParameter("phone"));
		System.out.println(req.getParameter("password"));
		System.out.println(req.getParameter("place"));
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String email=req.getParameter("email");
		String phone = req.getParameter("phone");
		String password=req.getParameter("password");
		String place = req.getParameter("place");

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection c= DriverManager.getConnection("jdbc:mysql://localhost:3306/first_web_app","root","root");
			
			PreparedStatement ps = c.prepareStatement("insert into user values(?,?,?,?,?,?)");
			
			ps.setString(1,id);
			ps.setString(2,name);	
			ps.setString(3,email);	
			ps.setString(4,phone);	
			ps.setString(5,password);	
			ps.setString(6,place);	
			
			int row= ps.executeUpdate();
			System.out.println(row + " : row updated");
			
			ps.close();
			c.close();	
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		req.setAttribute("id", id);
		req.setAttribute("name", name);
		req.setAttribute("email", email);
		req.setAttribute("phone", phone);
		req.setAttribute("password", password);
		req.setAttribute("place", place);		
		
		
		
		
		
		req.getRequestDispatcher("home.jsp").forward(req, res);
		
		
		
		
		
		
	}

}
