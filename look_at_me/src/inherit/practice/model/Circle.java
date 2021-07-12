package inherit.practice.model;

public class Circle extends Point {

	private int radius;

	//������

	public Circle() {

	}

	public Circle(int x, int y, int radius) {
		super(x,y);
		//center point -> x,y
		this.radius =  radius;
	}

	//getset

	public int getRadius() {
		return radius;
	}

	public void setRadius(int radius) {
		this.radius = radius;
	}



	@Override
	public void draw() {
		//�߽���
		System.out.print("�߽��� : " );
		super.draw();

		//���Ǹ���
		System.out.print("���� ���� : ");
		System.out.printf("%.1f", Math.PI*radius*radius);
		System.out.println();

		//���ǵѷ�
		System.out.print("���� �ѷ� : ");
		System.out.printf("%.1f", 2 * Math.PI * radius);
		System.out.println();

	}


}
