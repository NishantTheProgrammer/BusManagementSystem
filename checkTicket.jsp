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
    <title>Check Ticket</title>
</head>
<body>
    if(session.getAttribute("email") == null || !session.getAttribute("role").equals("ticketchecker"))
    {
        response.sendRedirect("authentication.jsp");
    }
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include>
    <div class="container">
        <div class="workspace">
            <form onsubmit="return checkTicket();">
                <h1>Check Ticket</h1>
                <input type="text" id="ticketNo" name="ticketNo" style="width: 18vw;" placeholder="Ticket No.">
                <input type="submit" value="Check">
                <h1 id="result"></h1>
            </form>
        </div>
    </div> 
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>

function checkTicket()
{
    var ticketNo = document.getElementById("ticketNo").value;
    ticketNo = ticketNo.slice(7, ticketNo.lenght)
    console.log(ticketNo);
    if(parseInt(param))
    {
        document.getElementById("result").innerText = "invalid"
        return false;
    }
    var param = "?ticketNo=" +  ticketNo;
    param = encodeURI(param);
    console.log(param);
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", "checkTicketAJAX.jsp" + param, false);
    
    xmlhttp.onreadystatechange = function(){
        var result = document.getElementById("result");
        var status = xmlhttp.responseText.trim();

        if(status < 0 || status > 23)
        {
            result.style.color = "rgb(78, 12, 12)";
            result.innerText = "Invalid Ticket!";
        }
        else
        {
            result.style.color = "rgb(90, 218, 90)";
            result.innerText = "Valid Ticket!";            
        }
        setInterval(function(){ location.reload(); }, 2000);
    }
    xmlhttp.send();
    return false;
}

</script>
</html>