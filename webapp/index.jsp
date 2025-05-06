<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="dbConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<sql:query var="rs" dataSource="${db}">
    SELECT * FROM PERSONS
</sql:query>

<a href="./addRecord.jsp">Add record</a>

<table>

    <tr>
        <th>ID</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Action</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${rs.rows}" var="student">
        <tr>
            <td>${student.ID}</td>
            <td>${student.FIRST_NAME}</td>
            <td>${student.LAST_NAME}</td>
            <td><a href="./updateRecord.jsp?id=${student.ID}">Update</a></td>
            <td><a href="./delete.jsp?id=${student.ID}">Delete</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>