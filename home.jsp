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

    <jsp:include page="navigationPannel.jsp"></jsp:include>
    
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include>  

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
            <jsp:include page="footer.jsp"></jsp:include>
    </div>

        
</body>
<script src="scripts/navPannel.js">

 
</script>
</html>
