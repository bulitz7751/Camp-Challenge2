<%-- 
    Document   : lesson4_5
    Created on : 2016/08/19, 11:05:10
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
        <%
            //自分の氏名について、バイト数と文字数を取得して、表示してください。
            String name = "飯沼靖博";
            out.print("名前の文字数は" + name.length() + "<br>");
            out.print("バイト数は" + name.getBytes());//バイト数ってこれで出ないの？
            %>

    </body>
</html>
