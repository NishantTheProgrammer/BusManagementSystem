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
</head>
<body onload="changeRange();">
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form action="printTicket.jsp">
                <h1>Ticket Booking</h1>
                <select name="busNo">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Bus No.</option>
                    <option>971</option>
                    <option>234</option>
                    <option>982</option>
                    <option>TMS</option>
                </select>
                <select name="source">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">From</option>
                    <option>Ashok Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                </select>
                <select name="destination">
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">To</option>
                    <option>Ashoke Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                    <option>Shalimar Bagh</option>
                </select>
                <p id='rangeOutput'></p>
                <input type="range" value="1" min="1" max="20" onchange="changeRange();" class="noOfPassangers" name="noOfPassangers">
                <input type="submit" value="Book Ticket">
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
</script>
</html>