<%-- 
    Document   : lesson4_6
    Created on : 2016/08/19, 11:15:15
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
        <%
            //自分のメールアドレスの「@」以降の文字を取得して、表示してください。
        String myaddress = "bulitz7751@gmail.com";
        out.print(myaddress.substring(11));
        %>
    </body>
</html>
