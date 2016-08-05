<%-- 
    Document   : lesson5
    Created on : 2016/08/03, 0:00:18
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
            int a = 2;
                    if (a == 1)
                    {out.println("1です");}
                    else if (a == 2)
                    {out.println("プログラミングキャンプ");}
                    else
                    {out.println("その他です！");}
                    %>
                    
                    
                    
    </body>
</html>
