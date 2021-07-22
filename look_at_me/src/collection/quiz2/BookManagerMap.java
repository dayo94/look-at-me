package collection.quiz2;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class BookManagerMap implements BookManagerMapInterface {

		//Field
//		- booksMap : HashMap	//������ȣ�� Ű�� �����
	
	private HashMap<String, Book> booksMap;

		//�⺻������ : �� ��ü ������
	
	public BookManagerMap() {
		
		booksMap = new HashMap();

	}
	

		//�Ű������ִ� ������ : �ٸ� ���� ���޹޾�. 
		//		booksMap ��ü�� �ʱⰪ���� ������
	
	public BookManagerMap(HashMap<String, Book> map) {
		
			booksMap = map;
		
	}


	@Override
	public void putBook(Book book) {
		/**
		 * �� ���� �߰�
		 * 	�ʿ� ���ο� ������ �߰��Ѵ�
		 * 
		 * @param book - Book, ���Ӱ� �߰��� å ������ ����ִ� ��ü
		 */
//		+ putBook(book:Book) : void	//�ʿ� ��ü �߰�, ������ȣ�� Ű�� �����
		Scanner sc = new Scanner(System.in);
		
		System.out.println("������ȣ�� �Է��ϼ���");
		book.setbNo(sc.nextLine());
		System.out.println("�����з��ڵ带 �Է��ϼ���");
		book.setCategory(sc.nextInt());
		System.out.println("å ������ �Է��ϼ���");
		book.setTitle(sc.nextLine());
		System.out.println("���ڸ� �Է��ϼ���");
		book.setAuthor(sc.nextLine());
		
		
		
		
	}


	@Override
	public void removeBook(String bNo) {
		/**
		 * ���� ����
		 * 	å ��ȣ�� ���޹޾� �ʿ��� ���� ������ �����Ѵ�
		 * 
		 * 
		 * @param bNo - String, ������ ������ �̸� 
		 */
//		+ removeBook(key:String) : void	//�ʿ��� ��ü ����
		Scanner sc = new Scanner(System.in);
		
		System.out.println("������ ������ȣ�� �Է��ϼ���");
//		booksMap.
//		booksMap.remove("bNo");
	}


	@Override
	public String searchBook(String bTitle) {
		/**
		 * ���� ���� �˻�
		 * 	å �̸��� ���޹޾� �ش� å�� å��ȣ�� ��ȯ�Ѵ�
		 *	�������� �ʴ� å�̶�� null�� ��ȯ�Ѵ�
		 * 
		 * @param bTitle - String, �˻��Ϸ��� å �̸�
		 * @return
		 * 	String - �˻��� å��ȣ
		 * 	null - �˻��� å ������ �������� ���� ��
		 */
//		+ searchBook(String bTitle) : String	: entrySet() ���
//		�������� ��ġ�ϴ� ��ü�� ������ȣ�� ����
//		�������� ��ü�� �ʿ� ������, null ������		
		return null;
	}


	@Override
	public void displayAll() {
		/**
		 * ��� å�� ������ ����Ѵ�
		 * 	printBook() Ȱ��
		 *  
		 */
//		+ displayAll():void		//������ ��� ��� : keySet() ���
		
	}


	@Override
	public void printBook(String bNo) {
		/**
		 * å �ѱ��� ������ ����Ѵ�
		 * 
		 * @param bNo - String, ����Ϸ��� å�� å��ȣ
		 */
//		+ printBook(key:String) : void	//key�� �ش��ϴ� Book ���
		
		
	}
	


		
		
		

}
