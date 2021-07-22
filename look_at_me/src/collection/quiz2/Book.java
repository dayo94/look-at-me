package collection.quiz2;

public class Book {


		//Field
//		- bNo : String		//도서번호
	private String bNo;
//		- category : int	//도서분류코드(1.인문/2.자연과학/3.의료/4.기타)
	private int category; 
//		- title : String	//책제목
	private String title;
//		- author : String	//저자
	private String author;
	
	//기본생성자, 매개변수 있는 생성자 
	
	public Book() {	}
	
	public Book(String bNo,int category,String title,String author) {
		
		this.bNo = bNo;
		this.category = category;
		this.title = title;
		this.author = author;
	}

	
//	getters and setters 작성함
	
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

	//toString() 오버라이딩함

	@Override
	public String toString() {
		return "Book [bNo=" + bNo + ", category=" + category 
				+ ", title=" + title + ", author=" + author + "]";
	}
	
	

	
		
	
	
	
	
		
		

}
