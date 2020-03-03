<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/about.css">
    <link rel="icon" href="images/icon.png">
    <title>About</title>
    
</head>
<body>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include> 
        <div class="innerContainer">
            <h1>-- Our Mission --</h1>
            <p>To provide bus services in very reasonable prices<br>
                with full of safty!</p>
        </div>
        <div class="about">            
            <h1>About!</h1>
            <p>At <b>Shivaji Roadways</b>, we all come to work every day because we 
                want to solve the biggest problem which is transport. Everyone
                is guessing. Publishers don't know what apps to build,
                how to monetize them, or even what to price them at. 
                Advertisers & brands don't know where their target 
                users are, how to reach them, or even how much they 
                need to spend in order to do so. Investors aren't sure 
                which apps and genres are growing the quickest, and where
                users are really spending their time (and money).<br>

                Throughout the history of business, people use data to make
                more informed decisions. Our mission at Apptopia is to make
                the app economy more transparent. Today we provide the most
                actionable mobile app data & insights in the industry. We
                want to make this data available to as many people as 
                possible (not just the top 5%).</p>
        </div>
        <div class="leadership">
            <h1>leadership</h1>
            <div class="leaderRow">
                <div class="leader">
                    <div class="leaderImg" style="background-image: url('images/rajnikanth.jpg');"></div>
                    <h1>Rajnikanth</h1>
                    <p>Founder</p>
                    <div class="aboutLeader">Shivaji Rao Gaekwad (born 12 December 1950), known professionally
                        as Rajinikanth, is an Indian film actor who works primarily in Tamil cinema.
                        He's the founder of <span style="color:brown;">Shivaji Roadways</span>
                    </div>
                </div>
                <div class="leader">
                    <div class="leaderImg" style="background-image: url('images/mark.jpg');"></div>
                    <h1>Mark Zukarbarg</h1>
                    <p>investor</p>
                    <div class="aboutLeader">Mark Zukarbarg is an American computer programmer an 
                        Internet entrepreneur. He is the foonder an CEO o Facebook, an wis named 
                        Time magazine's "Person o the Year" in 2010 and he's biggest investor in 
                        <span style="color:brown;">Shivaji Roadways</span>
                    </div>
                </div>
            </div>
            <div class="leaderRow">
                <div class="leader">
                    <div class="leaderImg" style="background-image: url('images/nishant.jpg');"></div>
                    <h1>Nishant</h1>
                    <p>Senior Programmer</p>
                    <div class="aboutLeader">Nishant leads our engineering team and he's responsible for
                        <span style="color:brown;">Shivaji Roadways</span> underlying technology. His
                        focus & passion is on database management and backend as well front end</div>
                </div>
                <div class="leader">
                    <div class="leaderImg" style="background-image: url('images/sunny.jpeg');"></div>
                    <h1>Sunny Prajapati</h1>
                    <p>Cyber Security Expert</p>
                    <div class="aboutLeader">Sunny is a well-respected authority on Internet security,
                        net crime, fraud mitigation, and technology implementation. He's securing  
                        <span style="color:brown;">Shivaji Roadways</span> since 10 years
                    </div>
                </div>
            </div>
        </div>
        <div class="contacts">
            <h1>Contacts</h1>
            <p>
                
                <table>
                    <tr>
                        <td><b>Location:</b></td>
                        <td>Ramlila Maidan</td>
                    </tr>
                    <tr>
                        <td><b>Email:</b></td>
                        <td>knishant113@gmail.com</td>
                    </tr>
                    <tr>
                        <td><b>Moblile No.: </b></td>
                        <td>9999999999</td>
                    </tr>
                    <tr>
                        <td><b>Website:</b></td>
                        <td>shivajiroadways.com</td>
                    </tr>
                </table>
            </p>
        </div>
    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>

        
</body>
<script src="scripts/navPannel.js">

 
</script>
</html>
