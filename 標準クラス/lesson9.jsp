<%-- 
    Document   : lesson4_9
    Created on : 2016/08/19, 15:17:05
    Author     : iinuma yasuhiro
--%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //ファイルから自己紹介を読み出し、表示してください。
            
            
            FileReader fr = new FileReader("C:\\Users\\iinuma yasuhiro\\Documents\\NetBeansProjects\\standard_class\\web\\test.txt");
            BufferedReader br = new BufferedReader(fr);
            String str;
            while((str = br.readLine()) != null){
                out.print(str);
            }
            br.close();
            %>
    </body>
</html>
