package class06.overloading;

public class Overloading {



	//����ʵ�
	private int x;
	private int y;

	//����ʵ� x,y�� ����ϴ� ���
	public void display() {
		System.out.println("(" + x + ", " + y +")");
	}

	//����ʵ� x,y�� ���� �����ϰ��� ����ϴ� ���

	public void display(int x, int y) {

		//�Ű������� �̿��Ͽ� ����ʵ尪 �ʱ�ȭ
		this.x = x;
		this.y = y;

		System.out.println("(" + x + ", " + y +")");
	}


	//-------------------------------------------------------------------------

	public void display(double d) {

	}
	public void display(String d) {

	}

	//����Ÿ�Ը� �ٸ� ������ �����ε��� �������� �ʴ´�
	//	public int display() {
	//		return	
	//	}





}//class