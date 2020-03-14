<%@page import="java.sql.*"%><%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   String fileName = "";
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               String fieldName = fi.getFieldName();
               fileName = fi.getName();
               boolean isInMemory = fi.isInMemory();
               long sizeInBytes = fi.getSize();
            
               // Write the file
               if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }
               fi.write( file ) ;
               out.println("Uploaded Filename: " + filePath + 
               fileName + "<br>");
            }
         }
         out.println("</body>");
         out.println("</html>");
      } catch(Exception ex) {
         System.out.println(ex);
      }
   } else {
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }


    String name = (String)session.getAttribute("tempName");
    String email = (String)session.getAttribute("tempEmail");
    String phone = (String)session.getAttribute("tempPhone");
    String role = (String)session.getAttribute("tempRole");
    String password = (String)session.getAttribute("tempPassword");
    String balance = null;
    String licenceNo = null;
    String experience = null;
    String joiningDate = null;

    out.print("name: "+name+" Email: "+email+" Phone: "+phone+" Role: "+role+" Password: "+password);



    Connection con = null;
    Statement st = null;
    String query = null;

    if(role.equals("Admin"))
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            query = "insert into Email values('" + email + "')";
            st.executeUpdate(query);
            query = "insert into admin(email, name, phone, password, profilePic) values('"+email+"', '"+name+"', '"+phone+"', '"+password+"', '"+fileName+"');";
            st.executeUpdate(query);
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }
    }

    if(role.equals("Passanger"))
    {
        balance = (String)session.getAttribute("tempBalance");
        out.print(" account balance: "+balance);
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            query = "insert into Email values('" + email + "')";
            st.executeUpdate(query);
            query = "insert into passanger(email, name, phone, password, walletBalance, profilePic) values('"+email+"', '"+name+"', '"+phone+"', '"+password+"', '"+Integer.parseInt(balance)+"', '"+fileName+"');";
            st.executeUpdate(query);
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }
    }
 
    if(role.equals("Driver"))
    {
        licenceNo = (String)session.getAttribute("tempLicenceNo");
        experience = (String)session.getAttribute("tempExperience");
        joiningDate = (String)session.getAttribute("tempJoiningDate");

        out.print(" licenceNo: "+licenceNo+" experience: "+experience+" joiningDate: "+joiningDate);

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            query = "insert into Email values('" + email + "')";
            st.executeUpdate(query);
            query = "insert into driver(email, name, phone, password, licenceNo, experience, dob, profilePic)  values('"+email+"', '"+name+"', '"+phone+"', '"+password+"', '"+licenceNo+"', '"+Integer.parseInt(experience)+"', '"+joiningDate+"');";
            st.executeUpdate(query);
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }
    }

    if(role.equals("Conductor"))
    {
        joiningDate = (String)session.getAttribute("tempJoiningDate");

        out.print(" joiningDate: "+joiningDate);

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            query = "insert into Email values('" + email + "')";
            st.executeUpdate(query);
            query = "insert into conductor(email, name, phone, password, dob, profilePic)  values('"+email+"', '"+name+"', '"+phone+"', '"+password+"', '"+joiningDate+"', '"+fileName+"');";
            st.executeUpdate(query);
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }
    }
    if(role.equals("Ticket Checker"))
    {
        joiningDate = (String)session.getAttribute("tempJoiningDate");

        out.print(" joiningDate: "+joiningDate);

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
            st = con.createStatement();
            query = "insert into Email values('" + email + "')";
            st.executeUpdate(query);
            query = "insert into ticketchecker(email, name, phone, password, dob, profilePic)  values('"+email+"', '"+name+"', '"+phone+"', '"+password+"', '"+joiningDate+"', '"+fileName+"');";
            st.executeUpdate(query);
        }
        catch(Exception e)
        {
            out.print(e.getMessage());
        }
    }




%>