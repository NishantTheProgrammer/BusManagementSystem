<%@page import="java.sql.*"%>
<%
    String routeNo = request.getParameter("routeNo");
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select standName from routeStands WHERE routeNo = '" + routeNo + "'";
        rs = st.executeQuery(query);

    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
<option class="placeholder" value="" disabled selected style="color: rgb(214, 205, 205);">From</option>
<%
    for(int i =1 ; rs.next(); i++)
    {%>
        <option value="<%=i%>"><%=rs.getString("standName")%></option>
    <%}
%>