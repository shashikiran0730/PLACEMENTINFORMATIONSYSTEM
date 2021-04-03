import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
      String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        if(email=="admin@gmail.com") {
        	 System.out.println("emial");
        }
        
        else {
        if(Validate.checkUser(email, pass))
        {
        	if(Validate.isTeacher(email)) {
        			response.sendRedirect("teacherverify.html");
        	}
        else {
        		
        		if(Validate.filled(email)) {
        			if(Validate.cat(email).equals("UG")){
        				response.sendRedirect("afterloginug.jsp");
        			}
        			else {
        				response.sendRedirect("afterloginpg.jsp");
        			}
        		}
        		else {
        			RequestDispatcher rs = request.getRequestDispatcher("apply.jsp");
        			request.setAttribute("email",email);
                    rs.forward(request, response);
        		}
        		
        	}
        }
        else {
        	out.println("incoorect");
			response.sendRedirect("Login.html");
		}
           
        }
    }
         
    }  