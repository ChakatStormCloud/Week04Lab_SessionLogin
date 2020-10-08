<%-- 
    Document   : home
    Created on : 7-Oct-2020, 8:11:02 PM
    Author     : StormCloud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <h3>Hello ${username.name}</h3>
        <div>
            <a href="login?logout=true">Log out</a>
        </div>
    </body>
</html>
