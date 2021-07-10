package class06.uml;

public class CarEx {

	public static void main(String[] args) {


		

		Car car = new Car("K5", "Black");
		car.display();
		
		System.out.println("----------");
		
		car.setModel("¸ð´×");
		car.setColor("White");
		
		System.out.println( car.getModel() );
		System.out.println( car.getColor() );
		
		System.out.println("----------");
		car.display();
		

		
		
		
	}//main
	
	
}//class