<%-- 
    Document   : lesson3.3
    Created on : 2016/08/11, 21:44:46
    Author     : iinuma yasuhiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%!
            //引き数が3つのメソッドを定義する。1つ目は適当な数値を、2つ目はデフォルト値が5の数値を、最後はデフォルト値がfalse(boolean)のtypeを引き数として定義する。
            //1つ目の引き数に2つ目の引き数を掛ける計算をするメソッドを作成し、typeがfalseの時はその値を表示、trueのときはさらに2乗して表示する。
        String getNum(Integer a, Integer b, boolean type){
            String answer = "";//？
            int pro = a * b;
            
            if (type == false){
                answer = "falseなので答えは" + pro;
                return answer;
            }else{
                pro *= pro;
                answer = "trueなので答えは" + pro;
                return answer;
            }
        }
        %>
        
        <%
            String Num = getNum(7,5,true);
            out.print(Num);//なぜprintlnではないのか
        
            %>
    
</html>
