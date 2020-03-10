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
</head>
<body>
<%@page import="java.sql.*" %>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
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
                <select name="routeNo" onchange="getResults(this.value);">
                    <option value="" disabled selected >Bus No.</option>
                    <%
                    while(rs.next())
                    {%>
                        <option><%=rs.getString("routeNo")%></option>
                    <%}
                    %>
                </select>
                <!-- <input type="submit" value="Get Info"> -->
                <div id="result"></div>
            </form>
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
</script>
</html>