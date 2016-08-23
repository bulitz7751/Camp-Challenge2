<%-- 
    Document   : lesson1
    Created on : 2016/08/23, 11:24:11
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
        //以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください.名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
        
        
          %>
   
    <form action="/Data/data02" method="post">
      名前:<input type="text" name="name">
              <br>
              <br>
      性別:<input type="radio" name= "gender" value = "男"/>男
           <input type="radio" name= "gender" value = "女"/>女
               <br>
               <br>
               <textarea name="freeans" row = "4" cols="40">趣味を記入してください</textarea>
               <br>
               <br>
      <input type="submit" value="送信">
    </form>
 </body>
</html>
