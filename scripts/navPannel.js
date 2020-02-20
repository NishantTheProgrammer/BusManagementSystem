window.onscroll=function()
{
    console.log(!window.pageYOffset );
    var nav=document.getElementsByClassName("navPannel")[0].style;
    var link=document.getElementsByClassName("link");
    var logoHeading=document.getElementsByClassName("logoHeading")[0].style;
    if(!window.pageYOffset )
    {

        nav.backgroundColor="rgba(0, 0, 0, 0)";
        nav.boxShadow="none";
        logoHeading.textShadow="none";
        for(i=0; i<link.length; i++)
        {
            link[i].style.boxShadow="none";
            link[i].style.color="wheat";
            
            link[i].onmouseover = function() {
                this.style.color = "black";
                this.style.backgroundColor = "var(--bodyColor)";
            }                
            link[i].onmouseout = function() {
                this.style.color = "wheat";
                this.style.backgroundColor = "rgba(0, 0 , 0, 0)";
            }
        }
        var userImg=document.getElementsByClassName("userImg")[0].style;
        var userName=document.getElementsByClassName("userName")[0].style;
        userName.textShadow="none";
        userImg.borderRadius="5vw";
    }
    else
    {
        nav.backgroundColor="var(--navBackgroundColor)";
        nav.boxShadow="0px 0px 20px rgba(0, 0, 0, 0.5)";
        logoHeading.textShadow="0px 0px 5px black";
        for(i=0; i<link.length; i++)
        {
            link[i].style.boxShadow="var(--navLinkBoxShadow)";
            link[i].style.color="rgb(63, 0, 99)";
            
            link[i].onmouseover = function() {
                this.style.color = "black";
                this.style.backgroundColor = "rgba(0, 0 , 0, 0)";
            }                
            link[i].onmouseout = function() {
                this.style.color = "rgb(63, 0, 99)";
                this.style.backgroundColor = "rgba(0, 0 , 0, 0)";
            }
            
        }
        
        var userImg=document.getElementsByClassName("userImg")[0].style;
        var userName=document.getElementsByClassName("userName")[0].style;
        userName.textShadow="0px 0px 5px black";
        userImg.borderTopLeftRadius="0";
        userImg.borderTopRightRadius="0";
    }
}
function elemFocused(element){
    if(window.pageYOffset )
    {
        element.style.boxShadow="var(--navLinkBoxShadowInset)";
    }
}
function elemBlurred(element){
    element.style.boxShadow="none";
}