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
    <style>
        .staff
        {
            box-shadow: inset 4px 4px 10px rgba(0, 0, 0, 0.356), inset -5px -5px 12px 0 rgb(255, 255, 255);
            border-radius: 1vw;            
            width: 90%;
            padding-top: 4vw;
            padding-bottom: 4vw;
            margin: 4vw auto;
        }
        .staff h2
        {
            font-size: 2.8vw;
        }
        .about table
        {
            margin-top: 2vw;

            width: 100%;
            table-layout: fixed;
        }
        .about table tr th
        {
            font-size: 1.3vw;
        }
        .about table tr td
        {
            font-size: 2.5vw;
        }
        td img
        {
            height: 6vw;
            width: 6vw;
        }
    </style>
    
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
                    <div class="leaderImg" style="background-image: url('images/himanshu.jpg');"></div>
                    <h1>Himanshu</h1>
                    <p>Founder</p>
                    <div class="aboutLeader">Himanshu Singh (born 13 October 1999), known professionally
                        as MRTN Influencer, he is strategist in ruins of erangle who works primarily as Mathematics Teacher.
                        He's the founder of <span style="color:brown;">Shivaji Roadways</span>
                    </div>
                </div>
                <div class="leader">
                    <div class="leaderImg" style="background-image: url('images/akashtonk.jpg');"></div>
                    <h1>Akash Tonk</h1>
                    <p>Investor</p>
                    <div class="aboutLeader">Akash Tonk is one of lead investor of giant compenies some of them are Netfilx
                        and Amazone Prime.
                        The flipkart guy can recorganize him just by first sight of his phone no. and he's biggest investor in 
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

        <div class="about" style="margin-top: 5vw; padding-bottom: 0.1vw;">            
            <h1>Statistics!</h1>
            <div class="staff">
                <h2>Staff</h2>
                <table>
                    <tr>
                        <th>Driver</th>
                        <th>Conductor</th>
                        <th>TicketChecker</th>
                    </tr>
                    <tr>
                        <%@page import="java.sql.*"%>
                        <%
                            String applicationNo = request.getParameter("applicationNO");
                            String email = (String)session.getAttribute("email");
            
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try
                            {
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
                                st = con.createStatement();
                                rs = st.executeQuery("select count(*) as count from Driver");
                                if(rs.next())
                                {%>
                                    <td><%=rs.getString("count")%></td>
                                <%}
                                rs = st.executeQuery("select count(*) as count from Conductor");
                                if(rs.next())
                                {%>
                                    <td><%=rs.getString("count")%></td>
                                <%}
                                rs = st.executeQuery("select count(*) as count from TicketChecker");
                                if(rs.next())
                                {%>
                                    <td><%=rs.getString("count")%></td>
                                <%}
                            }
                            catch(Exception e){out.print(e.getMessage());}
                            %>
                            </tr>
                        </table>
                        <h2 style="margin-top: 4vw;">Passangers</h2>
                        <%
                            rs = st.executeQuery("select count(*) as count from Passanger");
                            if(rs.next())
                            {%>
                                <p style="font-size: 2.8vw;  padding-bottom: 0; text-align: center;"><%=rs.getString("count")%></p>
                            <%}
                        %>
                        
                    </div>
            <div class="staff">
                <h2>Soled Tickets</h2>
                <table>
                    <tr>
                        <td><img src="images/ac.png"></td>
                        <td rowspan="3" style="font-size: 5vw;">+</td>
                        <td><img src="images/ord.png"></td>
                        <td rowspan="3" style="font-size: 5vw;">=</td>
                        <th style="font-size: 2vw;">Total</th>
                    </tr>
                    <tr>
                        <th>AC</th>
                        <th>Ordinary</th>
                        <%
                            rs = st.executeQuery("select count(*) as count from ticketOutput");
                            if(rs.next())
                            {%>
                                <td><%=rs.getString("count")%></td>
                            <%}
                        %>
                        
                    </tr>
                    <tr>
                        <%
                            rs = st.executeQuery("select count(*) as count from ticketOutput where type='AC'");
                            if(rs.next())
                            {%>
                                <td><%=rs.getString("count")%></td>
                            <%}
                            rs = st.executeQuery("select count(*) as count from ticketOutput where type='ORD'");
                            if(rs.next())
                            {%>
                                <td><%=rs.getString("count")%></td>
                            <%}
                        %>
                    </tr>
                    <tr style="height: 10vw;">
                        <%
                            rs = st.executeQuery("select sum(fare) as sum from ticketOutput");
                            if(rs.next())
                            {%>
                                <td colspan="5">Total Revenue: &#8377;<%=rs.getString("sum")%></td>
                            <%}
                        %>
                    </tr>
                </table>
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
