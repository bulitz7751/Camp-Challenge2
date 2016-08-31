<%-- 
    Document   : lesson10
    Created on : 2016/08/23, 16:59:10
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
        <%@import java.util.*;%>
        <%!

class Ex0503 {

    public static void main(String args[]) {

        Scanner scanner = new Scanner();

        /* 縦の長さの読み込み */
        out.println("縦の長さ: ");
        double length1 = scanner.nextDouble();

        /* 横の長さの読み込み */
        out.print("横の長さ: ");
        double length2 = scanner.nextDouble();

        /* 高さの読み込み */
        out.print("高さ: ");
        double height = scanner.nextDouble();

        /* 直方体のオブジェクト生成 */
        Cuboid cuboid = new Cuboid(length1, length2, height);

        /* 直方体の体積 */
        out.println("直方体の体積 = " 
                           + cuboid.volume());

        /* 直方体の表面積 */
        out.println("直方体の表面積 = "
                           + cuboid.areaOfSurface());

    }
}%>
    </body>
</html>
