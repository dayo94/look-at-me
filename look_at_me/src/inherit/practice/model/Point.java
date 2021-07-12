package inherit.practice.model;

public class Point {

	protected int x;
	protected int y;


	//constructor

	public Point() {
	
	}

	public Point(int x, int y) {
		this.x=x;
		this.y=y;
	}

	//getset

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}


	//Method

	public void draw() {
		System.out.println("(" + x + ", " + y + ")");
	}


}
