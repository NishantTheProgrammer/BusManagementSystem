<%@page import="java.sql.*"%>
<%
    String item = request.getParameter("item");
    String value = request.getParameter("value");
    String email = (String)session.getAttribute("email");
    String role = (String)session.getAttribute("role");

    Connection con = null;
    Statement st = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "update "+role+" set "+item+"='"+value+"' where email='"+email+"'";
        if(st.executeUpdate(query) > 0)
        {
            out.print("Profile Updated");
            if(item.equals("name"))
            {
                session.setAttribute("name", value);
            }
        }
        else
            out.print("Error");
    }
    catch(Exception e){out.print(e.getMessage());}   
%>
