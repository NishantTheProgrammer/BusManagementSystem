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
    <title>Pay Salary</title>
    <style>
    .searchOutput
    {
        background-color:green;
        height: 0;
        width: 80%;
        margin: 0 auto;
        display: none;

    }
    .searchOutput .list
    {
        background-color: rgb(83, 83, 95);
        width: 100%;
        max-height: 12.6vw;
        overflow-y: scroll;
        position: relative;
    }
    .searchOutput .list::-webkit-scrollbar
    {
        display: none;
    }
    .searchOutput .list p
    {
        color: white;
        padding: 1vw;
        font-size: 1vw;
        margin: 0 auto;
        transition: ease all .7s;
    }
    .searchOutput .list p:hover
    {
        background-color: white;
        cursor: pointer;
        color: rgb(83, 83, 95);
    }
    input[type="search"]:focus + .searchOutput
    {
        display: block;
    }
    </style>
</head>
<body>
<%
if(session.getAttribute("email") == null || !session.getAttribute("role").equals("admin"))
{
    response.sendRedirect("authentication.jsp");
}
%>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include>
    <div class="container">
        <div class="workspace">
            <form onsubmit="return pay();">
                <h1>Pay Salary</h1>
                <input type="search" id="payee" placeholder="Payee" onkeyup="getPayee(this.value);" autocomplete="on">
                <div class="searchOutput">
                    <div class="list""></div>
                </div>
                <input type="text" id="amount" name="amount" style="width: 18vw;" placeholder="Amount">
                <input type="submit" value="Pay">
                <h1 style="color:rgb(70, 255, 70);" id="result"></h1>
            </form>
        </div>
    </div> 
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>
function setPayee(value)
{
    document.getElementById('payee').value = value;
}
function getPayee(payee)
{

    var param = "?payee=" +  payee;
    param = param.replace("+", "%2b")
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", "paySalaryAJAX.jsp" + param, false);
    
    xmlhttp.onreadystatechange = function(){
        document.getElementsByClassName('list')[0].innerHTML = xmlhttp.responseText;
    }
    xmlhttp.send();
}
function pay()
{
    var payee = document.getElementById("payee").value;
    var amount = document.getElementById("amount").value;
    var param = "?payee=" +  payee + "&amount=" +  amount;
    param = encodeURI(param);
    console.log(param);
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", "paySalaryAJAX2.jsp" + param, false);
    
    xmlhttp.onreadystatechange = function(){
        document.getElementById("result").innerText = xmlhttp.responseText.trim();;
        setInterval(function(){ location.reload(); }, 2000);
    }
    xmlhttp.send();
    return false;
}

</script>
</html>