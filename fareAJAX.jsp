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
    }
    catch(Exception e){out.print(e.getMessage());}
%>
<%="&#x20B9;"+fare%>