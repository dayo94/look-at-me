package inherit;

class Parent4 {
	protected int num;

	public Parent4() {

		System.out.println("�θ� ����Ʈ ������");
		
	}
		
		public Parent4(int num) {
			this.num = num;
			System.out.println("�θ� �Ű������ִ� ������");

	}


}//Parent class


class Child4 extends Parent4 {
	

	
	public Child4() {
		super(); //���ۻ�����, �����Ǿ�����
		System.out.println("�ڽ� ����Ʈ ������");
		
	}

	
	
	public Child4(int num) {
		
		super(num);
		super.num = num ;
//		this.num = num; Child4�ʵ忡 num�� ��� ���ۿ�������
//						�ڵ����� ã��
	
		System.out.println("�ڽ� �Ű����� �ִ� ������");
		
	}
	
	
	

}//Child class





class inheritEx_04 {
	public static void main(String[] args) {

		Parent4 p = new Parent4();

		System.out.println("----------------------");

		Child4 c = new Child4();

		System.out.println("----------------------");

		Parent4 p2 = new Parent4(111);
	
		System.out.println("----------------------");
	
	
		Child4 c2 = new Child4(333);
	
	
	
	
	
	}//main

}//class
