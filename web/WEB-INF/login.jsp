<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : login
    Created on : 7-Oct-2020, 8:10:43 PM
    Author     : StormCloud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <div>
            <form action="login" method="POST">
                <div><label>Username:</label><input type="text" name="username" value="${username}" /></div>
                <div><label>Password:</label><input type="password" name="password" value="${password}" /></div>
                <input type="submit" value="Log in" />
            </form>
            <div>
                <c:if test="${logout==true}">
                    <p>Logged out successfully.</p>
                </c:if>
                <c:if test="${authfailed==true}">
                    <p>Incorrect username or password.</p>
                </c:if>
            </div>
        </div>
    </body>
</html>
