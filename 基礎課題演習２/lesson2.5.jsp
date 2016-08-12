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
            int num = 0;
                    for(int i = 0; i < 100; i++){{
                     num = num + 1;}
                    out.print(num + "<br>");}
                    %>
    </body>
</html>
