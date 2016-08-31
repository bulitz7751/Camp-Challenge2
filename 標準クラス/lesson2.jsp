<%-- 
    Document   : lesson4_2
    Created on : 2016/08/18, 22:07:36
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
            //現在の日時を「年-月-日 時:分:秒」で表示してください。
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 hh:mm:ss");
            String sdate = sdf.format(date);
            out.println(sdate);
            %>
    </body>
</html>
