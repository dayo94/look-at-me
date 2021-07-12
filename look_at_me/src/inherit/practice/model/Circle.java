package inherit.practice.model;

public class Circle extends Point {

	private int radius;

	//생성자

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
		//중심점
		System.out.print("중심점 : " );
		super.draw();

		//원의면적
		System.out.print("원의 면적 : ");
		System.out.printf("%.1f", Math.PI*radius*radius);
		System.out.println();

		//원의둘레
		System.out.print("원의 둘레 : ");
		System.out.printf("%.1f", 2 * Math.PI * radius);
		System.out.println();

	}


}
