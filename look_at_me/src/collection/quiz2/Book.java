package collection.quiz2;

public class Book {


		//Field
//		- bNo : String		//������ȣ
	private String bNo;
//		- category : int	//�����з��ڵ�(1.�ι�/2.�ڿ�����/3.�Ƿ�/4.��Ÿ)
	private int category; 
//		- title : String	//å����
	private String title;
//		- author : String	//����
	private String author;
	
	//�⺻������, �Ű����� �ִ� ������ 
	
	public Book() {	}
	
	public Book(String bNo,int category,String title,String author) {
		
		this.bNo = bNo;
		this.category = category;
		this.title = title;
		this.author = author;
	}

	
//	getters and setters �ۼ���
	
	public String getbNo() {
		return bNo;
	}

	public void setbNo(String bNo) {
		this.bNo = bNo;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	//toString() �������̵���

	@Override
	public String toString() {
		return "Book [bNo=" + bNo + ", category=" + category 
				+ ", title=" + title + ", author=" + author + "]";
	}
	
	

	
		
	
	
	
	
		
		

}
