var errorColor = "rgb(241, 101, 7)";


//--------------------------------------------------------Validating name---------------------------------------------

function validateName()
{
    var name = document.getElementsByName("name")[0];
    if(name.value == "")
    {
        
        name.placeholder = "Please insert name!";
        name.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(name.value.length > 20)
    {
        name.style.borderBottom = "1.9px solid "+errorColor;
        name.value = "";
        name.placeholder = "Max 20 characters allow!"
    }
    else
    {
        name.style.borderBottom = "1.9px solid aqua";
        name.placeholder = "Name";
    }
}

//------------------------------------------------------Validating email------------------------------------------------------

function validateEmail(num)
{
    var email=document.getElementsByName("email")[num];
    var dotpos=email.value.lastIndexOf(".");
    var atpos=email.value.lastIndexOf("@");
    
    if(email.value == "")
    {
        
        email.placeholder = "Please insert email!";
        email.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(dotpos==-1 || atpos==-1 || dotpos-atpos<4)       
    {
        email.style.borderBottom = "1.9px solid "+errorColor;
        email.value = "";
        email.placeholder = "Invalid Email!"
    }
    else
    {
        var param = "?email=" +  email.value;
        param = param.replace("+", "%2b")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "authenticationAJAX.jsp" + param, false);
        
        xmlhttp.onreadystatechange = function(){
            if(num == 0)
            {
                if(xmlhttp.responseText.length < 4)
                {
                    email.style.borderBottom = "1.9px solid aqua";
                    email.placeholder = "Email";
                }
                else
                {
                    email.style.borderBottom = "1.9px solid "+errorColor;
                    email.value = "";
                    email.placeholder = "Email already exist!";
                }
            }
            if(num == 1)
            {
                if(xmlhttp.responseText.length > 4)
                {
                    email.style.borderBottom = "1.9px solid aqua";
                    email.placeholder = "Email";
                }
                else
                {
                    email.style.borderBottom = "1.9px solid "+errorColor;
                    email.value = "";
                    email.placeholder = "Email doesn't exist!";
                }
            }
        }
        xmlhttp.send();





    }
}

//------------------------------------------------------Validating phone-----------------------------------------------------

function validatePhone()
{    
    var phone = document.getElementsByName("phone")[0];
    if(phone.value == "")
    {
        
        phone.placeholder = "Please insert phone!";
        phone.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(phone.value.length == 10 && !isNaN(phone.value))
    {
        phone.style.borderBottom = "1.9px solid aqua";
        phone.placeholder = "Phone";
    }
    else
    {
        phone.style.borderBottom = "1.9px solid "+errorColor;
        phone.value = "";
        phone.placeholder = "Value should be 10 digit Numerical";
    }
}

//---------------------------------------------Commented just for development phase---------------------------------------
// function validatePassword(num)
// {
//     var p = document.getElementsByName("password")[num];
//     if(p.value.length <= 0)
//     {
//         p.placeholder = "Please insert password!";
//         p.style.borderBottom = "1.9px solid "+errorColor;
//     }
//     else if(p.value.length <= 8)
//     {
//         p.value = "";
//         p.placeholder="Password Should at least 8 digit!";
//         p.style.borderBottom = "1.9px solid "+errorColor;
//     }
//     else
//     {
//         p.style.borderBottom = "1.9px solid aqua";
//         p.placeholder = "Password";
//     }
// }

//-------------------------------------------------------Validate Role----------------------------------------------------

function validateRole()
{
    var role = document.getElementById("role");
    if(role.value == "")
    {
        role.style.border = "1.9px solid "+errorColor;
    }
    else
    {
        role.style.border = "1.9px solid aqua";
    }
}

//-------------------------------------------------------Validate wallet balance------------------------------------------

function validateWalletBal()
{    
    var bal = document.getElementsByName("walletBalance")[0];
    if(bal.value == "")
    {
        
        bal.placeholder = "Please insert balance!";
        bal.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(bal.value.length < 7 && !isNaN(bal.value))
    {
        bal.style.borderBottom = "1.9px solid aqua";
        bal.placeholder = "Wallet Balance";
    }
    else
    {
        bal.style.borderBottom = "1.9px solid "+errorColor;
        bal.value = "";
        bal.placeholder = "Should be in numbers < 7 digit";
    }
}

//--------------------------------------------------------Validating licence------------------------------------------------

function validateLicence()
{    
    var licence = document.getElementsByName("licenceNo")[0];
    if(licence.value == "")
    {
        
        licence.placeholder = "Please insert licence no.!";
        licence.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(licence.value.length == 10)
    {
        licence.style.borderBottom = "1.9px solid aqua";
        licence.placeholder = "Licence";
    }
    else
    {
        licence.style.borderBottom = "1.9px solid "+errorColor;
        licence.value = "";
        licence.placeholder = "Licence should be 10 digit alphanumaric";
    }
}

//-----------------------------------------------------Validating experience------------------------------------------------

function validateExperience()
{    
    var exp = document.getElementsByName("experience")[0];
    if(exp.value == "")
    {
        
        exp.placeholder = "Please tell us your experience!";
        exp.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(exp.value.length <= 2 && !isNaN(exp.value))
    {
        exp.style.borderBottom = "1.9px solid aqua";
        exp.placeholder = "Experience";
    }
    else
    {
        exp.style.borderBottom = "1.9px solid "+errorColor;
        exp.value = "";
        exp.placeholder = "Experiece: 0 - 99 years";
    }
}

//----------------------------------------------------Validating Joining Date-----------------------------------------------

function validateJoiningDate()
{
    var jd = document.getElementById("joiningDate");
    if(jd.value == "")
    {
        jd.style.border = "1.9px solid "+errorColor;
    }
    else
    {
        jd.style.border = "1.9px solid aqua";
    }
}
