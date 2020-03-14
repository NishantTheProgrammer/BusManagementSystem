<%@page import="java.sql.*" %>

<%

    String r = request.getParameter("routeNo");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select standNo, standName from routeStands where routeNo = '"+r+"';";
        rs = st.executeQuery(query);
        while(rs.next())
        {%>
            <p><%=rs.getInt("standNo") + "   "%><%=rs.getString("standName")%></p>
        <%}
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
