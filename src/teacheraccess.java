import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qwerty.user;

public class teacheraccess extends HttpServlet  
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {   
        try {          
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root",new Credentials().password);
            Statement ps = con.createStatement();
            ResultSet rs =ps.executeQuery("select * from applications");
            ArrayList<qwerty.user> al=new ArrayList<qwerty.user>();
            while(rs.next()) {
            	al.add(new user(
            			rs.getString(1),
            			rs.getString(2),
            			rs.getString(3),
            			rs.getString(4),
                    	rs.getString(5),
                    	rs.getString(6),
                    	rs.getString(7),
                    	rs.getString(8),
                    	rs.getString(9),
                    	rs.getString(10)
            			));
            	}
            RequestDispatcher rd=req.getRequestDispatcher("teacher.jsp");
            req.setAttribute("users",al);
            rd.forward(req,res);
            con.close();
        }
        catch(Exception e) {
           System.out.println("error");
        }
    }   

}
