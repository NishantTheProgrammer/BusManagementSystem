var errorColor = "rgb(241, 101, 7)";


//--------------------------------------------------------Validating name---------------------------------------------

function validateName()
{
    var isValid = false;
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
        isValid = true;
    }
    return isValid;
}

//------------------------------------------------------Validating email------------------------------------------------------

function validateEmail(num)
{
    var isValid = false;
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
                    isValid = true;
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
                    isValid = true;
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
    return isValid;
}

//------------------------------------------------------Validating phone-----------------------------------------------------

function validatePhone()
{    
    var isValid = false;
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
        isValid = true;
    }
    else
    {
        phone.style.borderBottom = "1.9px solid "+errorColor;
        phone.value = "";
        phone.placeholder = "Value should be 10 digit Numerical";
    }
    return isValid;
}

//-------------------------------------------------------Validating Passowrd---------------------------------------
function validatePassword(num)
{
    var isValid = false;
    var p = document.getElementsByName("password")[num];
    if(p.value == "" && p.value.length <= 0)
    {
        p.placeholder = "Please insert password!";
        p.style.borderBottom = "1.9px solid "+errorColor;
    }
    else if(p.value.length < 4)
    {
        p.value = "";
        p.placeholder="Password Should at least 4 digit!";
        p.style.borderBottom = "1.9px solid "+errorColor;
    }
    else
    {
        p.style.borderBottom = "1.9px solid aqua";
        p.placeholder = "Password";
        isValid = true;
    }
    return isValid;
}

//-------------------------------------------------------Validate Role----------------------------------------------------

function validateRole()
{
    var isValid = false;
    var role = document.getElementById("role");
    if(role.value == "")
    {
        role.style.border = "1.9px solid "+errorColor;
    }
    else
    {
        role.style.border = "1.9px solid aqua";
        isValid = true;
    }
    return isValid;
}

//-------------------------------------------------------Validate wallet balance------------------------------------------

function validateWalletBal()
{   
    var isValid = false; 
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
        isValid = true;
    }
    else
    {
        bal.style.borderBottom = "1.9px solid "+errorColor;
        bal.value = "";
        bal.placeholder = "Should be in numbers < 7 digit";
    }
    return isValid;
}

//--------------------------------------------------------Validating licence------------------------------------------------

function validateLicence()
{    
    var isValid = false;
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
        isValid = true;
    }
    else
    {
        licence.style.borderBottom = "1.9px solid "+errorColor;
        licence.value = "";
        licence.placeholder = "Licence should be 10 digit alphanumaric";
    }
    return isValid;
}

//-----------------------------------------------------Validating experience------------------------------------------------

function validateExperience()
{    
    var isValid = false;
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
        isValid = true;
    }
    else
    {
        exp.style.borderBottom = "1.9px solid "+errorColor;
        exp.value = "";
        exp.placeholder = "Experiece: 0 - 99 years";
    }
    return isValid;
}

//----------------------------------------------------Validating Joining Date-----------------------------------------------

function validateJoiningDate()
{
    var isValid = false;
    var jd = document.getElementById("joiningDate");
    if(jd.value == "")
    {
        jd.style.border = "1.9px solid "+errorColor;
    }
    else
    {
        jd.style.border = "1.9px solid aqua";
        isValid = true;
    }
    return isValid;
}

function validateForm()
{
    
    var isValid = true;

    if(validateName() == false)
        isValid = false;
    if(validateEmail(0) == false)
        isValid = false;
    if(validatePhone() == false)
        isValid = false;

    if(validateRole())
    {
        var role = document.getElementById("role"); 

        if(role.value == 'Passanger')
        {
            if(validateWalletBal() == false)
                isValid = false;
        }
        else if(role.value == 'Driver')
        {
            if(validateLicence() == false)
                isValid = false;
            if(validateExperience() == false)
                isValid = false;
            if(validateJoiningDate() == false)
                isValid = false;
        }
        else if(role.value == 'Conductor')
        {
            if(validateJoiningDate() == false)
                isValid = false;
        }
        else if(role.value == 'Ticket Checker')
        {
            if(validateJoiningDate() == false)
                isValid = false;
        }
    }
    else
    {
        isValid = false;
    }
    if(validatePassword(1) == false)
        isValid = false;
    return isValid;
}
