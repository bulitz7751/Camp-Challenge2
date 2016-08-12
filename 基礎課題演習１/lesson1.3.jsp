<%-- 
    Document   : lesson3
    Created on : 2016/08/02, 14:09:07
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
	final String LINE_BREAK = "<br>";
            out.println("私の名前は飯沼靖博です" + LINE_BREAK);
            out.println("青山学院大学に所属しています" + LINE_BREAK);
            out.println("大学時代にはお笑いをやっていました" + LINE_BREAK);
            
        
%>

        
    </body>
</html>
