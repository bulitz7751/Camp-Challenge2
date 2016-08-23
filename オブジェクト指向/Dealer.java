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
import java.util.Random;
class Dealer extends Human {
    //cardsというArrayListの変数を用意し、初期処理でこのcardsに全てのトランプを持たせてください。
    ArrayList<Integer> cards = new ArrayList<Integer>();
    {
    //１-９の札と10（10からキングまで）を４つを4セット（カードのマーク分）をリストにセットする
    for (int i = 0; i < 4;i++){
    for (int a = 1; a <= 9;a++){
            cards.add(a);
            }
    for (int b = 0; b < 4;b++){
        cards.add(10);
    }
}
    } 
       //dealという公開メソッドを用意し、cardsからランダムで2枚のカードをArrayListにして返却してください。
       //dealcards = 
    public  ArrayList deal(){
        ArrayList<Integer> deal = new ArrayList<Integer>();
        Random r = new Random();
        //カードを2枚配る
        for (int i = 0;i<2;i++){
           int rndnum = r.nextInt(cards.size());//これなんだ？
           deal.add(cards.get(rndnum));//これ？
           //cardsから引いた2枚を消去
           cards.remove(rndnum);
        }
        
        return deal;
    }
     
    //hitという公開メソッドを用意し、cardsからランダムで1枚のカードをArrayListにして返却してください。
    public  ArrayList hit(){
        ArrayList<Integer> hit = new ArrayList<Integer>();
        Random r = new Random();
        
           int rndnum = r.nextInt(cards.size());
           hit.add(cards.get(rndnum));
           //ヒットした分cardsからヒットした分のカードを消す
           cards.remove(rndnum);
        
        
        return hit;
    }
    //setCardは、ArrayListで受けたカード情報をmyCardsに追加するように実装してください。
    //cardsから引いたカードをsetCardに一回通して引く
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