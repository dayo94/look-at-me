package exception;

public class ExceptionEx_02_try_catch {
	public static void main(String[] args) {
		
		int[] arr = new int[5];
		
		int i=0;
		
		try {
			//���ܰ� �߻��� �� �ִ� �ڵ带 ���´�
			
			while(true) {
				
				arr[i] = i+1; //�迭�� �� ����
				
				System.out.println(arr[i]);
				
				i++;
			}
			
		} catch (ArrayIndexOutOfBoundsException e) {
//			System.out.println("[���ܹ߻�] �ε����� ��� ��Ȳ!!");
			System.err.println("[���ܹ߻�] �ε����� ��� ��Ȳ!!"); //���� �۾��� ��µ�
			
			//System.err - ǥ�� ���� ���
			 
			
			//�⺻���� ���Ǵ� ���� ó�� ����
			//	-> ���ܰ� �߻��� ��Ȳ�� ����Ʈ���̽��� ����Ѵ�
			e.printStackTrace();
		}
		
		System.out.println("+ + + ���α׷� ���� ���� + + +");
		
	}
}

