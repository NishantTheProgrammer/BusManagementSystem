<%@page import="java.sql.*"%>
<%
    String email = request.getParameter("email");
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select profilePic from admin where email='"+email+"' union select profilePic from passanger where email='"+email+"' union select profilePic from driver where email='"+email+"' union select profilePic from conductor where email='"+email+"' union select profilePic from ticketchecker where email='"+email+"'";
        rs = st.executeQuery(query);
        if(rs.next())
        {%>
            <div class="img" style="background-image: url('./images/userProfile/<%=rs.getString("profilePic")%>');"></div>
        <%}

    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>