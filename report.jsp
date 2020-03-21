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
    <title>Report</title>
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
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select routeNo from route order by serialNo";
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
            <form onsubmit="return submitReport();">
                <h1>E-Report</h1>
                <select name="routeNo" onchange="updateStands(this.value);">
                    <option value="" disabled selected >Route No</option>
                    <%
                        while(rs.next())
                        {%>
                            <option><%=rs.getString("routeNo")%></option>
                        <%}
                    %>
                </select>
                <select name="standName">
                    <option value="" disabled selected >Stand Name</option>
                    <option>Ashoke Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                </select>

                <input type="text" name="busNo" placeholder="Bus No.">
                <input type="text" name="description" placeholder="Description">
                <input type="submit" id="submitButton" value="Report">
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>
    function submitReport()
    {
        var routeNo = document.getElementsByName("routeNo")[0].value;
        var standName = document.getElementsByName("standName")[0].value;
        var busNo = document.getElementsByName("busNo")[0].value;
        var description = document.getElementsByName("description")[0].value;



        var param = "?routeNo=" + routeNo + "&standName=" + standName + "&busNo=" + busNo + "&description=" + description;
        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "submitReport.jsp" + param, false);

        xmlhttp.onreadystatechange = function(){
            var submitButton = document.getElementById("submitButton")
            submitButton.value = xmlhttp.responseText.trim();
        }
        xmlhttp.send();

        return false;
    }
    function updateStands(routeNo)
    {
        var standName = document.getElementsByName('standName')[0];
        var param = "?routeNo=" +  routeNo;
        param = param.replace("+", "%2b")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "ticketAJAX.jsp" + param, false);
        
        xmlhttp.onreadystatechange = function(){
            standName.innerHTML = xmlhttp.responseText;
        }
        xmlhttp.send();
    }

</script>
</html>