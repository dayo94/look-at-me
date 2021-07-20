package io13;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

public class InputStreamEx {
	public static void main(String[] args) {
		
		InputStream is = System.in; //키보드 표준 입력 스트림 객체
		
		
//		byte[] buf = new byte[8]; //입력 데이터 저장소 ( read()메소드의 매개변수로 사용 )
		byte[] buf = new byte[1024]; //입력 데이터 저장소 ( read()메소드의 매개변수로 사용 )
		
		int len = -1; //입력받은 데이터의 길이 ( read()메소드의 반환데이터로 사용 )
	
		//** len의 기본값을 -1로 둔 이유
		//	-> read()메소드의 반환값으로 -1 이 EOF를 나타내는 특별한 값으로 쓰인다
		//	-> 프로그램 동작 전의 기초값으로 특별한 값으로 쓰이는 데이터를 적용한 것
		
		
		//입력 데이터를 전체 저장할 문자열 객체
		StringBuilder sb = new StringBuilder();
		
		//입력 데이터의 전체 길이를 저장할 변수
		int total = 0;
		
		System.out.println("<< 입력 대기중 >>");
		try {
			
			//입력 스트림에서 입력받을 데이터가 존재한다면 계속 반복한다
			while( ( len = is.read(buf) ) != -1 ) { //EOF(End Of Stream)를 만날 때까지 반복
				
//				System.out.println("입력한 데이터의 길이 : " + len);
				
				total += len; //입력된 데이터의 길이 총합
				
				//입력한 데이터를 모니터에 출력한다
//				System.out.println( new String( buf, 0, len ) );
				
				//입력한 데이터를 StringBuilder객체에 추가한다(저장한다)
				sb.append( new String( buf, 0, len ) );
				
				//EOF를 키보드로 직접 입력해야 종료된다
				//	-> ctrl + z
				//	-> 맥은 ctrl + d
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			
			try {
				is.close(); //스트림 닫기 (스트림이 사용한 자원을 해제,반납한다)
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		System.out.println("<< 입력한 데이터의 길이 : " + total + " >>");
		System.out.println("<< 입력된 데이터 >>");
		System.out.println(sb);
		
	}
}

