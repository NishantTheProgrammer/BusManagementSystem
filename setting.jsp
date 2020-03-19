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
    <title>Profile</title>
    <style>
        .staff
        {
            box-shadow: inset 4px 4px 10px rgba(0, 0, 0, 0.356), inset -5px -5px 12px 0 rgb(255, 255, 255);
            border-radius: 1vw;            
            width: 80%;
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
            padding-left: 10vw;
            padding-right: 5vw;
            width: 100%;
            table-layout: fixed;
        }
        .about table tr th
        {
            font-size: 2.5vw;
        }
        .about table tr td
        {
            font-size: 2.4vw;
        }
        td, th
        {
            text-transform: capitalize;
            text-align: left;
        }
        .editButton
        {
            color: black;
            float: left;
            border-radius: 5vw;
            width: 2.8vw;
            height: 2.8vw;
            font-size:2vw;
            padding: .2vw;
            background-image: url('./images/settings.png');
            background-repeat: no-repeat;
            background-size: 70% 70%;
            background-position: center;
            filter: grayscale(1);
            transition: ease all .5s;
        }
        .editButton:hover
        {
            box-shadow: 7px 7px 12px rgba(255, 255, 255, 0.45), -7px -7px 12px rgba(70, 70, 70, 0.13);
            filter: grayscale(0);   
            background-size: 90% 90%;
            cursor: pointer;
            transform: rotateZ(180deg);
        }
        .editButton:active
        {
            box-shadow: inset 7px 7px 12px rgba(255, 255, 255, 0.45), inset -7px -7px 12px rgba(70, 70, 70, 0.13);
        }
        .updationWindow
        {
            position: fixed;
            z-index: 2;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color:rgba(83, 83, 95, 0.90);
            box-shadow: 0 0 30px 4px rgba(0, 0, 0, 0.63);
            width: 0vw;
            height: 0vw;
            opacity: 0;
            border-radius: 5px;
            transition: ease all .5s;
            overflow: hidden;
        }
        #close
        {
            float: right;
            display: block;
            padding: 0.5vw;
            text-align: center;
            height: 2vw;
            width: 2vw;
            font-size: 1.5vw;
            margin: .5vw;
            color: white;
            user-select: none;
            border-radius: 10vw;
            transition: ease all .5s;
        }
        #close:hover
        {
            background-color:rgba(28, 28, 53, 0.63);
            cursor: pointer;
        }
        form
        {
            position: relative;
            display: none;
            clear: both;
            top: 35%;
            transform: translateY(-50%);
            font-family: sans-serif;
            margin: 0 auto;
            width: 80%;
            /* background-color: yellow; */
        }
        form input[type="text"], form input[type="password"], form input[type="range"], form input[type="search"]
        {
            display: block;
            outline: none;
            width: 60%;
            background: transparent;
            border: none;
            border-bottom: 1px solid rgb(197, 197, 197);
            font-size: 1vw;
            margin: 10px auto;
            padding: 10px;
            color: rgb(214, 205, 205);
            caret-color: rgb(214, 205, 205);
            animation-name: input2;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;
        }
        form h1
        {
            color: white;
            text-align: center;
            margin-bottom: 3vw;
        }
        form select
        { 
            display: block;
            outline: none;
            width: 65%;
            background: transparent;
            border: none;
            color: rgb(214, 205, 205);
            border: 1px solid rgb(197, 197, 197);
            font-size: 1vw;
            margin: 10px auto;
            padding: 10px;
            caret-color: rgb(214, 205, 205);
            animation-name: input2;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;

        }
        input[type="date"]
        {
            display: block;
            outline: none;
            width: 60%;
            background: transparent;
            border: none;
            color: rgb(214, 205, 205);
            border: 1px solid rgb(197, 197, 197);
            font-size: 1vw;
            margin: 10px auto;
            padding: 10px;
            caret-color: rgb(214, 205, 205);
            animation-name: input2;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;

        }
        form select option
        { 
            display: block;
            outline: none;
            width: 65%;
            background-color: rgb(83, 83, 95);
            border: none;
            color: white;
            border: 1px solid rgb(197, 197, 197);
            
            font-size: 1vw;
            margin: 10px auto;
            padding: 10px;
            caret-color: rgb(214, 205, 205);
            animation-name: input2;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;

        }
        form input[type="submit"], input[type="button"]
        {
            display: block;
            outline: none;
            /* width: 60%; */
            background: transparent;
            color: rgb(214, 205, 205);
            border: 2px solid white;
            border-radius: 10px;
            font-size: 1vw;
            font-weight: bold;
            margin: 10px auto;
            padding: 8px 18px;
        }
        form input[type="submit"]:hover, form input[type="submit"]:focus, input[type="button"]:hover, input[type="button"]:focus
        {
            position: relative;
            cursor: pointer;
            animation-name: submit;
            animation-duration: 1s;
            animation-fill-mode: forwards;
        }
        @keyframes submit
        {
        
            100%
            {
                
                color: black;
                background-color: white;
                box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.63);
                border-radius: 50px;
                
            }
        }

        form input::placeholder
        {
            color:  rgb(214, 205, 205);
        }

        input[type="text"]:focus, input[type="password"]:focus, input[type="search"]:focus
        {
            animation-name: input;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;
        }
        @keyframes input
        {
            
            100%
            {

                border-bottom:1.9px solid aqua;
                width: 80%;
                font-size: 1.4vw;
            }
        }
        select:focus
        {
            animation-name: select;
            animation-duration: 0.6s;
            animation-fill-mode: forwards;
        }
        @keyframes select
        {
            
            100%
            {
                border:1.9px solid aqua;
            }
        }
        optgroup
        {
            background-color: rgb(83, 83, 95);
        }

        option:disabled
        {
            color: rgb(214, 205, 205);
        }
        #dob::before
        {
            content: "D.O.B.: \00a0";
        }
        #result
        {
            color: rgb(87, 254, 45);
            display: none;
            position: relative;
            top: 30%;
            transform: translateY(-50%);
            clear: both;
            text-align: center;
            margin-bottom: 3vw;
        }
        </style>
    
