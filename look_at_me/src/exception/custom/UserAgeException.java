package exception.custom;

//Checked Exception Ŭ���� �����
//	-> ExceptionŬ������ ��ӹ޴´�
public class UserAgeException extends Exception {

	@Override
	public String getMessage() { //���� �޽���(�߻� ����)�� ��ȯ�ϴ� �޼ҵ�
		return "���̴� 0���� �۰ų� 150���� Ŭ �� ����";
	}
	
}

//Unchecked Exception Ŭ���� �����
//	-> RuntimeExceptionŬ������ ��ӹ޴´�
//public class UserAgeException extends RuntimeException {
//}
