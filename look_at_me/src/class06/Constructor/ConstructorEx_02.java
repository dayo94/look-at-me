package class06.Constructor;

class Constructor_02 {


	private int n1;
	private int n2;

	public Constructor_02(int n1, int n2) {
		System.out.println("�Ű������� 2���� ������");
		this.n1 = n1;
		this.n2 = n2;
	}

	public Constructor_02(int n1) {

		this(n1,0); //this������ ȣ��

		//**this ������ ȣ��
		// -> �����ڿ��� �ٸ� �����ڸ� ȣ���ϴ� �ڵ�
		// -. �ݵ�� �������� ù��° �ڵ�� �ۼ��Ǿ�� �Ѵ�

		System.out.println("�Ű������� 1���� ������");

		//		this.n1 = n1;
		//this.n2 = 0;
	}


	public Constructor_02() {
		this(0,0);

		System.out.println("����Ʈ ������");
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




