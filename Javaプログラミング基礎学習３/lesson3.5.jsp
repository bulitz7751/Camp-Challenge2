<%-- 
    Document   : lesson3.5
    Created on : 2016/08/11, 22:13:05
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
           // 戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し
           //受け取った後はid以外の値を表示する
           String getID(){
            return "0079";        
        }
          String getName(){
            return "IronMan";
        }
           String getBirth(){
            return "2016/08/11";
        }
           String getAddress(){
            return "そこらへん";
        }
           %>
           
           <%
               String id = getID();
               String name = getName();
               String birth = getBirth();
               String address = getAddress();
               
               out.println(name + "<br>" + birth + "<br>" + address + "<br>");
               %>
    </body>
</html>
