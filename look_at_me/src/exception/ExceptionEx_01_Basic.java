package exception;

public class ExceptionEx_01_Basic {
	public static void main(String[] args) {
		
		int[] arr = new int[5];
		
		int i=0;
		while(true) {
			
			//예외 발생 조건(상황)
			//	인덱스가 음수일 때
			//	인덱스가 배열의 길이와 같을 때
			//	인덱스가 배열의 길이보다 클 때
			if( i<0 || i>=arr.length ) { // 예외처리 if문
				System.out.println("[에러] 인덱스를 제대로 사용하세요!");
				break;
			}
			
			arr[i] = i+1; //배열에 값 대입
			
			i++;
		}
		
		System.out.println("+ + + 프로그램 정상 종료 + + +");
		
	}
}



