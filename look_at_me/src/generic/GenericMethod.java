package generic;

//�Ϲ� Ŭ����
class Class03 {

	//���׸� �޼ҵ�
	public <T> void display(int num) {
		int data;
		data = num;
	}

	//���׸� �޼ҵ�
	//	-> ��ȯŸ��, �Ű�����, �������� ���� ���׸� Ÿ�� ��� ����
	public <T> T out(T obj) {
		T data;

		data = obj;

		return data;
	}

}


public class GenericMethod {
	public static void main(String[] args) {

		Class03 cl = new Class03();

		cl.out(12345); //Ÿ���Ķ���͸� �������� ����, T -> Integer (�ڵ� ��ȯ)

		cl.<Double>out(34.56); //Ÿ���Ķ���͸� Double�� ������, T -> Double

	}
}

