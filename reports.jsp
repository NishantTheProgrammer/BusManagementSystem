<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/policies.css">
    <link rel="icon" href="images/icon.png">
    <style>
        .policy
        {
            width: 95%;

        }
        .policy table
        {
            width: 100%;
        }
        .policy table tr
        {
            text-align: left;
        }
    </style>
    <title>Reports</title>
    
</head>
<body>
<%
if(session.getAttribute("email") == null || !session.getAttribute("role").equals("admin"))
{
    response.sendRedirect("authentication.jsp");
}
%>
<%@page import="java.sql.*"%>

    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include> 
        <div class="innerContainer">
            <h1>-- Reports --</h1>
            <p>We understand problems of our people<br>That's why most applications approved</p>
        </div>
        <div class="policy">   
            <h1>Latest Reports</h1>         
            <table>
                <tr>
                    <th>Report No</th>
                    <th>Route No</th>
                    <th>Bus No</th>
                    <th>Stand Name</th>
                    <th>Submitted By</th>
                    <th>Description</th>
                </tr>
                <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
                        st = con.createStatement();
                        String query = "select * from report order by reportNo desc";
                        rs = st.executeQuery(query);
                        while(rs.next())
                        {%>
                            <tr>
                                <td><%=rs.getInt("reportNo")%></td>
                                <td><%=rs.getString("routeNo")%></td>
                                <td><%=rs.getString("busNo")%></td>
                                <td><%=rs.getString("standName")%></td>
                                <td><%=rs.getString("submittedBy")%></td>
                                <td><%=rs.getString("description")%></td>
                            </tr>
                        <%}
                    }
                    catch(Exception e){out.print(e.getMessage());}
                %>
            </table>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>      
</body>
<script src="scripts/navPannel.js"></script>
</html>
