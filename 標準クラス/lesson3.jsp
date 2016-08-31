<%-- 
    Document   : lesson4_3
    Created on : 2016/08/18, 22:18:06
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
            //2016年11月4日 10時0分0秒のタイムスタンプを作成し、「年-月-日 時:分:秒」で表示してください。
           Calendar cal = Calendar.getInstance();
           cal.set(2016,11,04,10,00,00);
           Date d = cal.getTime();
           
           SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日hh時mm分ss秒");
           String sdate = sdf.format(d);
           out.print(d);
        
           
            %>
            
            
        
    </body>
</html>
