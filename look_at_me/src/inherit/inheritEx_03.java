package inherit;

class Parent3 {
	
//	private int num = 111;
	protected int num = 111; //protected접근제한다 : 같은패키지 + 상속관계
	
	public Parent3() {
		System.out.println("부모 디폴트 생성자");
		System.out.println(this.num); //멤버필드
	}
	
}//Parent class


class Child3 extends Parent3 {
	private int num = 333;
	
	public Child3() {
		System.out.println("자식 디폴트 생성자");
		System.out.println(this.num);
		System.out.println(super.num);//상속받은 부모클래스의 멤버
	}
	
}//Child class





class inheritEx_03 {
	public static void main(String[] args) {
	
		Parent3 p = new Parent3();
		
		System.out.println("-------------------------");
	
		Child3 c = new Child3();
		
		
		
		
	}//main

}//class