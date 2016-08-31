<%-- 
    Document   : lesson2.2
    Created on : 2016/08/04, 11:13:43
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
            char a = 'A';
            String message = "";
            switch (a) {
                case 'A':
                    message = "英語です。";
                    break;
                case 'あ':
                    message = "日本語。";
                    break;
                    
            }
            out.println(message);
            


            %>
            
    </body>
</html>
