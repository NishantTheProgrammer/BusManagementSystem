<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="icon" href="images/icon.png">
    <title>Create New Password</title>
</head>
<body>
    <div class="container">
        <div class="imageDiv" style="background-image: url('images/lock.jpg')">
        </div>
        <div class="workspace">
            <form action="updatePassword.jsp" method="POST" onsubmit="return mathcPassword();">
                <input type="password"
                            name="newPassword"
                            id="newPassword"
                            placeholder="Enter New Password"
                            onkeyup="confirmPasswordField(this.value.length)">
                            
                <input type="hidden" placeholder="Confirm Password" id="confirmPassword">
                <input type="submit">
            </form>
        </div>
    </div>
</body>
<script src="scripts/authentication.js"></script>
<script>
    function mathcPassword()
    {
        if(document.getElementById("newPassword").value != document.getElementById("confirmPassword").value)
        {
            document.getElementById("confirmPassword").value = "";
            document.getElementById("confirmPassword").placeholder = "Passwords didn't match!";
            document.getElementById("confirmPassword").style.borderBottom = "1.9px solid rgb(241, 101, 7)";
            return false;

        }
        else
            return true;
    }
</script>
</html>