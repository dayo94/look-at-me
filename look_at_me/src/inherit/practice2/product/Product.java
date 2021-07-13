package inherit.practice2.product;

public class Product {


	protected String model;
	protected int price;

//	public Product() {
//
//	}

	public Product(String model, int price) {
		this.model = model;
		this.price = price;
	}


	public void out() {


	}









	//getters, setters

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}



}//product class
