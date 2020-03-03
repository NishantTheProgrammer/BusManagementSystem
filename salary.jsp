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
    <title>Salary</title>
    
</head>
<body>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include> 
        <div class="innerContainer">
            <h1>-- Salary --</h1>
            <p>There is a deeper satisfaction if you earn from your own<br> work than relying on corruptible ways of amassing riches.</p>
        </div>
        <div class="policy">   
            <h1>Rajesh Kumar</h1>         
            <table>
                <tr>
                    <th>Transaction Id</th>
                    <th>Amount</th>
                    <th>Date</th>
                </tr>
                <tr>
                    <td>1101</td>
                    <td>30,000</td>
                    <td>11/12/2018</td>
                </tr>
                <tr>
                    <td>1105</td>
                    <td>42,000</td>
                    <td>11/12/2018</td>
                </tr>
            </table>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>

        
</body>
<script src="scripts/navPannel.js"></script>
</html>
