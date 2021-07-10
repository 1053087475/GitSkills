package com.cjh.other;

public class IsNumber
{

    public static void main(String[]   args){ 
        
        boolean result = IsNumber.isNumber("sfasdf");
        System.out.print(result);
    } 
    public static boolean isNumber(String str){
         for(int i=str.length();--i>=0;){
             if(!Character.isDigit(str.charAt(i))){
                 return false;
             }
         }
         return true;
    }


}
