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
import java.text.SimpleDateFormat;


/**
 *
 * @author iinuma yasuhiro
 */

//課題2:前回の課題1で作成したテーブルに自由なメンバー情報を格納する処理を構築してください


public class Lesson2 extends HttpServlet {

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
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Connection db_con = null;
        PreparedStatement db_ps = null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db", "iinuma", "boss4869");
            db_ps = db_con.prepareStatement("insert into lesson3 value(?, ?, ?, ?, ?)");
            db_ps.setInt(1, 6);
            db_ps.setString(2, "佐藤健");
            db_ps.setString(3,"0123-456-789" );
            db_ps.setInt(4, 24);
            db_ps.setDate(5, new java.sql.Date(sdf.parse("1999-02-23").getTime()));
            
            int a = db_ps.executeUpdate();
            if (a != 0) {
                out.println(a + "件、書き込みました <br>");
            }else {
                out.println("実行できませんでした <br>");
            }
            
            db_ps.close();
            db_con.close();
            
            } catch (SQLException e_sql) {
            out.println("接続時にエラーが発生しました："+ e_sql.toString());
        } catch (Exception e) {        
            out.println("接続時にエラーが発生しました："+ e.toString());
        } finally {
            if (db_ps != null) {
                try {
                    db_ps.close();
                }catch (Exception e_st) {
                    System.out.println(e_st.getMessage());
                }
            }
            if (db_con != null) {
                try {
                    db_con.close();
                } catch (Exception e_con) {
                    System.out.println(e_con.getMessage());
                }
            }
        }
    }
            
            
            /* TODO output your page here. You may use following sample code. */
           

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
