package exception;

class ThrowsTest {

	public void method() throws Exception {

		//Unchecked Exception�� ����ó���� �ʼ��� �ƴϴ�

		//		throw new NullPointerException(); //Unchecked Exception
		//		throw new RuntimeException(); //Unchecked Exception

		//-------------------------------------------------------

		//Checked Exception�� ����ó���� �ʼ���

		throw new Exception(); //Checked Exception

	}

}


public class ExceptionEx_05_throws {
	public static void main(String[] args) {

		//throws Ű����

		//-------------------------------------------------

		ThrowsTest tt = new ThrowsTest();

		try {

			//����ó���� ���ѱ� �޼ҵ带 ȣ��
			//	->����ó���� ����ؾ��ϴ� å���� �����
			tt.method();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}



