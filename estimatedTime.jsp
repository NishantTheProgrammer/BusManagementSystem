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
    <title>Estimated Time</title>
</head>
<body onchange="calculateEsTime();">
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
            <form>
                <h1>Calculate Estimated Time</h1>
                <select name="routeNo" onchange="updateStands(this.value);">
                    <option value="" disabled selected >Bus No.</option>
                    <%
                        while(rs.next())
                        {%>
                            <option><%=rs.getString("routeNo")%></option>
                        <%}
                    %>
                </select>
                <select name="source" onchange="disableTo(this.value, this.length)">
                    <option value="" disabled selected >From</option>
                </select>
                <select name="destination" onchange="disableFrom(this.value, this.length)">
                    <option value="" disabled selected >To</option>
                </select>
                <h1 style="margin-top: 5vw;" id="est"></h1>
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script src="scripts/disable.js"></script>
<script>
    function updateStands(routeNo)
    {
        var source = document.getElementsByName('source')[0];
        var destination = document.getElementsByName('destination')[0];

        var param = "?routeNo=" +  routeNo;
        param = param.replace("+", "%2b")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "estimatedTimeAJAX.jsp" + param, false);
    
        xmlhttp.onreadystatechange = function(){
            source.innerHTML =
            destination.innerHTML = xmlhttp.responseText;
        }
        xmlhttp.send();

        var placeholder = document.getElementsByClassName('placeholder');
        placeholder[0].text = "From";        
        placeholder[1].innerHTML = "To";
    }
    window.addEventListener('load', function () {
        var routeNo = document.getElementsByName('routeNo')[0].value;
        if(routeNo)
        {
            setTimeout(function(){
                updateStands(routeNo);
            }, 500);
        }
    })

    function calculateEsTime()
    {        
        var source = document.getElementsByName('source')[0].value;
        var destination = document.getElementsByName('destination')[0].value;
        if(source && destination)
        {
            var time = "";
            var MINUTES = Math.abs(source - destination) * 6;    // assumed 1 km cover 6 min;
            if(MINUTES > 20)
                MINUTES += Math.floor(Math.random() * (+6 - +0) + +0); //random trafic of 0 to 5 min
            var m = MINUTES % 60;
            var h = (MINUTES-m)/60;
            if(h > 0)
            {
                time = h+" h " + m + " m";
            }
            else
            {
                time = m +" m";
            }
            document.getElementById('est').innerHTML = time;
            console.log(time);
        }
        else
        document.getElementById('est').innerHTML = "";
    }
</script>
</html>