</head>
<body>
    <div class="updationWindow">
        <div id="close" onclick="closeWindow();">&#10006;</div>
        <h1 id="result"></h1>
        <form id="nameForm" onsubmit="return updateData('name');">
            <input type="text" name="name" placeholder="Enter New Name">
            <input type="submit" value="Update">
        </form>
        <form id="phoneForm" onsubmit="return updateData('phone');">
            <input type="text" name="phone" placeholder="Enter New Phone No">
            <input type="submit" value="Update">
        </form>
        <form id="passwordForm" onsubmit="return updateData('password');">
            <input type="password" name="password" placeholder="Enter New Password">
            <input type="submit" value="Update">
        </form>
        <form id="walletBalanceForm" onsubmit="return updateData('walletBalance');">
            <input type="text" name="walletBalance" placeholder="Add Amount to be added">
            <input type="submit" value="Update">
        </form>
        <form id="dobForm" onsubmit="return updateData('dob');">
            <input type="date" id="dob" name='dob'>
            <input type="submit" value="Update">
        </form>
        <form id="licenceForm" onsubmit="return updateData('licenceNo');">
            <input type="text" name="licenceNo" placeholder="Enter Licence No">
            <input type="submit" value="Update">
        </form>
        <form id="experienceForm" onsubmit="return updateData('experience');">
            <input type="text" name="experience" placeholder="Enter Experience">
            <input type="submit" value="Update">
        </form>
    </div> 
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include> 
        <div class="innerContainer">
            <h1>-- Edit Your Profile! --</h1>
            <p>To provide bus services in very reasonable prices<br>
                with full of safty!</p>
        </div>     
        <div class="about" style="margin-top: 25vw; padding-bottom: 0.1vw;">            
            <h1>Profile!</h1>         
            <div class="staff">
                <table >
                    
                    <%@page import="java.sql.*"%>
                    <%
                    String role = (String)session.getAttribute("role");
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    String password = "";
                    try
                    {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
                            st = con.createStatement();

                            if(role.equals("admin"))
                            {
                                rs = st.executeQuery("select * from admin where email='"+session.getAttribute("email")+"'");
                                if(rs.next())
                                {
                                    for(int i = 0; i < rs.getString("password").length(); i++)
                                    {
                                        password += "&bull;";
                                    }
                                %>
                                    <tr>
                                        <th>Name</th><td><%=rs.getString("name")%><td><div class="editButton" onclick="change('name')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th><td><%=rs.getString("phone")%><td><div class="editButton" onclick="change('phone')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th><td><%=password%><td><div class="editButton" onclick="change('password')"></div></td>
                                    </tr>
                                <%}
                            }    

                            else if(role.equals("passanger"))
                            {
                                rs = st.executeQuery("select * from passanger where email='"+session.getAttribute("email")+"'");
                                if(rs.next())
                                {
                                    for(int i = 0; i < rs.getString("password").length(); i++)
                                    {
                                        password += "&bull;";
                                    }
                                %>
                                    <tr>
                                        <th>Name</th><td><%=rs.getString("name")%><td><div class="editButton" onclick="change('name')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th><td><%=rs.getString("phone")%><td><div class="editButton" onclick="change('phone')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th><td><%=password%><td><div class="editButton" onclick="change('password')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Balance</th><td>&#8377;<%=rs.getString("walletBalance")%><td><div class="editButton" onclick="change('walletBalance')"></div></td>
                                    </tr>
                                <%}
                            } 

                            else if(role.equals("ticketchecker"))
                            {
                                rs = st.executeQuery("select * from ticketchecker where email='"+session.getAttribute("email")+"'");
                                if(rs.next())
                                {
                                    for(int i = 0; i < rs.getString("password").length(); i++)
                                    {
                                        password += "&bull;";
                                    }
                                %>
                                    <tr>
                                        <th>Name</th><td><%=rs.getString("name")%><td><div class="editButton" onclick="change('name')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th><td><%=rs.getString("phone")%><td><div class="editButton" onclick="change('phone')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th><td><%=password%><td><div class="editButton" onclick="change('password')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>D.O.B.</th><td><%=rs.getString("dob")%><td><div class="editButton" onclick="change('dob')"></div></td>
                                    </tr>
                                <%}
                            } 

                            else if(role.equals("driver"))
                            {
                                rs = st.executeQuery("select * from driver where email='"+session.getAttribute("email")+"'");
                                if(rs.next())
                                {
                                    for(int i = 0; i < rs.getString("password").length(); i++)
                                    {
                                        password += "&bull;";
                                    }
                                %>
                                    <tr>
                                        <th>Name</th><td><%=rs.getString("name")%><td><div class="editButton" onclick="change('name')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th><td><%=rs.getString("phone")%><td><div class="editButton" onclick="change('phone')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th><td><%=password%><td><div class="editButton" onclick="change('password')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Licence</th><td><%=rs.getString("licenceNo")%><td><div class="editButton" onclick="change('licence')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Experience</th><td><%=rs.getString("experience")%> years<td><div class="editButton" onclick="change('experience')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>D.O.B.</th><td><%=rs.getString("dob")%><td><div class="editButton" onclick="change('dob')"></div></td>
                                    </tr>
                                <%}
                            } 

                            else if(role.equals("conductor"))
                            {
                                rs = st.executeQuery("select * from conductor where email='"+session.getAttribute("email")+"'");
                                if(rs.next())
                                {
                                    for(int i = 0; i < rs.getString("password").length(); i++)
                                    {
                                        password += "&bull;";
                                    }
                                %>
                                    <tr>
                                        <th>Name</th><td><%=rs.getString("name")%><td><div class="editButton" onclick="change('name')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Phone</th><td><%=rs.getString("phone")%><td><div class="editButton" onclick="change('phone')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>Password</th><td><%=password%><td><div class="editButton" onclick="change('password')"></div></td>
                                    </tr>
                                    <tr>
                                        <th>D.O.B.</th><td><%=rs.getString("dob")%><td><div class="editButton" onclick="change('dob')"></div></td>
                                    </tr>
                                <%}
                            }                          
                        }
                        catch(Exception e){out.print(e.getMessage());}
                    %> 
                </table>
            </div>
        </div>
    <jsp:include page="footer.jsp"></jsp:include>        
