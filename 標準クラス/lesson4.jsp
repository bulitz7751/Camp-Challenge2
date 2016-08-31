<%-- 
    Document   : lesson4_4
    Created on : 2016/08/19, 10:40:35
    Author     : iinuma yasuhiro
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.*" %>
        <%
        //2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示してください。
        Calendar cal1 = Calendar.getInstance();
        cal1.set(2015,01,01,00,00,00);
        Date d1 = cal1.getTime();
        
        Calendar cal2 = Calendar.getInstance();
        cal2.set(2015,12,31,23,59,59);
        Date d2 = cal2.getTime();
        
        out.println(d2.getTime() - d1.getTime() + "秒差");//なんで最初に"秒差は"を入力するとエラーが起きるのか
        %>
    </body>
</html>
