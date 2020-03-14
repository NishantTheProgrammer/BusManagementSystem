<%
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String role = request.getParameter("role");
    String password = request.getParameter("password");
    String balance = null;
    String licenceNo = null;
    String experience = null;
    String joiningDate = null;

    if(role.equals("Passanger"))
    {
        balance = request.getParameter("walletBalance");
        session.setAttribute("tempBalance", balance);
    }
    if(role.equals("Driver"))
    {
        licenceNo = request.getParameter("licenceNo");
        experience = request.getParameter("experience");
        joiningDate = request.getParameter("joiningDate");
        session.setAttribute("tempLicenceNo", licenceNo);
        session.setAttribute("tempExperience", experience);
        session.setAttribute("tempJoiningDate", joiningDate);
    }
    if(role.equals("Conductor"))
    {
        joiningDate = request.getParameter("joiningDate");
        session.setAttribute("tempJoiningDate", joiningDate);
    }
    if(role.equals("Ticket Checker"))
    {
        joiningDate = request.getParameter("joiningDate");
        session.setAttribute("tempJoiningDate", joiningDate);
    }
    session.setAttribute("tempName", name);
    session.setAttribute("tempPhone", phone);
    session.setAttribute("tempEmail", email);
    session.setAttribute("tempRole", role);
    session.setAttribute("tempPassword", password);
    response.sendRedirect("test2.jsp");
%>