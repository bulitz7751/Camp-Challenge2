/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.setvlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author iinuma yasuhiro
 */
//以下の機能を持つクラスを作成してください。
//パブリックな２つの変数
//２つの変数に値を設定するパブリックなメソッド
//２つの変数の中身をprintするパブリックなメソッド

//この1段落の意味が分からない
public class lesson3 extends HttpServlet {
    public String name;
    public Integer age;
    class Human extends lesson3 {//継承
        public void setHuman(){
            this.name = "アイアンマン" ;//変数を変える、値を設定するメソッド
            this.age = 40;//
        }
        public void showHuman(){
            System.out.println(this.name);
            System.out.println(this.age);
        }
        
    }
    
    //3.4の課題です
    class Clear extends lesson3 {
        public void setClear() {
            this.name = "";
            this.age = 0;
        }
    }
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet object4part3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>オブジェクト指向課題３ </h1>");
            
//            Human ave = new Human();//インスタンス
//            ave.setHuman("アイアンマン",40);
//            
//            Clear cl = new Clear();
//            cl.setClear();
//            
//            ave.showHuman();
//            
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
