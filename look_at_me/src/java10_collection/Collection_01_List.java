package java10_collection;

import java.util.ArrayList;

public class Collection_01_List {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {
		
		ArrayList list = new ArrayList(); //��(empty) ����Ʈ
		
		System.out.println("---����-------");
		
		list.add("Banana"); //[0]
		list.add("Apple"); //[1]
		list.add("Cherry"); //[2]
		
		System.out.println( list );
		
		
		System.out.println("\n---��ȸ-------");
		System.out.println("1��° ��� : " + list.get(1));
		
		
		//size() : ����Ʈ�� ũ��(����)�� ��ȯ�Ѵ�
		//	�迭.length
		//	����Ʈ.size()
		
		for(int i=0; i<list.size(); i++) { //��� ��� ���
			System.out.println( list.get(i) );
		}
		
		
		System.out.println("\n---����-------");
		list.set(0, "Orange");
		
		System.out.println( list );
		
		
		System.out.println("\n---����-------");
//		list.remove(int index); //�ε��� ���� ����
		list.remove(1); //1��° �ε��� ����
		System.out.println(list);
		
//		list.remove(Object obj); //�� ���ؼ� ����
		list.remove("Cherry");
		System.out.println(list);
		
		//-------------------------------------------------
		
		//����, ��ȸ, ����, ����
		
		//�ڷᱸ������ ���� ���Ǵ� ����
		//	CRUD �۾�
		
		//	Create	- �߰�/����/����
		//	Read	- ��ȸ/Ž��
		//	Update	- ����/����
		//	Delete	- ����/����
		
		//-------------------------------------------------
		
		System.out.println("\n---isEmpty-------");
		//	-> ����Ʈ�� ����ִ��� Ȯ��
		
		System.out.println(list.isEmpty()); //false
		
		
		ArrayList l1 = null; //����Ʈ�� �������� ����
		ArrayList l2 = new ArrayList(); //����Ʈ ������, �������

		System.out.println("l1 : " + l1);
		System.out.println("l2 : " + l2);

//		l1.isEmpty(); //����, NullPointerException
		System.out.println( l1 == null );
		
		l2.isEmpty(); //true
		System.out.println( l2 == null ); //false
		
		
		System.out.println("\n---clear-------");
		//	����Ʈ�� ��� ��Ҹ� �����Ѵ�
		
		System.out.println(list);
		
		list.clear(); //��� ��� ����
		
		System.out.println(list);
		
		
		System.out.println("\n----------");
		
		list.add("���ڿ�");
		list.add(123);
		list.add(45.7656);
		list.add('A');
		list.add(true);
		
		System.out.println(list);
		
	}
}

