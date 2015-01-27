<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: daniel.arlitt
  Date: 1/16/15
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Minutes Page</title>
</head>
<body>
    <h1>Add Minutes Exercised</h1>

    Language: <a href="?language=en">English</a> | <a href="?language=es">Español</a>
    <form:form commandName="exercise">
        <table>
            <tr>
                <td><spring:message code="goal.text" /></td>
                <td><form:input path="minutes" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Enter Exercise" />
                </td>
            </tr>
        </table>
    </form:form>

    <h1>Our goal for the day is: ${goal.minutes} minutes</h1>
</body>
</html>
