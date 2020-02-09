
var toggleState=1;

{
    
    document.title="Sign In";
    var sin=document.getElementById('sin').style;
    var sup=document.getElementById('sup').style;
    var fp=document.getElementById('fp').style;
    sup.color="rgb(207, 201, 195)";
    sin.color="white";
    fp.color="rgb(207, 201, 195)";

    sup.borderBottomColor="";
    sin.borderBottomColor="aquamarine";
    fp.borderBottomColor="";
}



function toggleFun(selected)
{
    
    if(toggleState==1)
    {
        if(selected=="sup")
        {
            toggleState=2;
            document.title="Sign Up";
            var screen=document.getElementById("formContainer");
            
            screen.className='';
            screen.classList.add("shiftLeft1");

            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sin.color="rgb(207, 201, 195)";
                sup.color="white";
                fp.color="rgb(207, 201, 195)";

                sin.borderBottomColor="";
                sup.borderBottomColor="aquamarine";
                fp.borderBottomColor="";
            }
        }
        else if(selected=="fp")  
        {
            toggleState=3;
            document.title="Forget Password";
            

            var screen=document.getElementById("formContainer");
            screen.className='';
            screen.classList.add("shiftdLeft1");
            

            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sin.color="rgb(207, 201, 195)";
                fp.color="white";
                sup.color="rgb(207, 201, 195)";

                sin.borderBottomColor="";
                fp.borderBottomColor="aquamarine";
                sup.borderBottomColor="";
            }

        }
    }
    else if(toggleState==2)
    {   
        
        if(selected=="sin")
        {
            toggleState=1;
            document.title="Sign In";
            var screen=document.getElementById("formContainer");
            screen.className='';
            screen.classList.add("shiftRight2");

            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sup.color="rgb(207, 201, 195)";
                sin.color="white";
                fp.color="rgb(207, 201, 195)";

                sup.borderBottomColor="";
                sin.borderBottomColor="aquamarine";
                fp.borderBottomColor="";
            }
        }
        else if(selected=="fp") 
        {
            toggleState=3;
            document.title="Forget Password";
            var screen=document.getElementById("formContainer");
            screen.className='';
            screen.classList.add("shiftLeft2");

            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sin.color="rgb(207, 201, 195)";
                fp.color="white";
                sup.color="rgb(207, 201, 195)";

                sin.borderBottomColor="";
                fp.borderBottomColor="aquamarine";
                sup.borderBottomColor="";
            }
        }
    }
    else if(toggleState==3)
    {   if(selected=="sup")
        {
            toggleState=2;
            document.title="Sign Up";
            var screen=document.getElementById("formContainer");
            screen.className='';
            screen.classList.add("shiftRight3");
            
            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sin.color="rgb(207, 201, 195)";
                sup.color="white";
                fp.color="rgb(207, 201, 195)";

                sin.borderBottomColor="";
                sup.borderBottomColor="aquamarine";
                fp.borderBottomColor="";
            }
        }
        else if(selected=="sin") 
        {
            toggleState=1;
            document.title="Sign In";
            var screen=document.getElementById("formContainer");
            screen.className='';
            screen.classList.add("shiftdRight3");

            {
                var sin=document.getElementById('sin').style;
                var sup=document.getElementById('sup').style;
                var fp=document.getElementById('fp').style;
                sup.color="rgb(207, 201, 195)";
                sin.color="white";
                fp.color="rgb(207, 201, 195)";

                sup.borderBottomColor="";
                sin.borderBottomColor="aquamarine";
                fp.borderBottomColor="";
            }
        }
    }
}

function toggleFields(field)
{
    if(field=="Conductor" || field=="Ticket Checker" || field=="Driver")
    {
        document.getElementById("joiningDate").style.display="block";
    }
    else
    {
        document.getElementById("joiningDate").style.display="none";
    }
    if(field=="Passanger")
    {
        document.getElementById("walletBalance").style.display="block";
    }
    else
    {
        document.getElementById("walletBalance").style.display="none";
    }
    if(field=="Driver")
    {
        document.getElementById("licenceNo").style.display="block";
        document.getElementById("experience").style.display="block";
    }
    else
    {
        document.getElementById("licenceNo").style.display="none";
        document.getElementById("experience").style.display="none";
    }
}
