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
    <title>Leave</title>
</head>
<body onload="setDates();">
    <style>
        #appNoResult,  #applicationStatus
        {
            color: white;
            font-weight: bold;
            text-align: center;
            margin-top: 2vw;
            font-size: 1.5vw;
            text-transform: capitalize;
        }
    </style>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form onsubmit="return getApplicationNo()">
                <h1>Request For Leave</h1>
                <select id="reason" required>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Reason</option>
                    <option>Casual/Incidental</option>
                    <option>Hospitalization</option>
                    <option>Recovery After Hospitalization</option>
                    <option>Medical Ground</option>
                    <option>For Study</option>
                    <option>Election Duty</option>
                    <option>Apearing In Exam</option>
                    <option>Family Walfare Program</option>
                    <option>For Care of Childrens</option>
                    <option>Marrige</option>
                </select>
                <select id="type" required>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Type</option>
                    <option>Casual Leave (CL)</option>
                    <option>Half Pay Leave (HPL)</option>
                    <option>Maternity Leave (ML)</option>
                    <option>Maternity Leave (ML)</option>
                    <option>Child Care Leave (CCL)</option>
                    <option>Leave Without Pay (LWP)</option>
                    <option>Compansative Casual Leave (CCL)</option>
                    <option>Priviledge Leave (PL)</option>
                </select>
                <input required type="date" id="from" onchange="updateMin(this.value);" name="from" style="display: block;">
                <input required type="date" id="to" value="2018-07-22" name="to" style="display: block;">
                <input required type="text" name="tempAddress" id="tempAddress" placeholder="Address During Leave">
                <input type="submit" value="Request">
                <p id="appNoResult"></p>
            </form>
        </div>
    </div>

    <div class="container" style="margin: 0;
                            height: 22vw;">
        <div class="workspace">
            <form onsubmit="return  getStatus();">
                <h1>Check Status</h1>
                <input type="text" name="applicationNo" id="applicationNo" placeholder="Application No.">
                <input type="submit" value="Check Status">
                <p id="applicationStatus"></p>
            </form>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script src="scripts/leave.js"></script>
<script>
    function getApplicationNo()
    {
        var reason = document.getElementById("reason").value;
        var type = document.getElementById("type").value;
        var from = document.getElementById("from").value;
        var to = document.getElementById("to").value;
        var tempAddress = document.getElementById("tempAddress").value;



        var param = "?reason=" + reason + "&type=" + type + "&from=" + from + "&to=" + to + "&tempAddress=" + tempAddress;
        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")

        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "leaveRequestAJAX.jsp" + param, false);

        xmlhttp.onreadystatechange = function(){
            document.getElementById("appNoResult").innerText = xmlhttp.responseText.trim();
        }
        xmlhttp.send();
        return false;
    }
    function getStatus()
    {
        var applicationNO = document.getElementById("applicationNo").value;
        var param = "?applicationNO=" + applicationNO;
        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")

        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "leaveStatusAJAX.jsp" + param, false);

        xmlhttp.onreadystatechange = function(){
            var result = document.getElementById("applicationStatus")
            var status = xmlhttp.responseText.trim();
            if(status == "pending")
                result.style.color = "yellow";
            else if(status == "declined")
                result.style.color = "rgb(78, 12, 12)";
            else if(status == "approved")
                result.style.color = "rgb(90, 218, 90)";
            else
                result.style.color = "white";
            result.innerText = status;
        }
        xmlhttp.send();
        return false;
    }
</script>
</html>