package inherit;

class Parent {
	String name;
	int num;
	
	public void display() {
		System.out.println("�θ� Ŭ������ �޼ҵ�");
	}
	
	
	
	
}//parent class



class Child extends Parent{
	int score;
	
	public void print() {
		System.out.println("�ڽ� Ŭ������ �޼ҵ�");
	}
	
	@Override
	public void display() {
		System.out.println("�������̵� �޼ҵ�");
		
	}
	
	//** �������̵�, overriding
	// �޼ҵ� ������
	// ��ӹ��� �޼ҵ��� ����� �������ϴ°�
	// ->�θ�Ŭ������ �޼ҵ�� ����Ÿ��, �̸�, �Ű����� ������ ���ƾ߸� �Ѵ�
	
	//** ������̼�, Annotation 
	
	//	�ڵ��� �ΰ����� �ǹ̸� �ο��� �� ����Ѵ�
	//	Ư�� �����̳� ������ �ڵ忡 ������ �����ų �� �ִ�
	// @Override, @Deprecate, @Target, @Controller, @Service, ...
	
	//@Override ������̼�
	//	�������̵� ��Ģ�� �� ���������� ��ȿ���˻縦 �Ѵ�
	//	��ӹ��� �޼ҵ忡 �����Ͽ� ����Ѵ�
	//	�������̵� ������ ���� ������ ������ �߻��Ѵ�
	
	
	
	
}//child class











public class inheritEx_01 {
	public static void main(String[] args) {

		
		Parent p = new Parent();
		p.name = "�̴ٿ�";
		p.num = 123;
		
		p.display();
		
		System.out.println("-------------------------------");
		
		Child c = new Child();
		
		c.name = "Bob";//���
		c.num = 455;//���
		c.score = 777;
		
		c.display();//���
		c.print();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class