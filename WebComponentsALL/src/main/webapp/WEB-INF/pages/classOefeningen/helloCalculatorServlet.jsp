<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: ERICF
  Date: 06/09/2019
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
    //int s =  ${sessionScope.history.size();};

%>


<%--%> ${sessionScope.history.size()}<%--%>

<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>The JSP Calculator</h1>
<form method='POST'>
    <%String message = (String) request.getAttribute("message");%><br/>

    The session result : ${result} <br/>
   <p> <% out.print(message);%> </p>
    Result: ${requestScope.result}<br/>
    <% List<String> history = (List<String>) request.getAttribute("history");%>
    <p>
        <%
            for (String s : history) {
                out.print(s);%><br/><%
        }%>
    </p>


    <input type='number' name='number'/><br/>
    <button name='operation' type='submit' value='+'>+</button>
    <button name='operation' type='submit' value='-'>-</button>
    <button name='operation' type='submit' value='*'>*</button>
    <button name='operation' type='submit' value='/'>/</button>
    <button name='operation' type='submit' value='CE'>CE</button>
</form>
</body>
</html>

