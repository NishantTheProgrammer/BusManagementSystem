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
    <title>Fare</title>
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
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include>
    <div class="container">
        <div class="workspace">
            <form action="busesResult.jsp">
                <h1>Available Buses</h1>
                <input type="search" id="from" placeholder="From" onkeyup="getFrom(this.value);" name="source" autocomplete="on">
                <div class="searchOutput">
                    <div class="list""></div>
                </div>
                <input type="search" id="to" placeholder="To" onkeyup="getTo(this.value);" name="destination" autocomplete="on">
                <div class="searchOutput">
                    <div class="list""></div>
                </div>
                <input type="submit" value="Check Buses">
            </form>
        </div>
    </div> 
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script>
function setFrom(value)
{
    console.log(value);
    document.getElementById('from').value = value;
}
function setTo(value)
{
    console.log(value);
    document.getElementById('to').value = value;
}
function getFrom(keyword)
{

    var param = "?keyword=" +  keyword;
    param = param.replace("+", "%2b")
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", "availableBusesAJAX.jsp" + param, false);
    
    xmlhttp.onreadystatechange = function(){
        document.getElementsByClassName('list')[0].innerHTML = xmlhttp.responseText;
    }
    xmlhttp.send();
}
function getTo(keyword)
{

    var param = "?keyword=" +  keyword;
    param = param.replace("+", "%2b")
    
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST", "availableBusesAJAX2.jsp" + param, false);
    
    xmlhttp.onreadystatechange = function(){
        document.getElementsByClassName('list')[1].innerHTML = xmlhttp.responseText;
    }
    xmlhttp.send();
}
</script>
</html>