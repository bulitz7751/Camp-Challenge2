<%-- 
    Document   : exlesson
    Created on : 2016/08/04, 10:48:38
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
        //http://localhost:8084/WebApplication1/exlesson1.jsp?Total=4000&Count=60&Code=2
        
        //?       
        String totalstr = request.getParameter("Total");
            String itemcodestr = request.getParameter("Code");
            String countstr = request.getParameter("Count");
           //型変換
            int total = Integer.parseInt(totalstr);
            int itemcode = Integer.parseInt(itemcodestr);
            int count = Integer.parseInt(countstr);
            
            //
            if (itemcode == 1){
                out.println("雑貨");
            }else if (itemcode == 2){
                out.println("生鮮食品");
            }else if (itemcode == 3){
                out.println("その他");
            }
            
            //一戸当たりの値段
            int price = total / count;
            out.println("総額は"+total+"です。");
            out.println("一個当たりの値段は"+price+"です。");
            
            //ポイントの算出
            if (total >= 3000 && total <5000){
                double point = total * 0.04;
                out.println(point);
            }
            else if (total >= 5000){
                double point = total * 0.05;
                out.println(point);
                }
            
                %>
        
            
                    
            

           
                 
            
            
    </body>
</html>
