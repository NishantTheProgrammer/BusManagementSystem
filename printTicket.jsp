<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/ticket.css">
    <link rel="icon" href="images/icon.png">
    <title>Ticket</title>

</head>
<body onload="print();">
    <h1 id="msg">CTRL + P for Print Ticket (<span style="color: red">balance have already deducted</span>)</h1>

    <div class="container"">
        <p style="font-size: 35px; text-align: center; ">Shivaji Roadways</p>
        <div style="width: 100%;">
            <span id="busNo">00243484</span>
            <span class="dateTime"style="float: right; margin-left: 10px;">12:42:50</span>
            <span class="dateTime" style="float: right;">02/01/20</span>
        </div>
        <div style="text-align: center;">
            <span id="ticketNo">ORD SPD00059</span><span style="margin-left: 20px;"><%=request.getParameter("busNo")%></span>
        </div>
        <p style="width: 100%;"><%=request.getParameter("source")%><span style="float: right; ;">To</span></span></p>
        <p style="text-align: right;"><%=request.getParameter("destination")%></p>
        <p style="text-align: center;">Passangers: <%=request.getParameter("noOfPassangers")%></p>
        <p style="text-align: center; font-size: 17px;">Not transferable</p>
        <p style="text-align: center; font-size: 50px; font-weight: bold;">FARE: <span>&#x20B9;10</span></p>
    </div>
</body>
<script>
    var dateTime = document.getElementsByClassName("dateTime");
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    var time = today.getHours() % 12+":"+today.getMinutes()+":"+today.getSeconds();
    if (dd < 10)
    {
        dd = '0' + dd;
    } 
    if (mm < 10)
    {
        mm = '0' + mm;
    }
    dateTime[0].innerHTML = time;
    dateTime[1].innerHTML = dd+"/"+mm+"/"+yyyy;
</script>
</html>