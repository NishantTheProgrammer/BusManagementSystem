<%@page import="java.sql.*"%>
<%
    String keyword = request.getParameter("keyword");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select distinct(standName) from routeStands where standName like '%"+keyword+"%' limit 4;";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
<%
    while(rs.next())
    {%>
        <p onmouseover="setFrom(this.innerText);"><%=rs.getString("standName")%></p>
    <%}
%>