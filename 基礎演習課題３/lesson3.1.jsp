<%-- 
    Document   : lesson3.1
    Created on : 2016/08/10, 13:12:17
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
        
         <%!
            //自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて表示するユーザー定義メソッドを作り、メソッドを10回呼び出す。
            
            String getName() {
                return "飯沼";
            }
            String getBirth() {
                return "19992/4/20";
            }
            String getSelfintro() {
                return "青学です";
            }
        %>
        <%
            String name = getName();
            String birth = getBirth();
            String selfintro = getSelfintro();
            for(int i = 0; i < 10; i++) {
                out.print("名前："+ name +"<br>生年月日："+ birth +"<br>自己紹介："+ selfintro +"<br><br>");
            }
        %>
    </body>
</html>
