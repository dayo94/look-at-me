package api;

import java.util.Random;
import java.util.Scanner;

public class UPDOWN_QUIZ1 {

	public static void main(String[] args) {
		int com; //컴퓨터의 숫자 (랜덤)
		int user; //사용자의 숫자 (입력)
		
		Scanner sc = new Scanner(System.in); //입력 객체
		Random ran = new Random(); //랜덤 객체
		
		
		System.out.println("=============== START ===============");
		
		com = ran.nextInt(50) + 1; //컴퓨터 랜덤 숫자 생성, 1~50
//		System.out.println("[TEST] " + com);	
		
		
		for(int count=0; count<7; count++) {
			//사용자의 입력
			while(true) {
				System.out.print("1~50 중 하나 입력 : ");
				user = sc.nextInt();
				
				if( 1<=user && user<=50 ) {
					break;
				} else {
					System.out.println("[SYSTEM] 1~50 범위의 숫자만 입력하세요!");
				}
			}
			
			
			//컴퓨터랜덤숫자 와 사용자입력숫자 비교
			if( com==user ) {
				System.out.println("이겼습니다!");
				return; //프로그램 종료
				
			} else if( com<user ) {
				System.out.println("DOWN");
				
			} else if( com>user ) {
				System.out.println("UP");
				
			}
		}
		
		System.out.println("졌습니다! 컴퓨터는 [ " + com + " ]입니다");
		
	}
}


