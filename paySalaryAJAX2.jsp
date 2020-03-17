<%@page import="java.sql.*"%>
<%
    String payee = request.getParameter("payee");
    String amount = request.getParameter("amount");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "insert into salary(email, amount) values('"+payee+"', "+amount+")";
        if(st.executeUpdate(query) > 0)
            out.print("Paid");
    }
    catch(Exception e)
    {e.getMessage();}
%>