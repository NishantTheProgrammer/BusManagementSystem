<%@page import="java.sql.*"%>
<%
    String applicationNo = request.getParameter("applicationNo");
    String status = request.getParameter("status");
    
    Connection con = null;
    Statement st = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "update leave_request set status='"+status+"' where applicationNo = " + applicationNo;
        st.executeUpdate(query);
    }
    catch(Exception e){out.print(e.getMessage());}
%>