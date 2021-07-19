package generic;

//일반 클래스
class Class03 {

	//제네릭 메소드
	public <T> void display(int num) {
		int data;
		data = num;
	}

	//제네릭 메소드
	//	-> 반환타입, 매개변수, 지역변수 전부 제네릭 타입 사용 가능
	public <T> T out(T obj) {
		T data;

		data = obj;

		return data;
	}

}


public class GenericMethod {
	public static void main(String[] args) {

		Class03 cl = new Class03();

		cl.out(12345); //타입파라미터를 결정하지 않음, T -> Integer (자동 변환)

		cl.<Double>out(34.56); //타입파라미터를 Double로 결정함, T -> Double

	}
}

