import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SignUp extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String password = request.getParameter("password");
        String balance = null;
        String licenceNo = null;
        String experience = null;
        String joiningDate = null;

        if(role.equals("Passanger"))
        {
            balance = request.getParameter("walletBalance");
            session.setAttribute("tempBalance", balance);
        }
        if(role.equals("Driver"))
        {
            licenceNo = request.getParameter("licenceNo");
            experience = request.getParameter("experience");
            joiningDate = request.getParameter("joiningDate");
            session.setAttribute("tempLicenceNo", licenceNo);
            session.setAttribute("tempExperience", experience);
            session.setAttribute("tempJoiningDate", joiningDate);
        }
        if(role.equals("Conductor"))
        {
            joiningDate = request.getParameter("joiningDate");
            session.setAttribute("tempJoiningDate", joiningDate);
        }
        if(role.equals("Ticket Checker"))
        {
            joiningDate = request.getParameter("joiningDate");
            session.setAttribute("tempJoiningDate", joiningDate);
        }
        session.setAttribute("tempName", name);
        session.setAttribute("tempPhone", phone);
        session.setAttribute("tempEmail", email);
        session.setAttribute("tempRole", role);
        session.setAttribute("tempPassword", password);

        String to = request.getParameter("email");
        String otp=GenerateOTP.get();
        String subject = otp+" is your OTP for new account";
        String message =otp;
        String user = "knishant113@gmail.com"; //gmail user ID
        String pass = "xxxxxxx"; //gmail user password
        SendMail.sendForSignUP(to,subject, message, user, pass);
        request.setAttribute("otp", otp);
        request.getRequestDispatcher("confirmEmail.jsp").forward(request, response);
        response.sendRedirect("confirmEmail.jsp");
    }   
}