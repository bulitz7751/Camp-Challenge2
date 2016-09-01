<%-- 
    Document   : lesson2.6
    Created on : 2016/08/04, 13:41:34
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
        <% //while文を利用して、以下の処理を実現してください1000を2で割り続け、100より小さくなったらループを抜ける処理
            
int num = 1000;

        
        while (num > 100){
            num /= 2;
            out.print(num + "<br>");
        }
            
        %>
    </body>
</html>
