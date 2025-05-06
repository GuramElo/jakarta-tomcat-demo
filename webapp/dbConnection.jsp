<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 04.04.25
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<sql:setDataSource
        var="db"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/UG"
        user="root"
        password="123456"/>