package inherit.practice.model;

public class Rectangle extends Point{

	private int width;
	private int height;

	//point의 x,y는 사각형 좌측상단의 좌표값

	//생성자

	public Rectangle() {

	}

	public Rectangle(int x, int y, int width, int height) {
		super(x,y);
		this.width = width;
		this.height = height;

	}

	//getset

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}
	
	
	@Override
	public void draw() {
		System.out.print("좌표 : " );
		super.draw();

		System.out.printf("면적: %.1f\n", width*(double)height);
		System.out.printf("둘레: %.1f\n", 2*(width+(double)height));
		
		
	}




}
