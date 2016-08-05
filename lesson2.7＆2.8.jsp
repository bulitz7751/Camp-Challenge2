<%-- 
    Document   : lesson2.7
    Created on : 2016/08/04, 14:24:18
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
            String sArr[]={"10", "100", "soeda", "hayashi", "-20", "118", "END"};
            sArr[2] = "33";
            out.println(sArr[2]);
            

                
 
                %>

    </body>
</html>
