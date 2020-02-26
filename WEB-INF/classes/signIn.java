import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class signIn extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = (String)request.getParameter("id");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        if(id.equals("staff") && password.equals("1234"))
        {
            session.setAttribute("id", id);
            session.setAttribute("password", password);
            response.sendRedirect("home.jsp");
        }
        else if(id.equals("pass") && password.equals("1234"))
        {
            session.setAttribute("id", id);
            session.setAttribute("password", password);
            response.sendRedirect("home.jsp");
        }
        else if(id.equals("admin") && password.equals("1234"))
        {
            session.setAttribute("id", id);
            session.setAttribute("password", password);
            response.sendRedirect("home.jsp");
        }
        else
        {
            out.print("Sorry!, Id or password error!");
            response.sendRedirect("authentication.jsp");
        }

        
    }   
}