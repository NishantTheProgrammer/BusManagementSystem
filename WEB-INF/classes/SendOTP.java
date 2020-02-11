import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SendOTP extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("email");
        String subject = "OTP";
        String otp=GenerateOTP.get();
        String message =  "Shivaji Bus OTP: "+otp;
        String user = "knishant113@gmail.com";
        String pass = "xxxxxxxx";
        SendMail.send(to,subject, message, user, pass);
        request.setAttribute("otp", otp);
        request.getRequestDispatcher("EnterOTP.jsp").forward(request, response);
        response.sendRedirect("EnterOTP.jsp");
    }   
}