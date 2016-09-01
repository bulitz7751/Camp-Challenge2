<%-- 
    Document   : lesson3.6
    Created on : 2016/08/12, 10:31:08
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
            //引き数に1つのid(数値)をとり、3人分のプロフィール(項目は課題5参照)をあらかじめメソッド内で定義しておく。
            //引き数のid値により戻り値として返却するプロフィールを誰のものにするか選択する。それ以降などは課題5と同じ扱いに
            HashMap<String,String> data = new HashMap<>();
            String getData(int id){
            String profile = "";
            
            if (id == 001){
                data.put("id","001");
                data.put("name","名前：アイアンマン<br>");
                data.put("birth","生年月日：1980/04/20<br>");
                data.put("address","住所：どこか<br>");
                profile = (data.get("name")+data.get("birth")+data.get("address"));
            }else if (id == 002){
                data.put("id","002");
                data.put("name","名前：キャプテンアメリカ<br>");
                data.put("birth","生年月日：1981/04/20<br>");
                data.put("address","住所：どこか２<br>");
                profile = (data.get("name")+data.get("birth")+data.get("address"));
            }else if (id == 003){
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
                        int id = 003;
                        
                        String profile = getData(id);
                        out.println(profile);
                        %>
            
    </body>
</html>
