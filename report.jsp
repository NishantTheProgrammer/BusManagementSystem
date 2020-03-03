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
<body onload="setDates();">

    <jsp:include page="navigationPannel.jsp"></jsp:include>
              
    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container">
        <div class="workspace">
            <form>
                <h1>E-Report</h1>
                <select>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Route No</option>
                    <option>971</option>
                    <option>234</option>
                    <option>982</option>
                    <option>TMS</option>
                </select>
                <select>
                    <option value="" disabled selected style="color: rgb(214, 205, 205);">Stand Name</option>
                    <option>Ashoke Nagar</option>
                    <option>Nand Nagri</option>
                    <option>Seema Puri</option>
                    <option>GTB Nagar</option>
                </select>

                <input type="text" name="busNo" placeholder="Bus No.">
                <input type="text" name="description" placeholder="Description">
                <input type="submit" value="Report">
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
</html>