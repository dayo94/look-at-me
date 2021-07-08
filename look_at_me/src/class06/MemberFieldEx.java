package class06;

public class MemberFieldEx {

	public static void main(String[] args) {

		
		MemberField_01 mf01 = new MemberField_01();
		MemberField_01 mf02 = new MemberField_01();
		MemberField_01 mf03 = null;
		
		System.out.println(mf01.getNum());
		
		
		mf02.setNum(777);
		System.out.println(mf02.getNum());
		
		
		//----------------------------------------------------
		
//		System.out.println(mf03.getNum());
		
		//NullpointerException
		// ->null참조값을 이용해 멤버에 접근하려고 하면 발생
		
		//-> 존 나 많이 보이는 예외!!
		
		System.out.println();
		System.out.println("---클래스변수 테스트---");
		
		MemberField_02 mf04 = new MemberField_02();
		MemberField_02 mf05 = new MemberField_02();
		
		System.out.println(mf04.city);
		System.out.println(mf05.city);
		
		mf04.city = "busan";
		
		System.out.println("---busan 대입 후---");
		
		System.out.println(mf04.city);
		System.out.println(mf05.city);
		System.out.println("---클래스명으로 접근---");
		//클래스 변수는 객체가 아닌 클래스명을 통해 접근
		System.out.println(MemberField_02.city);
		
		MemberField_02.city = "incheon";
		
		
		System.out.println(MemberField_02.city);
		
		
		System.out.println();
		System.out.println("---지역변수 테스트---");
		
		MemberField_03 mf06 = new MemberField_03();
		
		mf06.method(111); //메소드 호출
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class
