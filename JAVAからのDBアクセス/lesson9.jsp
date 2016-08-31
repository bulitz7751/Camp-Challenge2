<%-- 
    Document   : lesson9
    Created on : 2016/08/31, 13:44:26
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
        <form action="/Database/Lesson9" method="post">
        ID：<input type="number" name="Id"/>
            <br>
            <br>
        名前：<input type="text" name="Name"/>
            <br>
            <br>
        電話番号：<input type="text" name="Tell"/>
            <br>
            <br>
        年齢：<input type="number" name="Age"/>
            <br>
            <br>
            生年月日:<select name ="Year"/>
            <option value="1980">1980</option>
            <option value="1981">1981</option>
            <option value="1982">1982</option>
            <option value="1980">1983</option>
            <option value="1980">1984</option>
            <option value="1980">1985</option>
            <option value="1980">1985</option>
            <option value="1980">1986</option>
            <option value="1980">1987</option>
            <option value="1980">1988</option>
            <option value="1980">1989</option>
            <option value="1980">1990</option>
            <option value="1980">1991</option>
            <option value="1980">1992</option>
            <option value="1980">1993</option>
            <option value="1980">1994</option>
            <option value="1980">1995</option>
            <option value="1980">1996</option>
            <option value="1980">1997</option>
            <option value="1980">1998</option>
            <option value="1980">1999</option>
            <option value="1980">2000</option>
            </select>
            年
            <select name="Month">
            <option value="">--</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            </select>
            月
            <select name="Day">
            <option value="">--</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
            </select>
            日
            <br>
            <br>
            <input type="submit" value="送信">
            <input type="reset" value="リセット">
            </form>
    </body>
</html>
