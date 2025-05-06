<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 11.04.25
  Time: 19:54
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

<c:set var="id" value="<%=id%>" />
<sql:query var="rs" dataSource="${db}">
    SELECT * FROM PERSONS WHERE ID = ?
    <sql:param value="${id}"/>
</sql:query>

<c:forEach var="item" items="${rs.rows}" varStatus="loopStatus">
    <c:if test="${loopStatus.index == 0}">
        <form action="./update.jsp?id=<%=id%>" method="post" target="_self">
            First name: <input name="first_name" type="text" value="<c:out value="${item.FIRST_NAME}"/>">
            Last name: <input name="last_name" type="text" value="<c:out value="${item.LAST_NAME}"/>">
            <input type="submit" value="Submit">
        </form>
    </c:if>
</c:forEach>

</body>
</html>
