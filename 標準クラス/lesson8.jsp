<%-- 
    Document   : lesson4_8
    Created on : 2016/08/19, 11:39:52
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
            //ファイルに自己紹介を書き出し、保存してください。
            
            //ファイル名のセット,そもそもどうやってファイルを作るんだ？
            //ファイルをオープン

//上書きモードでオブジェクト生成
//File txt = new File();

FileWriter fw = new FileWriter("C:\\Users\\iinuma yasuhiro\\Documents\\NetBeansProjects\\standard_class\\web\\test.txt");
BufferedWriter bw = new BufferedWriter(fw);
bw.write("イイヌマです");
bw.newLine();
bw.write("4/20生まれです");
bw.newLine();
bw.write("出身は東京です");
bw.newLine();
bw.write("青学に通っています");
bw.newLine();
bw.write("趣味は何かです");
bw.newLine();            
bw.close();
            

            


%>

            
            
    </body>
</html>
