<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 11.04.25
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="dbConnection.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>"/>
<sql:update var="count" dataSource="${db}">
    DELETE FROM PERSONS WHERE ID = ?
    <sql:param value="${id}"/>
</sql:update>

<p style="color: green">Record has been deleted successfully!</p>

<p><a href="./">Home</a></p>

</body>
</html>
