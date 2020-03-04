import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SignUp extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("email");
        String otp=GenerateOTP.get();
        String subject = otp+" is your OTP for new account";
        String message =otp;
        String user = "knishant113@gmail.com"; //gmail user ID
        String pass = "xxxxxxxx"; //gmail user password
        SendMail.sendForSignUP(to,subject, message, user, pass);
        request.setAttribute("otp", otp);
        request.getRequestDispatcher("confirmEmail.jsp").forward(request, response);
        response.sendRedirect("confirmEmail.jsp");
    }   
}