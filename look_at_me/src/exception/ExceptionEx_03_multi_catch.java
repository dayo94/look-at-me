package exception;

public class ExceptionEx_03_multi_catch {
	public static void main(String[] args) {
		
		try {
			//try���
			//���� �߻��� �����Ǵ� �ڵ带 �ۼ��Ѵ�
			
		} catch (NullPointerException e) {
			//NullPointerException ���� �߻� �� ����ó���ϴ� �ڵ�
			
		} catch (ArrayIndexOutOfBoundsException e) {
			//ArrayIndexOutOfBoundsException ���� �߻� �� ����ó���ϴ� �ڵ�
			
		} catch (Exception e) {
			//NullPointerException ��
			//ArrayIndexOutOfBoundsException �� ������ ������ ��� ���� �߻� �� ���� ó��
			
		}
		
		// catch������ ���� �� �ۼ��� �� �ִ�
		
		//--------------------------------------------------------------------------------
		
		//���� ����ó��(Multi Catch)
		//	-> catch������ ����Ŭ����Ÿ���� �Ѳ����� ���� �� ���� ���
		
		try {
			
		} catch (NullPointerException | ArrayIndexOutOfBoundsException  e) {
			// NullPointerException ��
			// ArrayIndexOutOfBoundsException �� ���ÿ� ó���� �� �ִ� catch ����
			
			e.printStackTrace();
			
		} catch (Exception e) {
			// ���� ���� ���� ó���ϴ� catch����
			
		}
		
	}
}
