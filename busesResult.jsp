<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/leave.css">
    <link rel="icon" href="images/icon.png">
    <title>Buses Result</title>
    <style>
    .workspace form p
    {
        color: white;
        margin: .5vw;
        text-align: center;
        font-size: 1.5vw;
    }
    </style>
</head>
<body>
<%@page import="java.sql.*"%>
<%
    String source = request.getParameter("source");
    String destination = request.getParameter("destination");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select routeNo from routeStands where standName= '" + source + "' and routeNo in( select routeNo from routeStands where standName = '" + destination + "');";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {}
%>
    <jsp:include page="navigationPannel.jsp"></jsp:include>

    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form action="temp.jsp">
                <%
                if(rs.next())
                {
                    rs.previous();
                    %>
                    <h1>Buses Result</h1>
                <%}
                else
                {%>
                    <h1>No Bus Found</h1>   
                <%}
                %>
                <div class="result" style="max-height: 20vw;; overflow-y: scroll;">
                    <%
                        while(rs.next())
                        {%>
                            <p><%=rs.getString("routeNo")%></p>
                        <%}
                    %>
                </div>

            </form>
        </div>
    </div>
    <div class="container" style="margin-top: 4vw;">
        <div class="workspace" id="standList" style="height: auto; color: white;padding-top: 0.5vw; padding-bottom: 0.5vw; opacity: 0;">
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
</html>