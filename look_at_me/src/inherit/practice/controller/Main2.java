package inherit.practice.controller;

import inherit.practice.model.Circle;
import inherit.practice.model.Point;
import inherit.practice.model.Rectangle;

public class Main2 {

	public static void main(String[] args) {

		
//		+ �߰� ����
//		* ��������
//		1. Point �� ��ü �迭 ����, ���� : 5��
//		2. �� index���� Circle, Rectangle ��ü ����,
//		�ʱ�ȭ��(���Ǵ��)
//		3. for �� ��� : draw() �޼ҵ� ������
		
		
		//�θ�Ŭ����Ÿ���� ��ü�迭 - Point
		Point[] pArr = new Point[5];
		
		
		
		pArr[0] = new Circle();
		pArr[1] = new Rectangle();
		pArr[2] = new Circle(6,7,8);
		pArr[3] = new Rectangle(6,7,9,10);
		pArr[4] = new Rectangle(9,11,33,22);
		
		for(int i=0; i<pArr.length; i++) {
			pArr[i].draw();
			System.out.println("-------------");
		}
		
		
		
		System.out.println("------------------------");

		
		
		for(Point p : pArr) {
			p.draw();
			System.out.println("-------");
		}
		
		
		
		
		
		
		
		
		
	}//main

}//class
