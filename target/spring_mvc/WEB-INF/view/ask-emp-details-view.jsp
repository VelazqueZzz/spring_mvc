<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 19.04.2024
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <h2>please enter your details</h2>
    <br>
    <br>

<form:form action = "showDetails" modelAttribute="employee">
    name<form:input path="name"/>
    <br>
    <br>
    Surname<form:input path="surname"/>
    <br>
    <br>
    Salary<form:input path="salary"/>
    <br>
    <br>
    Department <form:select path="department">
      <form:options items="${employee.departments}"/>
</form:select>
    <br>
    <br>
    <input type="submit" value="OK"/>
    <br>
    <br>
</form:form>


</body>
</html>
