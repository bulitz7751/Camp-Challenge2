<%-- 
    Document   : lesson4
    Created on : 2016/08/02, 14:17:27
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
            int x = 20;
           int y = 10;
           int sum = x + y;
           int dif = x - y;
           int pro = x * y;
           int quo = x / y;
           out.println(sum)<br>;
            out.println(dif);
             out.println(pro);
              out.println(quo);
           
            final int a = 100;
            final int b = 10000;
            int sum1 = a + b;
           int dif1 = b - a;
           int pro1 = a * b;
           int quo1 = b / a;
           out.println(sum1);
           out.println(dif1);
           out.println(pro1);
           out.println(quo1);
           
            
            

            
                                    %>
    </body>
</html>
