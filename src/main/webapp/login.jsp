<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://172.17.0.3:3306/sample",
            "aminos", "1234");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userName + "' and password='" +password + "';");
    if (rs.next()) {
        session.setAttribute("userName", userName);
        response.sendRedirect("success.jsp");
    } else {

        out.println("its an Invalid password <a href='index.jsp'>try again</a>");
    }
%>