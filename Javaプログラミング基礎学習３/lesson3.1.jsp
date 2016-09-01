<%-- 
    Document   : lesson3.1
    Created on : 2016/08/10, 13:12:17
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
            //自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて表示するユーザー定義メソッドを作り、メソッドを10回呼び出して下さい
            String getName(){//メソッドの定義
            return "iinuma";//戻り値
        }
            String getBirth(){
            return "01/01";
        }
            String getInfo(){
            return "なんか";
        }
            
            String getPro(){//プロフィールメソッドの定義
            String name = getName();//メソッドの呼び出し
            String birth = getBirth();
            String info = getInfo();
            String everything = name + "<br>" + birth + "<br>" + info + "<br>";//everythingの定義
            return everything;
        }
            %>
            
            <%
                String pro = getPro();
                for (int i = 0; i < 10; i++){
                    out.println(pro);
                }
                %>
    </body>
</html>
