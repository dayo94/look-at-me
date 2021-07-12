package inherit.practice.controller;

import inherit.practice.model.Circle;
import inherit.practice.model.Rectangle;

public class Main {

	public static void main(String[] args) {

		
		
		System.out.println("------------------------------");
		
		
		Circle[] ci = new Circle[3];
		
		ci[0] = new Circle();
		ci[1] = new Circle(10,20,3);
		ci[2] = new Circle(4,5,7);
		
		
		for(int i=0; i<ci.length; i++) {
		System.out.println("----" + (i+1) + "번째 원----");
			ci[i].draw();
		}
		
		
		System.out.println("------------------------------");

		
		Rectangle[] rects = {
				new Rectangle() ,
				new Rectangle(1,2,3,4) ,
				new Rectangle(5,6,7,8)
				
		};
		
		
		for(int i=0; i<rects.length; i++) {
			System.out.println("----" + (i+1) + "번째 사각형----");
				rects[i].draw();
		}
		
		
		System.out.println("------------------------------");
		
//		for-each
		
		for( Circle c : ci ) {
			c.draw();
		}
		
		
		System.out.println("------------------------------");
		
		
		
		for(Rectangle rt : rects ) {
			rt.draw();
		}
		
		

		
		
		
		
	}

}
