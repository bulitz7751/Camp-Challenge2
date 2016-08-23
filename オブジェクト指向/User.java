/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Black_Jack;

/**
 *
 * @author iinuma yasuhiro
 */
import java.util.ArrayList;
class User extends Human {
    //setCardは、ArrayListで受けたカード情報をmyCardsに追加するように実装してください。
     public void setCard(ArrayList<Integer> setc){
         for (int i = 0;i < setc.size();i++){
             myCards.add(setc.get(i));
         }
     }
    
    //checkSumは、myCardsを確認し、まだカードが必要ならtrue、必要無ければfalseを返却するように実装してください。
     public boolean checkSum(){
         int total = open();
         if (total < 10){
             for (int i = 0;i < myCards.size();i++){
             if (myCards.get(i)==1){
                 myCards.set(i, 11);
             }
         }
         }
         if (total < 16){
             return true;
         }else{
             return false;
         }
     } 
     
     
     //openは、myCardsのカードの合計値を返却するように実装してください。
     public int open(){
         int sum = 0;
         for (int i = 0;i < myCards.size();i++){
             sum += myCards.get(i);
         }
         return sum;
     }

    @Override
    public void setCard(ArrayList[] Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
}
     
   