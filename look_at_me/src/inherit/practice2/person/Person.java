package inherit.practice2.person;

import inherit.practice2.product.Product;

public class Person {

	
	private String name;
	private int money;
	private Product prod = new Product("�̴ٿ�",100);
	
	
	
	
	public Person(String name,int money) {
		this.name=name;
		this.money=money;
	}
	
	public void buy(Product prod) {
		String model = prod.getModel();
		int price = prod.getPrice();
		
		System.out.println(name + "���� " + price +"���� �����ϰ� "
							+ model  + "�� �����մϴ�");
		System.out.println("[�ܾ�] " + (money-price) + "��");
	}
	
	
	
	//getters,setters
	
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getMoney() {
		return money;
	}
	
	public void setMoney(int money) {
		this.money = money;
	}
	
	public Product getProd() {
		return prod;
	}
	
	public void setProd(Product prod) {
		this.prod = prod;
	}
	
	
	
	
	
}//Person class

