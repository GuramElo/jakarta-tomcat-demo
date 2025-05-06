<%--
  Created by IntelliJ IDEA.
  User: nikoloz
  Date: 04.04.25
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post" action="./checkData.jsp" target="_self">

  <label for="first_name">First name:</label>
  <input type="text" name="first_name" id="first_name">

  <label for="last_name">Last name:</label>
  <input type="text" name="last_name" id="last_name">

  <input type="submit" value="Submit">

</form>

</body>
</html>
