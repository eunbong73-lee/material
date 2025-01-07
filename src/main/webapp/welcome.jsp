<%@page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" %>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <h2>Welcome</h2>
    <p>Hello, <%= session.getAttribute("username") %>! You have successfully logged in.</p>
    <form action="logout" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>