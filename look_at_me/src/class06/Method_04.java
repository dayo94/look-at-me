package class06;

public class Method_04 {

	

	
	public void returnTest() {
		for(int i=0; i<100; i++) {
			
			if( i>=5 ) {
//				break;  //�ݺ��� �ߴ�(����)
				return; //�޼ҵ� �ߴ�(����)
			}
			System.out.println(i);
		}
		System.out.println("---�ݺ��� ���� ���� ����� ---");
	}
	
	
	
	
}//class
