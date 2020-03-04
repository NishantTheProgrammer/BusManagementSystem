<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="icon" href="images/icon.png">
    <title>Authentication</title>
</head>
<body>
    <div class="container">
        <div class="imageDiv">

        </div>
        <div class="workspace">
            <div class="actionSelector">
                <div class="signInMenu" id="sin" onclick="toggleFun(this.id)">Sign In</div>
                <div class="signUpMenu" id="sup" onclick="toggleFun(this.id)">Sign Up</div>
                <div class="forgetPasswordMenu" id="fp" onclick="toggleFun(this.id)">Forget Password</div>
            </div>
            <div id="formContainer" >
                <div class="signIn" >
                    <form action="signIn" method="post">
                        <input type="text" name="id" placeholder="ID" autocomplete="off">
                        <input type="password" name="password" placeholder="Password" onblur="validatePassword(0);">
                        <input type="submit" value="Sign In">
                    </form>
                    
                </div>
                <div class="signUp">
                    <form action="SignUp" method="POST">
                        <input type="text" name="name" placeholder="Name" onblur="validateName();" autocomplete="off">
                        <input type="text" name="email" placeholder="Email" onblur="validateEmail(0);" autocomplete="off">
                        <input type="text" name="phone" placeholder="Phone" onblur="validatePhone();" autocomplete="off">
                        <select id="role" onchange="toggleFields(this.value)"  onblur="validateRole();">
                            <option value="" disabled selected style="color: rgb(214, 205, 205);">Select Your Role</option>
                            <option >Admin</option>
                            <option>Passanger</option>
                            <optgroup label="Staff">
                                <option  >Driver</option>
                                <option>Conductor</option>
                                <option>Ticket Checker</option>
                            </optgroup>
                            
                            <input type="text" name="walletBalance" placeholder="Wallet Balance" id="walletBalance" autocomplete="off" style="display: none;" onblur="validateWalletBal();">
                            <input type="text" name="licenceNo" placeholder="Licence No" id="licenceNo" autocomplete="off" style="display: none;" onblur="validateLicence();">
                            <input type="text" name="experience" placeholder="Experience" id="experience" autocomplete="off" style="display: none;" onblur="validateExperience();">
                            <input type="date" name="joiningDate" id="joiningDate" onblur="validateJoiningDate();">
                        </select>
                        <input type="password" name="password" onblur="validatePassword(1);" placeholder="Password">
                        <input type="submit" value="Sign Up">
                    </form>
                </div>
                <div class="forgetPassword">
                    <form action="SendOTP" method="post">
                        <input type="text" name="email" placeholder="Email" autocomplete="off" onblur="validateEmail(1);">
                        <input type="submit" value="Send OTP">
                    </form >
                    
                </div>
            </div>
        </div>
    </div>
</body>
<script src="scripts/authentication.js"></script>
<script src="scripts/validate.js"></script>
</html>