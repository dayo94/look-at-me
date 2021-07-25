package collection.quiz2;

import java.util.HashMap;
import java.util.Set;

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
		booksMap.put(book.getbNo(),book);
		
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
		booksMap.remove(bNo);
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
//		booksMap.entrySet("bTitle",(bTitle,booksMap));
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
		Set<String> key = booksMap.keySet();
		System.out.println("������ȣ\tī�װ�\tå����\t����");
		for(String k : key) {
			printBook(k);
		}
	}

	@Override
	public void printBook(String bNo) {
		/**
		 * å �ѱ��� ������ ����Ѵ�
		 * 
		 * @param bNo - String, ����Ϸ��� å�� å��ȣ
		 */
//		+ printBook(key:String) : void	//key�� �ش��ϴ� Book ���
		System.out.print(booksMap.get(bNo).getbNo()+"    \t");
		System.out.print(booksMap.get(bNo).getCategory()+"    \t");
		System.out.print(booksMap.get(bNo).getTitle()+"   \t");
		System.out.print(booksMap.get(bNo).getAuthor()+"\n\n");
		
		

		 }



	}
	


		
		
		


