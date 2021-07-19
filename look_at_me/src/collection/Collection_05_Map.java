package collection;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Collection_05_Map {
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {
		
//		Map map = new HashMap();
		Map map = new Hashtable();
		
		
		map.put("a", "Apple");
		map.put(2, "Banana");
		map.put("C", "Cherry");
		
		System.out.println("map : " + map);
		
		
		System.out.println("\n---get(key)-------");
		System.out.println(map.get("C"));
		
		
		System.out.println("\n---put(key, value)-------");
		map.put(true, "Durian");
		System.out.println("map : " + map);
	
		System.out.println("-----");
		map.put(2, "Orange");	//������ �����ϴ� key�� ����, value�� �ٲ��
		System.out.println("map : " + map);
		
		System.out.println("-----");
		map.put(1, "Apple");	//key�� ������ value�� �����ϴ� ��, ������� put�ȴ�
		System.out.println("map : " + map);
		
		
		System.out.println("\n---contains-------");
		System.out.println("Key 5 : " + map.containsKey(5));
		
		
		//key 5�� ���� ��� ������ �����ϱ�
		if( !map.containsKey(5) ) {
			map.put(5, "Grape");
		}
		
		
		System.out.println("Value Apple : " + map.containsValue("Apple"));
		
		
		System.out.println("\n---size()-------");
		System.out.println("ũ�� : " + map.size());
		System.out.println("map : " + map);
	
		
		System.out.println("\n---isEmpty()-------");
		System.out.println("����°�? " + map.isEmpty());
		
		
		System.out.println("\n---remove()-------");
		map.remove("C"); //key�� ã�Ƽ� Entry�� �����Ѵ�
		System.out.println("map : " + map);
		
		System.out.println("-----");
//		map.remove(2, "Banana"); //key�� ã�Ƽ� value�� ��ġ�ϴ� ���� �����Ѵ�
		map.remove(2, "Orange"); //key�� ã�Ƽ� value�� ��ġ�ϴ� ���� �����Ѵ�
		System.out.println("map : " + map);
		

		
		System.out.println("\n---null�� ó��-------");
		
		//������ �ƴ����� key �� null�� ��ȯ�� ���� �ʴ�
		
		//**Hashtable�� put�� �� key������ null�� ����� �� ����
		//**Hashtable�� put�� �� value������ null�� ����� �� ����
		
//		map.put(null, "Bob");
//		map.put(10, null);
		System.out.println("map : " + map);
		
//		map.put(null, null);
		System.out.println("map : " + map);
		
		
		System.out.println("\n---map <-> set-------");
		
		//map->set
		Set keySet = map.keySet(); //key�� Set���� �����Ѵ�
		Set entrySet = map.entrySet(); //key-value��(entry)�� Set���� �����Ѵ�
		
		System.out.println("keySet : " + keySet);
		System.out.println("entrySet : " + entrySet);
		
		
		System.out.println("\n---keySet�� �̿��� map �ݺ��ϱ�-------");
		Set keys = map.keySet();
		
		Iterator iter = keys.iterator(); //Key Set�� ���� Iterator
		
		while( iter.hasNext() ) {
			Object key = iter.next(); //Ű ����
			
			//key�� �̿��� valueȰ��(���)
			System.out.println( map.get(key) );
		}
		
	}
}
