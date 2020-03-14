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
    <title>Route</title>
    <style>
        #standList
        {
            max-height: 30vw;
            overflow-y: scroll;
        }
        .workspace p
        {
            font-size: 1.5vw;
            padding-top: 0.5vw;
            padding-bottom: 0.5vw;
            padding-left: 2vw;
        }

    </style>
</head>
<body>
<%@page import="java.sql.*" %>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "SELECT routeNo FROM route order by serialNo";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
    <jsp:include page="navigationPannel.jsp"></jsp:include>

    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form action="temp.jsp">
                <h1>Route</h1>
                <select name="routeNo" onchange="getResults(this.value); getStandList(this.value);">
                    <option value="" disabled selected >Bus No.</option>
                    <%
                    while(rs.next())
                    {%>
                        <option><%=rs.getString("routeNo")%></option>
                    <%}
                    %>
                </select>
                <div id="result"></div>
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
<script>
    function getResults(route)
    {
        var xmlhttp = new XMLHttpRequest();
        var param = "?routeNo=" +  route;
        param = param.replace("+", "%2b")
        
        xmlhttp.open("POST", "routeAJAX.jsp" + param, true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function()
        {
            document.getElementById('result').innerHTML = xmlhttp.responseText;
        }    

             
    }
    function getStandList(route)
    {
        document.getElementById('standList').style.opacity = "1";
        var xmlhttp = new XMLHttpRequest();
        var param = "?routeNo=" +  route;
        param = param.replace("+", "%2b")
        xmlhttp.open("POST", "routeAJAX2.jsp" + param, true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function()
        {
            document.getElementById('standList').innerHTML = xmlhttp.responseText;
        }  

    }
</script>
</html>