<%@page import="java.sql.*"%>
<%
    String applicationNo = request.getParameter("applicationNO");
    String email = (String)session.getAttribute("email");

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select status from leave_request where email = '"+email+"' and applicationNo=" + applicationNo;
        rs = st.executeQuery(query);
        if(rs.next())
            out.print(rs.getString("status"));
        else
            out.print("No Application Found");
    }
    catch(Exception e){out.print(e.getMessage());}
%>