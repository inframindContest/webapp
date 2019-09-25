<%
    if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome man <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>