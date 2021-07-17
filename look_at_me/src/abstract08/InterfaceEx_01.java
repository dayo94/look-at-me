package abstract08;


abstract class TestClass {
	int num; //����ʵ�, �ν��Ͻ� ����
	
	private void method() {//����޼ҵ�, �Ϲݸ޼ҵ�
		
	}
	
	public abstract void method1();//����޼ҵ�, �߻�޼ҵ�
	public abstract void method2();//����޼ҵ�, �߻�޼ҵ�
	
	
	
}//TestClass class


//--------------------------------------------------------

interface TestInterface { //�������̽�
	//����ʵ�, �߻�޼ҵ常 ����� ���� �� �ִ�
	
//--------------------------------------------------------
	
	//��� �ʵ�
	// -> public static final Ű���带 ���� �ʵ常 ���� �����ϴ�
	
	public static final int NUM1 = 123; //����� ���ÿ� �ʱ�ȭ �ʼ�! 
	
	int NUM2 = 345;
	
	//public static final int Ű���带 �����ϰ�
	//�ʵ带 �����ص� �ڵ����� ����


	//�������̽������� �ʵ�� public static final int��
	//�ٿ��ִ°�������

	
	//�������̽��� �Ϲ� �޼ҵ带 ����� ����������
	
//	public void method() {
//		
//	}
	
	
	public abstract void out();
	
	
	public void display(); // �߻� �޼ҵ� abstract ��������
	
	
	
	
}

//--------------------------------------------------------


//�߻�Ŭ���� ���

class Test extends TestClass {

	@Override
	public void method1() {
		
	}

	@Override
	public void method2() {
		
	}
	
	
	
	
	
	
	
}//Test class


//--------------------------------------------------------

//�������̽� �����ϱ�(��ӹޱ�)

class Test2 implements TestInterface {

	
	
	@Override
	public void out() {
		
	}

	@Override
	public void display() {
		
	}
	
	
	
}//Test2 class

//��Ӹ��� �״��� �������̽�

class Test3 extends TestClass implements TestInterface {

	//TestInterface�� ��� �޼ҵ�(interface implements)
	
	@Override
	public void out() {
		
	}

	@Override
	public void display() {
		
	}

	
	//TestClass�� ��� �޼ҵ�(extends)
	
	@Override
	public void method1() {
		
	}

	@Override
	public void method2() {
		
	}
	
	
}























//--------------------------------------------------------
public class InterfaceEx_01 {

	public static void main(String[] args) {

		
		//�������̽��� ��� �ʵ�
		System.out.println(TestInterface.NUM1);
		System.out.println(TestInterface.NUM2);
		
		//�������̽��� ��ӹ��� Ŭ������ ��� �ʵ�
		System.out.println(Test3.NUM1);
		System.out.println(Test3.NUM2);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

//--------------------------------------------------------