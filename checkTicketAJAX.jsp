<%@page import="java.sql.*"%>
<%
    String ticketNo = request.getParameter("ticketNo");
    try
    {
        Integer.parseInt(ticketNo);
    }
    catch(Exception e){out.print(-1);}
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select  timestampdiff(HOUR ,bookingTime, current_timestamp()) as remainValidity from ticket where ticketNo = " + ticketNo;
        rs = st.executeQuery(query);
        if(rs.next())
        {
            out.print(rs.getString("remainValidity"));
        }
        else
        {
            out.print(-1);
        }
    }
    catch(Exception e)
    {e.getMessage();}
%>