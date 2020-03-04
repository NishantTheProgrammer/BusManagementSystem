<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="icon" href="images/icon.png">
    <title>Enter OTP</title>
</head>
<body>
    <div class="container">
        <div class="imageDiv">

        </div>
        <div class="workspace">
            <form action="CompareOTP" method="post">
                <input type="hidden" value='<%=request.getAttribute("otp")%>' name="actualPassword">
                <input type="text" placeholder="Enter OTP" name="enteredPassword">
                <input type="submit">
            </form>
        </div>
    </div>
</body>
<!-- <script src="scripts/authentication.js"></script> -->
</html>