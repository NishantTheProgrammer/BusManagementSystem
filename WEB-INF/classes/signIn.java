import java.io.*;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.*;

public class signIn extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = (String)request.getParameter("id");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            String query = "select email, name, password, profilePic, 'admin' as tablename from admin where email='"+id+"' and password='"+password+"' union select email, name, password, profilePic, 'passanger' as tablename from passanger where email='"+id+"' and password='"+password+"' union select email, name, password, profilePic, 'driver' as tablename from driver where email='"+id+"' and password='"+password+"' union select email, name, password, profilePic, 'conductor' as tablename from conductor where email='"+id+"' and password='"+password+"' union select email, name, password, profilePic, 'ticketchecker' as tablename from ticketchecker where email='"+id+"' and password='"+password+"';";
            rs = st.executeQuery(query);
   
            if(rs.next())
            {
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("name", rs.getString("name"));
                session.setAttribute("role", rs.getString("tablename"));
                session.setAttribute("profilePic", rs.getString("profilePic"));
                response.sendRedirect("home.jsp");
            }
            else
            {
                out.print("Sorry!, Id or password error!");
                response.sendRedirect("authentication.jsp");
            }     
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }





    }   
}