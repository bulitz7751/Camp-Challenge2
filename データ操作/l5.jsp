<%-- 
    Document   : lesson5
    Created on : 2016/08/23, 14:04:53
    Author     : iinuma yasuhiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            //5．以下の機能を実装してください。
            //名前・性別・趣味を入力するページを作成してください。
            //また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
            //記録されたデータを初期値として表示してください。　　　
            //※Javaと同時に、HTMLの知識が必要になります。
            //※入力フィールドの使い方を調べてみましょう。
            
            
       
            HttpSession hs = request.getSession();
            
            boolean reinput = false;
            String name = "";
            String text = "";
            
            if (hs.getAttribute("hidden") != null){
                reinput = true;
                name = (String)hs.getAttribute("Lastname");
                text = (String)hs.getAttribute("Lasttext");                
            }
            
        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <form action="lesson5" method="post">    
        名前：<input type="text" name="name" value="<% if(reinput){out.print(name);} %>">
            <br>
            <br>
        性別：
        <input type="radio" name="gender" value="男" <%= hs.getAttribute("checkM") %>> 男　
        <input type="radio" name="gender" value="女" <%= hs.getAttribute("checkW") %>> 女
            <br>
            <br>
        趣味：
        <textarea name="text" rows="10" cols="100"><% if(reinput){out.print(text);} %></textarea>
            <br>
            <br>
        <input type="hidden" name="hidden" value="reinput">
        <input type="submit" value="送信">
        
        
    </form>
    </body>
</html>
