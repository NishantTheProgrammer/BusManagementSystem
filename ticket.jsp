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
    <title>Ticket Booking</title>
    <style>
        .busTypeContainer
        {
            width: 220px;
            margin: 2vw auto;
        }
        .busTypeContainer label
        {
            background-size: 80% 80%;
            background-repeat: no-repeat;
            background-position: center;
            border-radius: 10px;
            transition: ease-in-out .7s;

        }


        input[type="radio"]{
            display:none;
        }
        label:last-child {
            float: right !important; 
        }

        input[type="radio"] + label
        {
            border: 2px solid transparent;
            height: 5vw;
            width: 5vw;
            display:inline-block;
            padding: 0 0 0 0px;
            cursor: pointer;
        }
        input[type="radio"]:checked + label
        {
            background-color: rgba(255, 255, 255, 0.63);
            height: 5vw;
            width: 5vw;
            display:inline-block;
            padding: 0 0 0 0px;
            cursor: default;
        }


        form input[type="submit"]
        {
            display: inline;
        }
        .submitContainer
        {
            margin: 0 auto;
            width: 17vw;
        }
        .submitContainer
        {
            position: relative;
            transform: translateY("20px");
        }
        .submitContainer :first-child
        {
            float: right;
            border-color: palevioletred;
        }
        .submitContainer :first-child:hover
        {    
            position: relative;
            cursor: pointer;
            animation-name: pink;
            animation-duration: 1s;
            animation-fill-mode: forwards;
        }
        @keyframes pink
        {
            100%
            {
                color: black;
                background-color: palevioletred;
                box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.63);
                border-radius: 50px;     
            }
        }
        .pinkSubmit
        {
            border-color: pink;
        }

    </style>
</head>
<body onload="changeRange();">
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
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
    <div class="container" style="height: 45vw; margin-top: 34vw;">
        <div class="workspace">
            <form action="printTicket.jsp"> 
                <h1>Ticket Booking</h1>
                <select name="routeNo" onchange="updateStands(this.value);">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Bus No.</option>
                    <%
                        while(rs.next())
                        {%>
                            <option><%=rs.getString("routeNo")%></option>
                        <%}
                    %>
                </select>
                <select name="source">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">From</option>
                </select>
                <select name="destination">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">To</option>
                </select>
                <div class="busTypeContainer">
                    <input type="radio" id="ORD" value="ORD" name="type" checked>
                    <label for="ORD" style="background-image: url('images/ord.png');"></label>
                    <input type="radio" id="AC" value="AC" name="type">
                    <label for="AC" style="background-image: url('images/ac.png');"></label>
                </div>

                <p id='rangeOutput'></p>
                <input type="range" value="1" min="1" max="20" onchange="changeRange();" class="noOfPassangers" name="noOfPassangers">
                <div class="submitContainer">
                    <input type="submit" value="Pink ticket">
                    <input type="submit" value="Book Ticket">
                </div>
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>
    function changeRange()
    {
        var range = document.getElementsByClassName('noOfPassangers')[0].value;
        document.getElementById('rangeOutput').innerHTML = range;
    }
    function updateStands(routeNo)
    {
        var source = document.getElementsByName('source')[0];
        var destination = document.getElementsByName('destination')[0];

        var param = "?routeNo=" +  routeNo;
        param = param.replace("+", "%2b")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "ticketAJAX.jsp" + param, false);
        
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
            }, 200);
        }
    })
    
</script>
</html>