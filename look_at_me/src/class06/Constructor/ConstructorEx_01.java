package class06.Constructor;

class Constructor {

	//����ʵ�
	private int num1 = 111;
	private int num2 = 222;

	//�Ϲ� ����޼ҵ�
	// -> ������ ���� �� �����ؾ��Ѵ�
	// -> �������� �̸��� ���� �Ϲ� �޼ҵ带 �ۼ����� ����!
	public void Constructor() {
		System.out.println("Hello");
	}


	//default������
	//-> �Ű������� ���� ������
	public Constructor() {
		System.out.println("����Ʈ ������ ȣ���");

		//����ʵ��� ���� �ʱ�ȭ�Ѵ�
		// -> ��ü �������� ó������ ����� ���� �����Ѵ�

		System.out.println("---������ �ʱ�ȭ ��---");
		System.out.println("num1: " + num1 + ", num2: " + num2);

		System.out.println("---������ �ʱ�ȭ ��---");
		//����ʵ� �ʱ�ȭ
		num1 = 500;
		num2 = 600;

		System.out.println("num1: " + num1 + ", num2: " + num2);

	}

	//�Ű������ִ� ������ - �����ε�
	public Constructor(int num1, int num2) {

		System.out.println("�Ű����� �ִ� ������ ȣ���");

		//����ʵ��ʱ�ȭ
		//		this.num1 = num1;
		//		this.num2 = num2;

		//setter�� �̿��� �ʵ� �ʱ�ȭ
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

		//��ü����
		Constructor cons;

		//��ü����
		cons = new Constructor(); //������ ȣ��


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



		//ctrl + shift + [ : ���� ȭ�� ����
		//ctrl + shift + - : ���� ȭ�� ����






	}//main

}//public class