<%-- 
    Document   : lesson3.8
    Created on : 2016/08/12, 11:37:15
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
             //先にInteger limit=2を定義しておき、課題7の処理のうち2人目(limitで定義した値の人数)まででループ処理を抜けるようにする
             HashMap<String,String> data = new HashMap<String,String>();
            String getData(int i){
            String profile = "";
            
            if (i == 001){
                data.put("id","001");
                data.put("name","名前：アイアンマン<br>");
                data.put("birth","生年月日：1980/04/20<br>");
                data.put("address","null<br>");
                profile = (data.get("name")+data.get("birth")+data.get("adddress"));
            }else if (i == 002){
                data.put("id","002");
                data.put("name","名前：キャプテンアメリカ<br>");
                data.put("birth","生年月日：1981/04/20<br>");
                data.put("address","住所：どこか２<br>");
                profile = (data.get("name")+data.get("birth")+data.get("adddress"));
            }else if (i == 003){
                data.put("id","001");
                data.put("name","名前：ソー<br>");
                data.put("birth","生年月日：1983/04/20<br>");
                data.put("address","住所：どこか3<br>");
                profile = (data.get("name")+data.get("birth")+data.get("adddress"));
            }
            return profile;
        }
                    %>
                    <%
                       int limit = 2;
                        for (int i = 0;i < 3;i++){
                            if (data.get(i) == "null"){
                                continue;
                            }else if(limit == i){
                                break;
                            }
                        String profile = getData(i);
                        out.println(profile);
                        }
                        %>
    </body>
</html>
