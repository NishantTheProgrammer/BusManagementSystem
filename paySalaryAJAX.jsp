<%@page import="java.sql.*"%>
<%
    String payee = request.getParameter("payee");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select email from Driver where email like '%"+payee+"%' union select email from conductor where email like '%"+payee+"%' union select email from ticketchecker where email like '%"+payee+"%';";
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
        <p onmouseover="setPayee(this.innerText);"><%=rs.getString("email")%></p>
    <%}
%>