<%@page import="java.sql.*" %>

<%

    String r = request.getParameter("routeNo");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "SELECT source, destination FROM route WHERE routeNo = '" + r+ "'";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
    rs.next();
%>
<p><%=rs.getString("source")%></p>
<p><b>&#8597;</b></p>
<p><%=rs.getString("destination")%></p>