import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CompareOTP extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String actualPassword = request.getParameter("actualPassword");
        String enteredPassword = request.getParameter("enteredPassword");

        if(actualPassword.equals(enteredPassword))
        {
            response.sendRedirect("createNewPassword.jsp");
        }
        else
        {
            response.sendRedirect("OTPnotMatched.jsp");
        }
    }   
}