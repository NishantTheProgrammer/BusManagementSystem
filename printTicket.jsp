<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/ticket.css">
    <link rel="icon" href="images/icon.png">
    <title>Ticket</title>

</head>
<body onload="print();">
<%@page import="java.sql.*"%>
<%
    int fare = 0;
    String routeNo = request.getParameter("routeNo");
    String sourceName = request.getParameter("source");
    String destinationName = request.getParameter("destination");
    String busType = request.getParameter("type");
    int no = Integer.parseInt(request.getParameter("noOfPassangers"));
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select standNo from routestands where routeNo='" + routeNo + "' and standName='" + sourceName + "' union select standNo from routestands where routeNo='" + routeNo + "' and standName='" + destinationName + "';";
        rs = st.executeQuery(query);
        rs.next();
        int sourceNo = rs.getInt("standNo");
        rs.next();
        int destinationNo = rs.getInt("standNo");
        int destance = Math.abs(sourceNo - destinationNo);
        if(busType.equals("ORD"))
        {
            if(destance <= 2)
                fare = 5 * no;
            else if(destance <= 5)
                fare = 10 * no;
            else
                fare = 15 * no;
        }
        else if(busType.equals("AC"))
        {
            if(destance <= 2)
                fare = 10 * no;
            else if(destance <= 4)
                fare = 15 * no;
            else if(destance <= 6)
                fare = 20 * no;
            else
                fare = 25 * no;
        }

        query = "insert into ticket(routeNo, source, destination, passangerId, type, noOfpassangers, fare) values('" +routeNo+ "', '" +sourceName+ "', '" +destinationName+ "', 1102, '" +busType+ "', " +no+ ", " +fare+ ");";
        st.executeUpdate(query);
        rs = st.executeQuery("select * from ticketoutput where passangerId = 1102 order by bookingDate desc limit 1;");
        rs.next();
    }
    catch(Exception e){out.print(e.getMessage());}
%>

    <h1 id="msg">CTRL + P for Print Ticket (<span style="color: red">balance have already deducted</span>)</h1>

    <div class="container"">
        <p style="font-size: 35px; text-align: center; ">Shivaji Roadways</p>
        <div style="width: 100%;">
            <span id="busNo"><%=rs.getInt("passangerId")%></span>
            <span class="dateTime" style="float: right;"><%=rs.getString("bookingDate")%></span>
        </div>
        <div style="text-align: center;">
            <span id="ticketNo"><%=busType%> <%=rs.getString("ticketNo")%></span><span style="margin-left: 20px;"><%=rs.getString("routeNo")%></span>
        </div>
        <p style="width: 100%;"><%=rs.getString("source")%><span style="float: right; ;">To</span></span></p>
        <p style="text-align: right;"><%=rs.getString("destination")%></p>
        <p style="text-align: center;">Passangers: <%=rs.getInt("noOfPassangers")%></p>
        <p style="text-align: center; font-size: 17px;">Not transferable</p>
        <p style="text-align: center; font-size: 50px; font-weight: bold;">FARE: <span>&#x20B9;<%=rs.getInt("fare")%></span></p>
    </div>
</body>
</html>