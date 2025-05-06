<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="dbConnection.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 04.04.25
  Time: 19:44
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

<c:set var="firstName" value="<%=firstName%>"/>
<c:set var="lastName" value="<%=lastName%>"/>
<sql:update dataSource="${db}" var="res">
    INSERT INTO PERSONS(FIRST_NAME, LAST_NAME) VALUES (?, ?)
    <sql:param value="${firstName}" />
    <sql:param value="${lastName}" />
</sql:update>

<p style="color: green"> Data was inserted!
</p>

<a href="./">Home</a>

</body>
</html>
