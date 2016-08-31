<%-- 
    Document   : lesson12
    Created on : 2016/08/31, 15:35:36
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
        <form action="/Database/Lesson12" method="post">
            <h1>— 検索 —</h1>
            <br>
            <br>
            名前：<input type="text" name="Name"/>
            <br>
            <br>
            年齢：<input type="number" name="Age"/>
            <br>
            <br>
            生年月日：<select name="Year">
            <option value="">----</option>
            <% for(int i = 1980; i<=2000; i++) { %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            年 
            <select name="Month">
            <option value="">--</option>
            <% for(int i = 1; i<=12; i++) { %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
            </select>
            月 
            <select name="Day">
            <option value="">--</option>
            <% for(int i = 1; i<=31; i++) { %>
            <option value="1">1</option>
            <% } %>
            </select>
            日
            <br>
            <br>
            <input type="submit" value="検索">
        </form>
    </body>
</html>
