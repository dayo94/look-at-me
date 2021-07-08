package class06;

public class Method_04 {

	

	
	public void returnTest() {
		for(int i=0; i<100; i++) {
			
			if( i>=5 ) {
//				break;  //반복문 중단(종료)
				return; //메소드 중단(종료)
			}
			System.out.println(i);
		}
		System.out.println("---반복문 종료 이후 실행됨 ---");
	}
	
	
	
	
}//class
