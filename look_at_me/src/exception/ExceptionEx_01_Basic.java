package exception;

public class ExceptionEx_01_Basic {
	public static void main(String[] args) {
		
		int[] arr = new int[5];
		
		int i=0;
		while(true) {
			
			//���� �߻� ����(��Ȳ)
			//	�ε����� ������ ��
			//	�ε����� �迭�� ���̿� ���� ��
			//	�ε����� �迭�� ���̺��� Ŭ ��
			if( i<0 || i>=arr.length ) { // ����ó�� if��
				System.out.println("[����] �ε����� ����� ����ϼ���!");
				break;
			}
			
			arr[i] = i+1; //�迭�� �� ����
			
			i++;
		}
		
		System.out.println("+ + + ���α׷� ���� ���� + + +");
		
	}
}



