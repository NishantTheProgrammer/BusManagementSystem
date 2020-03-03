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
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form>
                <h1>Request For Leave</h1>
                <select>
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
                <select>
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
                <input type="date" id="from" onchange="updateMin(this.value);" name="from" style="display: block;">
                <input type="date" id="to" value="2018-07-22" name="to" style="display: block;">
                <input type="text" name="tempAddress" placeholder="Address During Leave">
                <input type="submit" value="Request">
            </form>
        </div>
    </div>

    <div class="container" style="margin: 0;
                            height: 20vw;">
        <div class="workspace">
            <form>
                <h1>Check Status</h1>
                <input type="text" name="applicationNo" placeholder="Application No.">
                <input type="submit" value="Check Status">
            </form>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script src="scripts/leave.js"></script>
</html>