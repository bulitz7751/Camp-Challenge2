/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author iinuma yasuhiro
 */

//課題1:Challenge_dbへのエラーハンドリングを含んだ接続の確立を行ってください

public class Lesson1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //conectionクラスの変数の用意
        Connection dbCon = null;
        //エラーハンドリング
        try {
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();//ライブラリに登録したMysql用のドライバーを利用可
            //conectionクラスのインスタンスの利用
            dbCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db", "iinuma", "boss4869");
            //DB切断
            dbCon.close();
        }catch (SQLException e_sql){
            out.println("接続時にエラーが発生しました：" + e_sql.toString());
        }catch (Exception e){
            out.println("接続中にエラーが発生しました：" + e.toString());
        }finally{
            if (dbCon != null){
                try{
                    dbCon.close();
                }catch (Exception e_con){
                    System.out.println(e_con.getMessage());
                }
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet lesson1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet lesson1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
