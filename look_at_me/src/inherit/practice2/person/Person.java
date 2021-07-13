package inherit.practice2.person;

import inherit.practice2.product.Product;

public class Person {

	

	//--- ��� �ʵ� ---
	private String name; //�̸�
	private int money; //������
	private Product prod; //������ ��ǰ
	//-----------------

	
	//--- ������ ---
	public Person(String name, int money) {
		this.name = name;
		this.money = money;
	}
	//--------------
	
	
	//--- �Ϲ� �޼ҵ� ---
	public void buy(Product p) {
		
		if( money < p.getPrice() ) {
			System.out.println("[ERROR] �ܾ��� �����մϴ�");
			return;
		}
		
		prod = p; //���� ����
		
		money -= p.getPrice(); //������ ����
		
		System.out.println(name + "���� " + p.getPrice() + "���� �����ϰ� "
				+ p.getModel() + " ������");
		System.out.println("[�ܾ�] " + money + "��");
		
	}
	//-------------------
	
	
	//--- Getters, Setters ---
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
	//------------------------
	
	
}//Person class
