package exception;

public class ExceptionEx_04_throw {
	public static void main(String[] args) {
		
		//throw Ű����
		
		//-----------------------------------------------------
		
		String str = null;
		
		//NullPointerException �߻��Ѵ� - �ڿ������� ���� �߻�
//		System.out.println( str.length() ); //���� �߻� �� ���α׷� ���� ����
		
		//-----------------------------------------------------
		
		if( str == null ) { //���ܰ� �߻��ϴ� ���
			
			System.out.println("[ERROR] ���ڿ��� null�Դϴ�");

			
			//���� ���� �߻���Ű��
//			throw new NullPointerException(); //���� �߻� �� ���α׷� ���� ����
			
			
		} else { //���ܰ� �߻����� �ʴ� ���
			
			System.out.println("���ڿ��� ���� : " + str.length() );
			
		}
		
		System.out.println("+ + + NullPointerException �߻� ���� + + +");
		
		//-----------------------------------------------------
		
		//���� ���� ��ü ����
		//	-> ���ܰ� �������� �ʴ´�(throw���� ����)
		NullPointerException e = new NullPointerException();
		
		
		//���� ������(�߻� ��Ű��)
		throw e;
		
		
		// ���� ��ü�� ����(new)�Ѵٰ� �ؼ� ���ܰ� �߻�(throw)�Ǵ� ���� �ƴϴ�
		
		// ���ܰ� �߻��� ��ġ�� ��ü�� ������ ������ �����ȴ�
		//	-> throw�ڵ忡�� ��ٷ� new�� ���ܰ�ü�� �����ϴ� ���� ����
		
	}
}



