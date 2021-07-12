package inherit.practice;



class Dayo {

	protected String name;
	protected int age;

	public Dayo() {
	}


	public Dayo(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public void display() {
		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
	}

	//getters, setters

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}

}//Dayo class



class Dayog extends Dayo {

	protected double height;
	protected double weight;

	public Dayog() {
	}

	public Dayog(String name, int age, double height, double weight) {
		super(name,age);
		this.height = height;
		this.weight = weight;
	}

	@Override
	public void display() {
		super.display();
		System.out.println("키 : " + height);
		System.out.println("몸무게 : " + weight);
	}

	//getters, setters

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}


}//Dayog class



public class DayoQuiz {

	public static void main(String[] args) {




		Dayo[] da = new Dayo[2];

		da[0] = new Dayo();
		da[1] = new Dayo("이다영",28);

		
		
		for(Dayo d : da) {
			d.display();
			System.out.println("-----------");
		}


		Dayog[] dag = new Dayog[2];

		dag[0] = new Dayog();	
		dag[1] = new Dayog("이다영",28,159.1, 52.0);	



		for(Dayog g : dag) {
			g.display();
			System.out.println("-----------");
		}




	}//main

}//DayoQuiz class
