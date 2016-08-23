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
//Humanという抽象クラスを作成
public abstract class Human {
    //openというabstractな公開メソッドを用意してください。
    public abstract int open();
    //setCardというArrayListを引数とした、abstractな公開メソッドを用意してください。
    public abstract void setCard(ArrayList[] Integer);
    //checkSumというabstractな公開メソッドを用意してください。
    public abstract boolean checkSum ();
    //myCardsというArrayListの変数を用意してください。
    ArrayList<Integer> myCards = new ArrayList<>();
    
    
}
