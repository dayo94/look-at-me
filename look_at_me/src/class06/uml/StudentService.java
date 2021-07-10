package class06.uml;

import java.util.Scanner;

public class StudentService {



	private Student stu;
	
	private Scanner input;
	

	
	public StudentService() {
		stu = new Student();
		input = new Scanner(System.in);
	}
	
	
	public void insertinfo() {
		System.out.print("Input Name : ");
		stu.setName(input.nextLine());
		System.out.print("Input Age : ");
		stu.setAge(input.nextInt());
	}
	
	
	public void insertScore() {
		System.out.print("Input Korean : ");
		stu.setKor(input.nextInt());
		System.out.print("Input English : ");
		stu.setEng(input.nextInt());
		System.out.print("Input Mathematics : ");
		stu.setMath(input.nextInt());
	}
	
	
	public void calcSum() {
		stu.setSum(stu.getKor()+stu.getEng()+stu.getMath());
	}
	
	public void calcAvg() {
			stu.setAvg(stu.getSum()/3);
	}
	
	
	public void printStu() {
		this.calcSum();
		this.calcAvg();
		System.out.println();
		System.out.println("- - - �л� ���� - - -");
		System.out.print("�̸�" + "\t" + "����" + "\t" + "����" +
				"\t" + "����" + "\t" + "����" + "\t" 
				+ "����" + "\t" + "���");
		System.out.println();
		System.out.print(stu.getName() + "\t" + stu.getAge() + "\t" 
				+ stu.getKor() + "\t" + stu.getEng() + "\t" 
				+ stu.getMath() + "\t" + stu.getSum() + "\t" 
				+ String.format("%.2f", stu.getAvg())); 
		
	
	
	}
	
	
	
}//class

