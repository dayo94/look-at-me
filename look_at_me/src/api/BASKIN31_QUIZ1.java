package api;

import java.util.Random;
import java.util.Scanner;

public class BASKIN31_QUIZ1 {

	public static void main(String[] args) {
		int com = 0; //컴퓨터의 숫자 (랜덤)
		int user = 0; //사용자의 숫자 (입력)
		
		Scanner sc = new Scanner(System.in); //입력 객체
		Random ran = new Random(); //랜덤 객체

		
		int num = 1; //게임 진행 숫자
		int max = 31; //게임 종료 숫자
		
		int winner = 0; //승자 체크, 1: user, 2: com
		
		
		while(num<=max) {
			com = ran.nextInt(3) + 1; //컴퓨터의 연속숫자 개수, 1~3 
			
			for(int i=0; i<com && num<=max; i++) {
				System.out.println("com >> " + num++);
				
				if(num>max)	winner=1; //사용자 승리
			}
	
			
			
			while(num<=max) {
				System.out.println();
				System.out.print(">> 몇 개를 연속으로? ");
				user = sc.nextInt();
				
				if(user>=1 && user<=3) {
					break;
				}
				
				System.out.println("[SYSTEM] 1~3만 입력하세요");
			}
			
			for(int i=0; i<user && num<=max; i++) {
				System.out.println("user >> " + num++);
				
				if(num>max)	winner=2; //컴퓨터 승리
			}
		}
		
		
		
		//승자 출력
		if(winner == 1) {
			System.out.println("사용자 승리!");
		} else if(winner == 2) {
			System.out.println("컴퓨터 승리!");
		}
		
	}
}
