package class06.overloading;

public class Overloading {



	//멤버필드
	private int x;
	private int y;

	//멤버필드 x,y를 출력하는 기능
	public void display() {
		System.out.println("(" + x + ", " + y +")");
	}

	//멤버필드 x,y에 값을 저장하고나서 출력하는 기능

	public void display(int x, int y) {

		//매개변수를 이용하여 멤버필드값 초기화
		this.x = x;
		this.y = y;

		System.out.println("(" + x + ", " + y +")");
	}


	//-------------------------------------------------------------------------

	public void display(double d) {

	}
	public void display(String d) {

	}

	//리턴타입만 다를 때에는 오버로딩이 성립되지 않는다
	//	public int display() {
	//		return	
	//	}





}//class