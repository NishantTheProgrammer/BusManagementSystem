<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="stylesheet" href="styles/confirmEmail.css">
    <link rel="icon" href="images/icon.png">
    <title>Enter OTP</title>
</head>
<body>



    <%
    String name = (String)session.getAttribute("tempName");
    String email = (String)session.getAttribute("tempEmail");
    String phone = (String)session.getAttribute("tempPhone");
    String role = (String)session.getAttribute("tempRole");
    String password = (String)session.getAttribute("tempPassword");
    String balance = null;
    String licenceNo = null;
    String experience = null;
    String joiningDate = null;
    
    if(role.equals("Passanger"))
    {
        balance = (String)session.getAttribute("tempBalance");
    }
 
    if(role.equals("Driver"))
    {
        licenceNo = (String)session.getAttribute("tempLicenceNo");
        experience = (String)session.getAttribute("tempExperience");
        joiningDate = (String)session.getAttribute("tempJoiningDate");
    }

    if(role.equals("Conductor"))
    {
        joiningDate = (String)session.getAttribute("tempJoiningDate");
    }
    if(role.equals("Ticket Checker"))
    {
        joiningDate = (String)session.getAttribute("tempJoiningDate");
    }




%>





    <div class="container">
        <div class="imageDiv" style="background-image: url('images/profileBackground.png');">

        </div>
        <div class="workspace" >
            <form method="POST" id="otpForm" style="display: block;" onsubmit="return CompareOTP();">
                <h1 style="margin-bottom: 4vw;">Verify your email</h1>
                <input type="hidden" value='<%=request.getAttribute("otp")%>' name="actualPassword">
                <!-- <input type="hidden" value='1234' name="actualPassword"> -->                    <!--For testing purposes -->
                <input type="text" placeholder="Enter OTP" name="enteredPassword">
                <input type="submit" value="submit" >
            </form>
            <h2 id="errorMsg"style="text-align: center; display: none;">OTP didn't match</h2>
            <div class="profilePannel">
                <!-- <form action="signUpProcess.jsp" method="POST"> -->
                <form action = "signUpProcess.jsp" method = "POST" enctype = "multipart/form-data">
                    <div class="uploadImg">
                        <input type="file" name="img" onchange="uploadedImg.call(this)">
                        <span>Upload</span>
                    </div>
                    <h2>Or Select</h2>
                    <div class="options">
                        <div class="img" style="background-image: url(images/girl.png);" onclick="changeProfile(this)"></div>
                        <div class="img" style="background-image: url(images/woman.png);" onclick="changeProfile(this)"></div>
                        <div class="img" style="background-image: url(images/boy.png);" onclick="changeProfile(this)"></div>
                        <div class="img" style="background-image: url(images/man.png);" onclick="changeProfile(this)"></div>
                    </div>
                    <input type="submit" value="Finish!">
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    function CompareOTP()
    {
        var actualPassword = document.getElementsByName('actualPassword')[0].value;
        var enteredPassword = document.getElementsByName('enteredPassword')[0].value;
        document.getElementById('otpForm').style.display = "none";
        if(!actualPassword.localeCompare(enteredPassword))
        {
            var profilePannel = document.getElementsByClassName('profilePannel')[0].style;
            profilePannel.marginTop = "0";
        }
        else
        {
            window.setTimeout(function(){
                window.location.replace("authentication.jsp");    
            }, 2000);
            document.getElementById('errorMsg').style.display = "block";

        }
        return false;
    }
    function changeProfile(img)
    {
        var url = img.style.backgroundImage;
        urlLength = url.length;
        splittedURL = url.substring(5, urlLength -2)
        var imageDiv = document.getElementsByClassName('uploadImg')[0];
        imageDiv.style.backgroundImage = "url('"+splittedURL+"')";
        imageDiv.style.backgroundSize = "90% 90%";
        imageDiv.style.backgroundPosition = "center bottom";
        document.getElementsByName("img")[0].value = "";
    }
    function uploadedImg()
    {
        var file = this.files[0]
        if(file)
        {
            var reader = new FileReader();
            reader.onload = function(data){
                var imageDiv = document.getElementsByClassName('uploadImg')[0];
                imageDiv.style.backgroundImage = "url('"+data.target.result+"')";
                imageDiv.style.backgroundSize = "cover";
                imageDiv.style.backgroundPosition = "top";
            }
            reader.readAsDataURL(this.files[0])
        }
    }
</script>
</html>