package class06.Constructor;

class Constructor_02 {


	private int n1;
	private int n2;

	public Constructor_02(int n1, int n2) {
		System.out.println("매개변수가 2개인 생성자");
		this.n1 = n1;
		this.n2 = n2;
	}

	public Constructor_02(int n1) {

		this(n1,0); //this생성자 호출

		//**this 생성자 호출
		// -> 생성자에서 다른 생성자를 호출하는 코드
		// -. 반드시 생성자의 첫번째 코드로 작성되어야 한다

		System.out.println("매개변수가 1개인 생성자");

		//		this.n1 = n1;
		//this.n2 = 0;
	}


	public Constructor_02() {
		this(0,0);

		System.out.println("디폴트 생성자");
	}



	public void out() {
		System.out.println("n1: " + n1 + ", n2: " + n2);
	}

}//class



public class ConstructorEx_02 {

	public static void main(String[] args) {


		Constructor_02 cons01 = new Constructor_02(888,999);
		cons01.out();

		System.out.println("------------------------------------");



		Constructor_02 cons02 = new Constructor_02(555);
		cons02.out();

		System.out.println("------------------------------------");

		Constructor_02 cons03 = new Constructor_02();
		cons03.out();

		System.out.println("------------------------------------");





	}//main

}//public class




