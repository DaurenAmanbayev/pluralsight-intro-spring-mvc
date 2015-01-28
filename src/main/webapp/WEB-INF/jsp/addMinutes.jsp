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
    <script src="jquery-1.11.2.min.js"></script>
    <script>
        $(function() {
            $.getJSON('<spring:url value="/activities.json" />', {
                ajax: 'true'
            }, function(data) {
                var html = '<option value="">--Please select one--</option>';
                var len = data.length;
                for (var i = 0; i < len; i++) {
                    html += '<option value="' + data[i].desc + '">'
                            + data[i].desc + '</option>';
                }

                $('#activities').html(html);
            });
        });
    </script>
</head>
<body>
    <h1>Add Minutes Exercised</h1>

    Language: <a href="?language=en">English</a> | <a href="?language=es">Español</a>
    <form:form commandName="exercise">
        <table>
            <tr>
                <td><spring:message code="goal.text" /></td>
                <td><form:input path="minutes" /></td>
                <td>
                    <form:select id="activities" path="activity">

                    </form:select>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="Enter Exercise" />
                </td>
            </tr>
        </table>
    </form:form>

    <h1>Our goal for the day is: ${goal.minutes} minutes</h1>
</body>
</html>
