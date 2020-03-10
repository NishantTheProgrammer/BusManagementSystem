<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/policies.css">
    <link rel="icon" href="images/icon.png">
    <title>Policies</title>
    
</head>
<body>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select pName, pDescription from Policy";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include>  
        <div class="innerContainer">
            <h1>-- Our Policies --</h1>
            <p>Specifying policies is best way to avoid misunderstandings!</p>
        </div>
        <%
            while(rs.next())
            {%>
                <div class="policy">            
                    <h1><%=rs.getString("pName")%></h1>
                    <p><%=rs.getString("pDescription")%></p>
                </div>
            <%}
        %>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

        
</body>
<script src="scripts/navPannel.js">

 
</script>
</html>
