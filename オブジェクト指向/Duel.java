/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Black_Jack;

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
public class Duel extends HttpServlet {

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
            out.println("<title>Servlet Duel</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Duel at " + request.getContextPath() + "</h1>");
           //インスタンスの生成
            Dealer d = new Dealer();
            User u = new User();
            
            //ランダムに2枚配る
            d.setCard(d.deal());
            u.setCard(d.deal());
            
            //trueならヒットを繰り返し、falseならヒットを辞める。
            while(d.checkSum() == true) {
                d.setCard(d.hit());
                if(d.checkSum() == false) {
                    break;
                }
            }
            while(u.checkSum() == true) {
                u.setCard(d.hit());
                if(u.checkSum() == false) {
                    break;
                }
            }
            
            //カードの合計を表示
            out.print("ディーラーのカード合計は…"+ d.open() +"<br>");
            out.print("あなたのカード合計は…"+ u.open() +"<br><br>");
            
            //勝敗の表示
            if(u.open() > 21){
                out.print("あなたの負け");
            }else if(d.open() > 21) {
                out.print("あなたの勝ち");
            }else if(d.open() < u.open()) {
                out.print("あなたの勝ち");
            }else if(d.open() > u.open()) {
                out.print("あなたの負け");
            }else {
                out.print("引き分け");
            }
            
            out.println("</body>");
            out.println("</html>");
        } finally {
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
