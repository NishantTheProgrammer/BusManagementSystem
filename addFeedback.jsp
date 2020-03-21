<%@page import="java.sql.*"%>
<%
    String ticketNo = request.getParameter("ticketNo");
    String feedback = request.getParameter("feedback");

    Connection con = null;
    Statement st = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "update ticket set feedback='"+feedback+"' where ticketNo='"+ticketNo+"'";
        if(st.executeUpdate(query) > 0)
        {
            out.print("Feeback Added!");
        }
        else
            out.print("Invalid Ticket No");
    }
    catch(Exception e){out.print(e.getMessage());}   
%>
