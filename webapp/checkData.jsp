<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 04.04.25
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
%>

<ul>
    <li><%=firstName%>
    </li>
    <li><%=lastName%>
    </li>
</ul>

<a href="./insertData.jsp?first_name=<%=firstName%>&last_name=<%=lastName%>">Send</a>

</body>
</html>
