package inherit.practice2.person;

import inherit.practice2.product.Product;

public class Person {

	
	private String name;
	private int money;
	private Product prod = new Product("이다영",100);
	
	
	
	
	public Person(String name,int money) {
		this.name=name;
		this.money=money;
	}
	
	public void buy(Product prod) {
		String model = prod.getModel();
		int price = prod.getPrice();
		
		System.out.println(name + "님이 " + price +"원을 지불하고 "
							+ model  + "를 구매합니다");
		System.out.println("[잔액] " + (money-price) + "원");
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

