/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author root
 */
public class Basic {
	
    public static void printStr_doubleArray(String[][] strarray){
        for(int i = 0; i < strarray.length; i++){
            for(int j = 0; j < strarray[i].length; j++){
                if ( j != strarray[i].length - 1)
                    System.out.print(strarray[i][j] + " - ");
                else
                    System.out.print(strarray[i][j]);
            }
            System.out.println();
        }
    }
    
    public static int random(int min, int max){
        int res = 0;
            
            Random rand = new Random();
            res = rand.nextInt((min + max) + 1) + min;
            
            return res;
    }
    
    public class TestingFile01{
    	public TestingFile01() {
//			 TODO Auto-generated constructor stub
    		String s = File.separator;
    		System.out.println("separator: "+s);
    	}
    }
    
    class ExoGeneric04{
        public <G> G shuffle(G first, G sec){
            G res = null;
            
            int rand = random(0, 1);
            if(rand == 0 ){
                return first;
            }else{
                return sec;
            }
        }
        
        class MainThis{

            public MainThis() {
                ExoGeneric04 eg = new ExoGeneric04();
                String str1 = "a";
                String str2 = "b";
                String res = eg.shuffle(str1, str2);
                System.out.println("res: " + res);
            }
            
        }
        
    }
    
    class ExoGeneric03{
        
        class MainThis{

            public MainThis() {
                ExoGeneric03 eg = new ExoGeneric03();
                String[] strArr = {
                    "1",
                    "2",
                    "3",
                    "4",
                    "5",
                    "6",
                    "7",
                    "8",
                    "9",
                    "10"
                };
                String rand = eg.shuffle(strArr);
                System.out.println("rand: "+rand);
            }
            
        }
        
        public <G> G shuffle(G[] array){
            G res = null;
            int rand = random(0, 9);
            
            res = array[rand];
            
            return res;
        }
        
        public int random(int min, int max){
            int res = 0;
            
            Random rand = new Random();
            res = rand.nextInt((min + max) + 1) + min;
            
            return res;
        }
    }
    
    class ExoGeneric02<A, B, C>{
        
        A first;
        B second;
        C third;

        public ExoGeneric02(A first, B second, C third) {
            this.first = first;
            this.second = second;
            this.third = third;
        }

        public A getFirst() {
            return first;
        }

        public B getSecond() {
            return second;
        }

        public C getThird() {
            return third;
        }
        
        public void affiche(){
            System.out.println("first: "+getFirst());
            System.out.println("second: "+getSecond());
            System.out.println("third: "+getThird());
        }

        public ExoGeneric02() {
        }
        
        class MainThis{

            public MainThis() {
                ExoGeneric02<String, Integer, Double> eg = new ExoGeneric02<String, Integer, Double>("coucou", new Integer(2), new Double(6)); 
                eg.affiche();
            }
            
        }
    }
    
    class ExoGeneric01<T>{
        T first;
        T second;
        T third;

        public ExoGeneric01() {
        }

        public ExoGeneric01(T first, T second, T third) {
            this.first = first;
            this.second = second;
            this.third = third;
        }

        public T getFirst() {
            return first;
        }

        public T getSecond() {
            return second;
        }

        public T getThird() {
            return third;
        }
        
        public void affiche(){
            System.out.println("premier: "+getFirst());
            System.out.println("second: "+getSecond());
            System.out.println("third: "+getThird());
        }
        
        public void usingThis(){
            ExoGeneric01<String> e = new ExoGeneric01("a", "b", "c");
            e.affiche();
        }
    
        class MainThis{

            public MainThis() {
                ExoGeneric01<String> e = new ExoGeneric01("a", "b", "c");
                e.affiche();
            }
            
        }
        
    }
    
    class TestingArrayList{

        public TestingArrayList() {
            ArrayList arraylist = new ArrayList();
            String[] strarray = {
                "a", "b", "c"
            };
            String str = "coucou";
            int a = 0;
            
            arraylist.add(strarray);
            arraylist.add(str);
            arraylist.add(a);
            
            for(int i = 0; i < 3; i++){
                System.out.println("index["+i+"]: "+arraylist.get(i));
            }
        }
        
    }
    
    class Threading02 implements Runnable {
        int x = 0;
        int times = 10;
        @Override
        public void run() {
            try {
                //            throw new UnsupportedOperationException("Not supported yet.");
                while (x < times){
                    System.out.print(x + " ");
                    Thread.sleep(1000);
                    x++;
                }
            } catch (InterruptedException ex) {
//                Logger.getLogger(Basic.class.getName()).log(Level.SEVERE, null, ex);
                
            }
        }
        
    }
    
    class Threading01 implements Runnable{
        int wait = 1000;
        String txt = "coucou";
        int times = 5;

        public Threading01() {
            
        }
        
        @Override
        public void run() {
//            throw new UnsupportedOperationException("Not supported yet.");
        
            try{
                int i = 0;
                while( i < times){
                    System.out.println("txt: "+txt);
                    Thread.sleep(wait);
                    i++;
                }
            }
            catch(InterruptedException interruptedexception){
                
            }
            
        }
    
    }
}
