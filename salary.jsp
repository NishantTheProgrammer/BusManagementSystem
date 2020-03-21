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
    <title>Salary</title>
    
</head>
<body>
    <%
    if(session.getAttribute("email") == null)
    {
        response.sendRedirect("authentication.jsp");
    }
    else if(session.getAttribute("role").equals("admin"))
    {
        response.sendRedirect("authentication.jsp");
    }
    else if(session.getAttribute("role").equals("passanger"))
    {
        response.sendRedirect("authentication.jsp");
    }
    %>    
<%@page import="java.sql.*"%>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include> 
        <div class="innerContainer">
            <h1>-- Salary --</h1>
            <p>There is a deeper satisfaction if you earn from your own<br> work than relying on corruptible ways of amassing riches.</p>
        </div>
        <div class="policy">   
            <h1 style="text-transform: capitalize;">${name}</h1>         
            <table>
                <tr>
                    <th>Transaction Id</th>
                    <th>Amount</th>
                    <th>Date</th>
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
                    String query = "select transactionNo, amount, date from salary where email='"+session.getAttribute("email")+"'";
                    rs = st.executeQuery(query);
                    while(rs.next())
                    {%>
                        <tr>
                            <tr>
                                <td><%=rs.getInt("transactionNo")%></td>
                                <td><%=rs.getInt("amount")%></td>
                                <td><%=rs.getString("date")%></td>
                            </tr>
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
