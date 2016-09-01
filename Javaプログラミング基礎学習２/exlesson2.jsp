<%-- 
    Document   : exlesson2
    Created on : 2016/08/05, 11:08:31
    Author     : iinuma yasuhiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
        //http://localhost:8084/WebApplication1/exlesson2.jsp
            String Number = request.getParameter("number");
        
//型変換
long number = Long.parseLong(Number);

out.println("もとの値は" + number + "です。<BR>");
        out.println("素因数分解開始<BR>");
        
        //素因数分解
        //2で割り切れるまで割る
        while (number != 1){
            if (number % 2 == 0){
                out.print(2+"と");
                number /= 2;
            
        //3で割り切れるまで割る
            }else if (number % 3 == 0){
                out.print(3 + "と");
                number /= 3;
                
        //5で割り切れるまで割る
            }else if (number % 5 == 0){
                out.print(5 + "と");
                number /= 5;
       
                
        //7で割り切れるまで割る  
          }else if (number % 7 == 0){
                out.print(7 + "と");
                number /= 7;
                
            }else{
               out.print("その他です。");
               break;
           }
        }
        

           
            
                
                %>
        
        
    
</html>
