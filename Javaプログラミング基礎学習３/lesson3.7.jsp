<%-- 
    Document   : lesson3.7
    Created on : 2016/08/12, 11:25:34
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
        <%@page import = "java.util.HashMap" %>
        <%!
            //課題6の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し、ループ処理で全員分のプロフィールをid以外表示する処理を実行する。
            //この際、歯抜けになっているデータはcontinueで飛ばす
        HashMap<String,String> data = new HashMap<>();
            String getData(int i){
            String profile = "";
            
            if (i == 001){
                data.put("id","001");
                data.put("name","名前：アイアンマン<br>");
                data.put("birth","生年月日：1980/04/20<br>");
                data.put("address","null<br>");
                profile = (data.get("name")+data.get("birth")+data.get("address"));
            }else if (i == 002){
                data.put("id","002");
                data.put("name","名前：キャプテンアメリカ<br>");
                data.put("birth","生年月日：1981/04/20<br>");
                data.put("address","住所：どこか２<br>");
                profile = (data.get("name")+data.get("birth")+data.get("address"));
            }else if (i == 003){
                data.put("id","001");
                data.put("name","名前：ソー<br>");
                data.put("birth","生年月日：1983/04/20<br>");
                data.put("address","住所：どこか3<br>");
                profile = (data.get("name")+data.get("birth")+data.get("address"));
            }
            return profile;
        }
                    %>
                    <%
                        for (int i = 0;i < 3;i++){
                            if (data.get(i) == "null"){
                                continue;
                            }
                        String profile = getData(i);
                        out.println(profile);
                        }
                        %>
    </body>
</html>
