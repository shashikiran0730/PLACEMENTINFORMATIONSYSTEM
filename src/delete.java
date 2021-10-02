

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	delete() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String email = request.getParameter("emaildel");
	     String pass = request.getParameter("passdel");
	    	 PrintWriter out = response.getWriter();
	         if(Validate.checkUser(email, pass)) {
	         
	             try{  
	             	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root",new Credentials().password); 
	                 PreparedStatement ps=con.prepareStatement("delete from student where email like '"+email+"';");  
	                 
	                 ps.executeUpdate();
	                 con.close();
	                 response.sendRedirect("index.jsp");
	             }catch(Exception e){e.printStackTrace();}
	         }
	         else {
	         	out.print("incorrect");
	         }
	}
}