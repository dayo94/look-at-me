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

//���׸� Ŭ����
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

		//Ÿ���Ķ���͸� �������� ����
		//	T -> Object (�ڵ�)
		Class02 cl = new Class02();

		//----------------------------------------

		//Ÿ���Ķ���͸� String���� ������
		//	T -> String
		Class02<String> cl_02 = new Class02<>();

		cl_02.setData("Apple");

		String fruit = cl_02.getData();
		System.out.println( fruit );

		cl_02.display("Banana");

	}
}

