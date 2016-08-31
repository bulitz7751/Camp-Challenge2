<%-- 
    Document   : lesson4_7
    Created on : 2016/08/19, 11:21:37
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
            //以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、結果を表示してください。
            //「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」
            String text = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
            String text1 = text.replace("I", "い");
            String text2 = text1.replace("U", "う");
            out.print(text2);
            %>
            

    </body>
</html>
