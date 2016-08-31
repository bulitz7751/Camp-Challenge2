<%-- 
    Document   : lesson10
    Created on : 2016/08/31, 14:49:41
    Author     : iinuma yasuhiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/Database/Lesson10" method="post">
            削除したいID:<input type="number" name="Id"/>
            <br>
            <br>
            <input type="submit" value="送信">
        </form>
    </body>
</html>
