<%-- 
    Document   : lesson2.5
    Created on : 2016/08/04, 13:31:58
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
           //for文を利用して、0から100を全部足す処理を実現してください。

            int sum = 0;
                    for(int i = 1; i < 101; i++){
                     sum += i;}
                    out.print(sum + "<br>");
                    
 
                    %>
    </body>
</html>
