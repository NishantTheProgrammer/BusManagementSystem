<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/home.css">
    <link rel="icon" href="images/icon.png">
    <title>Shivaji Roadways</title>
    
</head>
<body>
    <div class="navPannel">
        <div class="logo">
            <div class="logoImage"></div>
            <div class="logoHeading">Shivaji Roadways</div>
        </div>
        
            <div class="navLinks">     
                
            <%
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if(session.getAttribute("id")!=null)
            {
            %>            
                <div class="userProfile" onclick="window.location='logout';">
                    <p class="userName">Nishant</p>
                    <div class="userImg" style="background-image: url('images/nishant.jpg');"></div>
                    <div class="iconContainer">
                        <div class="setting"></div>
                        <div class="logout"></div>
                    </div>
                </div>
            <%
            }
            else
            {
            %>
                <a class="link" href="authentication.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">login</a>
            <%}%>
                <a class="link" href="policies.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Policies</a>
                <a class="link" href="about.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">About</a>
                <a class="link" href="home.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Home</a>
            </div>
    </div>
    <div class="container">           
        <svg class="svgGredient" width="1536" height="541" viewBox="0 0 1536 541" fill="none" xmlns="http://www.w3.org/2000/svg">
            <ellipse cx="786.381" cy="363.536" rx="136.658" ry="137.145" fill="#9723C0"/>
            <path d="M415.124 535.125C293.029 552.177 83.6654 535.125 0 423.937V0H1536V56.2712V253.781C1536 253.781 1437.62 358.6 1337.81 393.735C1199.55 442.402 1097.2 358.212 910.651 386.631C724.106 415.049 537.22 518.074 415.124 535.125Z" fill="url(#paint0_linear)"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M324.911 540.792C357.664 540.944 388.473 538.847 415.124 535.125C470.582 527.38 539.407 501.898 615.496 473.726C636.473 465.959 658.002 457.988 679.956 450.128C641.308 412.017 588.314 388.508 529.848 388.508C433.276 388.508 351.632 452.648 324.911 540.792Z" fill="url(#paint1_linear)"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M344.717 0C336.972 111.633 244.276 199.781 131.064 199.781C81.6928 199.781 36.2237 183.017 0 154.853V0H344.717Z" fill="url(#paint2_linear)"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M1102.59 391.002C1047.02 381.979 985.635 375.208 910.651 386.631C808.838 402.141 706.923 439.875 615.496 473.726C612.746 474.744 610.005 475.759 607.273 476.77C605.231 463.888 604.171 450.68 604.171 437.225C604.171 298.627 716.699 186.271 855.509 186.271C978.504 186.271 1080.86 274.484 1102.59 391.002Z" fill="url(#paint3_linear)"/>
            <path fill-rule="evenodd" clip-rule="evenodd" d="M1337.01 0L1536 0V56.2712V100.495C1515.12 117.055 1488.92 126.91 1460.48 126.91C1392.29 126.91 1337.01 70.2737 1337.01 0.409416C1337.01 0.272894 1337.01 0.136421 1337.01 0Z" fill="url(#paint4_linear)"/>
            <defs>
            <linearGradient id="paint0_linear" x1="-2.92808e-05" y1="243.829" x2="1529.61" y2="26.2909" gradientUnits="userSpaceOnUse">
            <stop stop-color="#400C52"/>
            <stop offset="1" stop-color="#093094"/>
            </linearGradient>
            <linearGradient id="paint1_linear" x1="442.739" y1="675.898" x2="746.756" y2="532.252" gradientUnits="userSpaceOnUse">
            <stop stop-color="#0D3D52" stop-opacity="0"/>
            <stop stop-color="#192580" stop-opacity="0"/>
            <stop offset="1" stop-color="#9271B5"/>
            </linearGradient>
            <linearGradient id="paint2_linear" x1="-83.1134" y1="-15.5567" x2="345.24" y2="-15.5567" gradientUnits="userSpaceOnUse">
            <stop stop-color="#0D3D52" stop-opacity="0"/>
            <stop stop-color="#5C5C67" stop-opacity="0"/>
            <stop offset="0.558916" stop-color="#906F74" stop-opacity="0.39683"/>
            <stop offset="1" stop-color="#C66D6D" stop-opacity="0.67"/>
            </linearGradient>
            <linearGradient id="paint3_linear" x1="413.322" y1="437.225" x2="745.132" y2="461.673" gradientUnits="userSpaceOnUse">
            <stop stop-color="#E7DAFF"/>
            <stop offset="1" stop-color="#4700D0" stop-opacity="0"/>
            </linearGradient>
            <linearGradient id="paint4_linear" x1="1337.01" y1="-34.7979" x2="1599.93" y2="-33.5616" gradientUnits="userSpaceOnUse">
            <stop offset="0.0989583" stop-color="#C4C4C4" stop-opacity="0"/>
            <stop offset="1" stop-color="#BA05A8"/>
            </linearGradient>
            </defs>
        </svg>  
        <!-- <%
            if(session.getAttribute("id")!=null)
            {
            %>
            <h1 >Hey ${id} welcome</h1>
            <%
            }
            else
            {
            %>
            <h1>You're not autherized to view this page</h1>
            <%}%>

            <form action="logout" method="post">
                <input type="submit" value="logout">
            </form> -->
            <div class="innerContainer">
                <h1 class="greeting">It's nice to meet you!</h1>
                <p class="tagline">Some beautiful paths can't be discovered without getting lost.</p>
            </div>
            <div class="imgWithArticle">
                <div class="articleDiv">
                    <h1>Collect moments. Not things</h1>
                    
                    <p>Travel isn't always pretty. It isn't always comfortable. Sometimes it hurts, it even breaks your heart. But that's OK. The journey changes you; it should change you. It leaves
                     marks on your memory, on your consciousness, on your heart, and on your body. You take something with you. Hopefully, you leave something good behind.<br><br>
                    Is there something you want to do that freaks you out? Go for it! Sometimes, the scariest ideas turn into the best travel memories.<br><br>
                        Great words to live by. There's something exciting about exploring a new place every year. It can be a new country, a new city, or an interesting spot near your hometown.

                    </p>
                </div>
                <div class="articleImg">
                </div>
            </div>
            <div class="userFeedbacks">
                <h1>Dear Users</h1>
                <p>You're my favorite reason to lose sleep</p>
                <div class="user">
                    <div class="userImg" style="background-image: url('images/himanshu.jpg');"></div>    
                    <p>Bus timing was awesome but need to increase hygienic enviroment in the buses</p>
                    <h2>Himanshu Singh</h2>
                </div>
                <div class="user">
                    <div class="userImg" style="background-image: url('images/akashtonk.jpg');"></div>    
                    <p>The management is quite good and the service by this website is appreciated</p>
                    <h2>Akash Tonk</h2>
                </div>
            </div>
            <div class="photoGallery">
                <h1>Gallery</h1>
                <p>Our latest best photos</p>
                <p>We love to take picture and show them to the world</p>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus1.jpg');">
                        <h1>Zombie attack 258</h1>
                        <p>Once at Nanaksar peoples were picking up our bus like Zombies just because of lack of Goverment buses</p>
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus2.jpg');">
                        <h1>Save The Nature</h1>
                        <p>Electric buses have clean energy and can be a good alternative to diesel transportation vehicles to reduce 
                            environmental pollutants. Regardless of these benefits, the cost of longevity (12 years) of an electric 
                            bus is 12.5% less than the cost of a bus</p>
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus3.jpg');">
                        <h1>OMS</h1>
                        <p>The Outer Mudrika Service (OMS) is the longest route operated by Delhi Transport Cooperation. It covers the
                             distant parts of Delhi</p>
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus4.jpg');">
                        <h1>Breakdown</h1>
                        <p>Most disapointed thing while travelling in bus is Breakdown</p>
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus5.jpg');">
                        <h1>Anand Vihar the Legend</h1>
                        <p>Anand Vihar ISBT is like home if I reach ISBT then I can reach anywhare with less problems</p>
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/bus6.jpg');">
                        <h1>Old Buses</h1>
                        <p>The mofussil buses operate around 46 depots out of which 18 depots are of old DTC buses and rest
                             have low floor buses while the inter-state buses operate from the Three Inter State Bus Terminals
                              in Kashmiri Gate, Sarai Kale Khan and Anand Vihar.</p>
                    </div>
                </div>
            </div>
            <div class="footer">
                <h1>&copy;shivajiroadways.com</h1>
                <a  href="https://twitter.com/nishant29769070" class="social" style="background-image: url('images/twitter.png');"></a>
                <a href="https://www.facebook.com/profile.php?id=100006100632588" class="social" style="background-image: url('images/facebook.png');"></a>
                <a href="https://www.instagram.com/experimentswithcode/" class="social" style="background-image: url('images/instagram.png');"></a>
            </div>
    </div>

        
</body>
<script src="scripts/navPannel.js">

 
</script>
</html>
