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
        .approved, .declined
        {
            box-shadow: 7px 7px 12px rgba(255, 255, 255, 0.45), -7px -7px 12px rgba(70, 70, 70, 0.13);
            color: black;
            float: left;
            border-radius: 5vw;
            width: 2.8vw;
            height: 2.8vw;
            font-size:2vw;
            padding: .2vw;
            transition: ease all .5s;
        }
        .approved:active, .declined:active
        {
            box-shadow: inset 7px 7px 12px rgba(255, 255, 255, 0.45), inset -7px -7px 12px rgba(70, 70, 70, 0.13);
        }
        .approved
        {
            margin-left: 1vw;
        }
        .approved:hover
        {
            cursor: pointer;
            color: green;
            background-color: rgba(0, 128, 0, 0.15);
        }
        .declined:hover
        {
            cursor: pointer;
            color: red;
            background-color: rgba(255, 0, 0, 0.15);
        }
    </style>
    <title>Leave Requests</title>
    
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
            <h1>-- Leave Requests --</h1>
            <p>We understand problems of our people<br>That's why most applications approved</p>
        </div>
        <div class="policy">   
            <h1>Pending Leave Requests</h1>         
            <table>
                <tr>
                    <th>Application No</th>
                    <th>Reason</th>
                    <th>Type</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Action</th>
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
                        String query = "select * from leave_request where status='pending'";
                        rs = st.executeQuery(query);
                        while(rs.next())
                        {%>
                            <tr>
                                <td><%=rs.getInt("applicationNo")%></td>
                                <td><%=rs.getString("reason")%></td>
                                <td><%=rs.getString("type")%></td>
                                <td><%=rs.getString("date_from")%></td>
                                <td><%=rs.getString("date_to")%></td>
                                <td><%=rs.getString("address")%></td>
                                <td><%=rs.getString("email")%></td>
                                <td><div class="declined" onclick="changeStatus('<%=rs.getInt("applicationNo")%>', 'declined');">&#10008;</div><div class="approved" onclick="changeStatus('<%=rs.getInt("applicationNo")%>', 'approved');">&#10004;</div></td>
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
<script>
    function changeStatus(applicationNo, status)
    {
        var param = "?applicationNo=" + applicationNo + "&status=" + status;
        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "changeLeaveStatus.jsp" + param, false);
        xmlhttp.onreadystatechange = function(){
            location.reload();
        }
        xmlhttp.send();
    }
</script>
</html>
