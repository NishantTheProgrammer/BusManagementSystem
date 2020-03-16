<%@page import="java.sql.*"%>
<%
    String password = request.getParameter("newPassword");
    String email = (String)session.getAttribute("emailForOTP");
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select 'admin' as tablename from admin  where email = '"+email+"' union select 'passanger' as tablename from  passanger  where email = '"+email+"' union select 'conductor' as tablename from conductor  where email = '"+email+"' union select 'ticketchecker' as tablename from ticketchecker  where email = '"+email+"'";
        rs = st.executeQuery(query);
        rs.next();
        query = "update "+rs.getString("tablename")+" set password = '"+password+"' where email = '"+email+"'";
        st.executeUpdate(query);
        %>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <meta http-equiv="refresh" content="3;url=authentication.jsp" />
            <link rel="stylesheet" href="styles/style.css">
            <link rel="stylesheet" href="styles/authentication.css">
            <link rel="icon" href="images/icon.png">
            <title>Password Updated</title>
            <style>
                .container
                {
                    background-color: rgb(83, 83, 95)
                }
                h1
                {
                    color: white;
                    text-shadow: 0px 0px 5px black;
                    text-align: center;
                    position: relative;
                    top: 50%;
                    transform: translateY(-50%);
                }
            </style>
        </head>
        <body>
            <div class="container">
                <h1>Password Updated<h1>
            </div>
        </body>
        <script src="scripts/authentication.js"></script>
        </html>
        <%
    }
    catch(Exception e){ out.print(e.getMessage()); }
%>