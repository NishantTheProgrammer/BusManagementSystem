<%@page import="java.sql.*"%>
<%
    String reason = request.getParameter("reason");
    String type = request.getParameter("type");
    String date_from = request.getParameter("from");
    String date_to = request.getParameter("to");
    String address = request.getParameter("tempAddress");
    String email = (String)session.getAttribute("email");

    Connection con = null;
    Statement st = null;

    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "insert into leave_request(reason, type, date_from, date_to, address, email, status) values('"+reason+"', '"+type+"', '"+date_from+"', '"+date_to+"', '"+address+"', '"+email+"', 'pending');";
        st.executeUpdate(query);
        query = "select applicationNo from leave_request where email = '"+email+"' order by applicationNo desc limit 1";
        rs = st.executeQuery(query);
        if(rs.next())
            out.print("Application no: " + rs.getInt("applicationNo"));
    }
    catch(Exception e){out.print(e.getMessage());}
%>