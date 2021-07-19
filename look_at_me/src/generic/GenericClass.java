package generic;

class Class02_1 {
	private int data;

	public int display(int data) {
		this.data = data;
		return data;
	}

	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
}

class Class02_2 {
	private double data;

	public double display(double data) {
		this.data = data;
		return data;
	}

	public double getData() {
		return data;
	}
	public void setData(double data) {
		this.data = data;
	}
}

//제네릭 클래스
class Class02<T> {
	private T data;

	public T display(T data) {
		this.data = data;
		return data;
	}

	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
}

public class GenericClass {
	public static void main(String[] args) {

		//타입파라미터를 결정하지 않음
		//	T -> Object (자동)
		Class02 cl = new Class02();

		//----------------------------------------

		//타입파라미터를 String으로 결정함
		//	T -> String
		Class02<String> cl_02 = new Class02<>();

		cl_02.setData("Apple");

		String fruit = cl_02.getData();
		System.out.println( fruit );

		cl_02.display("Banana");

	}
}

