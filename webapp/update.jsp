<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 11.04.25
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="dbConnection.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = request.getParameter("id");
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
%>

<c:set var="id" value="<%=id%>" />
<c:set var="firstName" value="<%=firstName%>" />
<c:set var="lastName" value="<%=lastName%>" />
<sql:update var="count" dataSource="${db}">
    UPDATE PERSONS SET FIRST_NAME = ?, LAST_NAME = ? WHERE ID = ?
    <sql:param value="${firstName}"/>
    <sql:param value="${lastName}"/>
    <sql:param value="${id}"/>
</sql:update>

<p style="color: green">Data was updated</p>

<p><a href="./">Home</a></p>

</body>
</html>
