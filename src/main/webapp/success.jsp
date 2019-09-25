<%
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in here!<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out from here!</a>
<%
    }
%>