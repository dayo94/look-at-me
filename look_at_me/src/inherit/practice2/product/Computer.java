package inherit.practice2.product;

public class Computer extends Product {



	public Computer (String model, int price) {
		super("ÀÌ´Ù¿µ",100); //
		this.model = model;
		this.price = price;
	}

	
	

	@Override
	public void out() {
		System.out.println("Computer");
	}






}//Computer class