</body>
<script src="scripts/navPannel.js"></script>
<script>
    function change(arg)
    {
        var updatingWindow = document.getElementsByClassName("updationWindow")[0];
        updatingWindow.style.height = "20vw";
        updatingWindow.style.width = "40vw";
        updatingWindow.style.opacity = "1";
        if(arg == "name")
        {
            document.getElementById("nameForm").style.display = "block";
        }
        else if(arg == "phone")
        {
            document.getElementById("phoneForm").style.display = "block";
        }
        else if(arg == "password")
        {
            document.getElementById("passwordForm").style.display = "block";
        }
        else if(arg == "walletBalance")
        {
            document.getElementById("walletBalanceForm").style.display = "block";
        }
        else if(arg == "dob")
        {
            document.getElementById("dobForm").style.display = "block";
        }
        else if(arg == "licence")
        {
            document.getElementById("licenceForm").style.display = "block";
        }
        else if(arg == "experience")
        {
            document.getElementById("experienceForm").style.display = "block";
        }
    }
    
    function closeWindow()
    {
        var updatingWindow = document.getElementsByClassName("updationWindow")[0];
        updatingWindow.style.height = "0";
        updatingWindow.style.width = "0";
        updatingWindow.style.opacity = "0";
        var form = document.getElementsByTagName("form");
        for(i = 0; i < form.length; i++)
        {
            form[i].style.display = "none";
        }
    } 
    function updateData(item)
    {
        var value = document.getElementsByName(item)[0].value;
        console.log(item, value);
        var xmlhttp = new XMLHttpRequest();
        var param = "?item=" +  item + "&value=" + value;
        param = encodeURI(param);
        xmlhttp.open("POST", "updateProfile.jsp" + param, false);
        xmlhttp.onreadystatechange = function()
        {
            var result = document.getElementById("result");
            var form = document.getElementsByTagName("form");
            for(i = 0; i < form.length; i++)
            {
                form[i].style.display = "none";
            }
            result.style.display = "block";
            result.innerText = xmlhttp.responseText.trim();
            setInterval(function(){
                var updatingWindow = document.getElementsByClassName("updationWindow")[0];
                updatingWindow.style.height = "0";
                updatingWindow.style.width = "0";
                updatingWindow.style.opacity = "0";
            }, 1000);
            setInterval(function(){
                location.reload();
            }, 1500);
            
        }  
        xmlhttp.send();

        return false;
    } 
</script>
</html>
