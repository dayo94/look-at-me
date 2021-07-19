package collection;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;
import java.util.Iterator;
import java.util.Set;

public class Collection_04_set {
	public static void main(String[] args) {
		
//		Set set = new HashSet(); //�⺻ Set
//		Set set = new LinkedHashSet(); //������ ���� ���� Set
		Set set = new TreeSet(); //���� ���� Set
		
		set.add(20);
		set.add(30);
		set.add(20);
		set.add(30);
		set.add(10);
		set.add(10);
		
		System.out.println(set);
	
		System.out.println("----------");
		
		//��ü ��� ����ϱ� - Iterator
		
		Iterator iter = set.iterator();
		
		while( iter.hasNext() ) {
			System.out.println( iter.next() );
		}
		
		System.out.println("----------");
		
		System.out.println("ũ�� : " + set.size());
		System.out.println("����°�? " + set.isEmpty());
		System.out.println("30�� ����? " + set.contains(30));
		System.out.println("30�� ���� : " + set.remove(30));
		
		System.out.println(set);
		
		System.out.println("----------");
		
		set.clear();
		System.out.println("����°�? " + set.isEmpty());
		System.out.println(set);
		
	}
}



