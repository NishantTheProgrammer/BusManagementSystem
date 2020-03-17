<%@page import="java.sql.*"%>
<%
    String email = (String)session.getAttribute("email");
    String routeNo = request.getParameter("routeNo");
    String standName = request.getParameter("standName");
    String busNo = request.getParameter("busNo");
    String description = request.getParameter("description");

    Connection con = null;
    Statement st = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "insert into report(routeNo, standName, busNo, description, submittedBy) values('"+routeNo+"', '"+standName+"', '"+busNo+"', '"+description+"', '"+email+"')";
        if(st.executeUpdate(query) > 0)
            out.print("Requested");
    }
    catch(Exception e){out.print(e.getMessage());}
%>