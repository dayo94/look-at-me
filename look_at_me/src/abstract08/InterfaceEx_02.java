package abstract08;

public class InterfaceEx_02 {

	public static void main(String[] args) {


		Child c = new Child();
		
		c.out();
		
		
		System.out.println("------------------");
		
		Parent p; //�θ�Ÿ�� ��ü ����
		p = new Child(); //�θ�Ÿ�� <- �ڽ�Ÿ��
		
		p.out();//�ڽ� �ν��Ͻ� �޼ҵ� ȣ��(�������ε�)
		
		
		System.out.println("------------------");

		//** extends�� Ŭ������ �θ�Ÿ���̴�
		//** implements�� �������̽��� �θ� Ÿ�Դϴ�
		
		
		Inter_01 i01; //�������̽� ��ü����
		
		i01= new Child();
		
		i01.out(); //�������ε�
		
		System.out.println("------------------");

		Inter_02 i02 = new Child(); //�������̽� ��ü����
		
		i02.out(); //�������ε�
		
		
		

	}//main

}//class



//** �ڹٴ� ���� ����� �����ϰ��ִ�
// -> extendsŰ����� �Ѱ��� Ŭ������ ��ӹ������ִ�

//class P1 {
//	public void display() {
//		System.out.println("P1");
//	}
//}
//class P2 {
//	public void display() {
//		System.out.println("P2");
//	}
//}
//
//
//class Children extends P1, P2 {
//	
//}

