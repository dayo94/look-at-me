package inherit;

class Parent3 {
	
//	private int num = 111;
	protected int num = 111; //protected�������Ѵ� : ������Ű�� + ��Ӱ���
	
	public Parent3() {
		System.out.println("�θ� ����Ʈ ������");
		System.out.println(this.num); //����ʵ�
	}
	
}//Parent class


class Child3 extends Parent3 {
	private int num = 333;
	
	public Child3() {
		System.out.println("�ڽ� ����Ʈ ������");
		System.out.println(this.num);
		System.out.println(super.num);//��ӹ��� �θ�Ŭ������ ���
	}
	
}//Child class





class inheritEx_03 {
	public static void main(String[] args) {
	
		Parent3 p = new Parent3();
		
		System.out.println("-------------------------");
	
		Child3 c = new Child3();
		
		
		
		
	}//main

}//class