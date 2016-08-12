<%-- 
    Document   : lesson2.3
    Created on : 2016/08/04, 11:48:31
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
            long num = 1;
            for (int i = 0;i < 20; i++){{
                num = num * 8;}
            out.print(num+"<br>");}
                        
           
        
                 
            %>
    </body>
</html>
