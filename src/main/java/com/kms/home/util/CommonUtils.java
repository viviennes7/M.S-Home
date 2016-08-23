package com.kms.home.util;
 
import java.util.UUID;

 /**
  *  DB를 생성할 때 서버에 저장될 파일명은 32글자로 한다고 이야기를 했었다.
  *  getRandomString() 메서드는 32글자의 랜덤한 문자열(숫자포함)을 만들어서 반환해주는 기능을 한다. 
  * */
public class CommonUtils {
     
    public static String getRandomString(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}