

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reg
 */
@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html ");
        PrintWriter out = response.getWriter();
	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String plan=request.getParameter("teacher");
        System.out.println(name);
        if(email.length()>2) {
        	
        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/project","root","@9848396526At");

            PreparedStatement ps = con.prepareStatement
                        ("insert into student values(?,?,?,?)");

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, plan);
            int i = ps.executeUpdate();
            
            if(i > 0) {
            	 RequestDispatcher rs = request.getRequestDispatcher("Login.html");
                 rs.forward(request, response);
             
            }
        
        }
        catch(Exception se) {
            se.printStackTrace();
        }
        }
        else {
        	 RequestDispatcher rs = request.getRequestDispatcher("Reg.html");
             rs.forward(request, response);
        }
	}

}
