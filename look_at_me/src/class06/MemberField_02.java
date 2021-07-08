package class06;

public class MemberField_02 {

	//멤버 필드
	private int num;
	
	//멤버 필드 -> 클래스 변수, static변수, 정적변수
//	private static String city = "seoul";
	public static String city = "seoul";
	
	//---------------------------------------------------
	
	private int data1 = 100; //인스턴스변수 (동적할당)
	//정적멤버메소드는 곧바로 호출하게 준비됨
	public static void test() {
//		System.out.println(data1); 에러
	}
		
	//정적메소드에서 인스턴스변수 사용불가
	// -> 인스턴스변수가 만들어지기전에 실행준비가 완료돼야함
	
	
	
	//---------------------------------------------------
	
	private static int data2; //정적변수

//	
//	public static void setData2(int data2) {
//		MemberField_02.data2 = data2;
//	}
//	
//	
//	public static int getData2() {
//		return data2;
//	}
//	 쓸일 잘없음
	
	//정적메소드에서는 정적멤버필드만 사용할수있다
	
	
	
	

}//class
