package inherit;

class Parent2 {
	
	public int num;
	
	public void display() {
		System.out.println("�θ�޼ҵ�");
	}
	
}


class Child2 extends Parent2 {
	private int num;
	@Override
	public void display() {
		num = 111;
		System.out.println("�������̵� �޼ҵ�");
	}
	
	public void print() {
	
		System.out.println("�ڽ� ���� �޼ҵ�");
	}
	
}





class inheritEx_02 {
	public static void main(String[] args) {
		
	
	Child2 c = new Child2();
//	c.num = 222;
	c.display();

	
	System.out.println("-------------------");
	
	Parent2 p = new Parent2();
	p.num = 888;
	p.display();
	
	
	System.out.println("-------------------");
	
	Parent2 pc = new Child2();
	
	pc.display();
	
//	pc.print();

	System.out.println("-------------------");

	
	//Parent2 -> Child2 ����ȯ
	// **�ν��Ͻ��� Ÿ�����θ� ����ȯ�Ҽ��ִ�
	
	((Child2)pc).print();
	
	//pc : Parent2 Ÿ�� (�ν��Ͻ��� Child2 Ÿ��)
	
	// ((Child2)pc) : Child2 Ÿ������ ����ȯ	
	
	
	System.out.println("-------------------");
	
	//�ڽ�Ŭ������ �θ�Ŭ����Ÿ������ �ڵ�����ȯ�Ѵ�
	
	//�θ�Ÿ�� ��ü������ �ڽ�Ÿ�� �ν��Ͻ��� �����Ѵ�
	
	
	
//	Child2 cp = new Parent2();
	
	
	//ClassCastException �߻�
	// �θ�Ŭ����Ÿ���� �ڽ�Ŭ����Ÿ������ ����ȯ�Ҽ�����
	Child2 cp = (Child2)new Parent2();
	
	//** java.lang.ClassCastException ����
	// Ư�� Ŭ������ �ٸ� Ŭ������ ����ȯ�Ϸ����� �� �߻��Ѵ�
	
	
	
		
		
	}//main

}//class