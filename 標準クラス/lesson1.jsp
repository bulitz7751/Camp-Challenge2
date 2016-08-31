<%-- 
    Document   : lesson4_1
    Created on : 2016/08/18, 21:49:36
    Author     : iinuma yasuhiro
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.*" %>

        <%
            //2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd/hh:mm:ss");
        Date time = sdf.parse("2016/01/01/00:00:00");
        
        out.println(time.getTime());
        
                %>
        
    </body>
</html>
