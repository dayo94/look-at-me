package class06.Constructor;

class Constructor {

	//멤버필드
	private int num1 = 111;
	private int num2 = 222;

	//일반 멤버메소드
	// -> 생성자 만들 때 조심해야한다
	// -> 생성자의 이름과 같은 일반 메소드를 작성하지 말장!
	public void Constructor() {
		System.out.println("Hello");
	}


	//default생성자
	//-> 매개변수가 없는 생성자
	public Constructor() {
		System.out.println("디폴트 생성자 호출됨");

		//멤버필드의 값을 초기화한다
		// -> 객체 생성이후 처음으로 저장될 값을 대입한다

		System.out.println("---생성자 초기화 전---");
		System.out.println("num1: " + num1 + ", num2: " + num2);

		System.out.println("---생성자 초기화 후---");
		//멤버필드 초기화
		num1 = 500;
		num2 = 600;

		System.out.println("num1: " + num1 + ", num2: " + num2);

	}

	//매개변수있는 생성자 - 오버로딩
	public Constructor(int num1, int num2) {

		System.out.println("매개변수 있는 생성자 호출됨");

		//멤버필드초기화
		//		this.num1 = num1;
		//		this.num2 = num2;

		//setter를 이용한 필드 초기화
		//		setNum1(num1);
		//		setNum2(num2);



	}



	//---getters, setters---
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
}



public class ConstructorEx_01 {

	public static void main(String[] args) {

		//객체변수
		Constructor cons;

		//객체생성
		cons = new Constructor(); //생성자 호출


		System.out.println();
		System.out.println("-------------------------");

		Constructor cons02;
		cons02 = new Constructor(5656, 7878);

		System.out.println();
		System.out.println("-------------------------");

		System.out.println("cons: " + cons.getNum1() 
		+ ", " + cons.getNum2() );
		System.out.println("cons02: " + cons02.getNum1() 
		+ ", " + cons02.getNum2() );



		//ctrl + shift + [ : 수직 화면 분할
		//ctrl + shift + - : 수평 화면 분할






	}//main

}//public class