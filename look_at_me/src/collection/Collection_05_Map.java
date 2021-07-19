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
		map.put(2, "Orange");	//기존에 존재하는 key에 매핑, value가 바뀐다
		System.out.println("map : " + map);
		
		System.out.println("-----");
		map.put(1, "Apple");	//key는 없지만 value는 존재하는 값, 상관없이 put된다
		System.out.println("map : " + map);
		
		
		System.out.println("\n---contains-------");
		System.out.println("Key 5 : " + map.containsKey(5));
		
		
		//key 5가 없을 경우 데이터 삽입하기
		if( !map.containsKey(5) ) {
			map.put(5, "Grape");
		}
		
		
		System.out.println("Value Apple : " + map.containsValue("Apple"));
		
		
		System.out.println("\n---size()-------");
		System.out.println("크기 : " + map.size());
		System.out.println("map : " + map);
	
		
		System.out.println("\n---isEmpty()-------");
		System.out.println("비었는가? " + map.isEmpty());
		
		
		System.out.println("\n---remove()-------");
		map.remove("C"); //key를 찾아서 Entry를 제거한다
		System.out.println("map : " + map);
		
		System.out.println("-----");
//		map.remove(2, "Banana"); //key를 찾아서 value가 일치하는 쌍을 제거한다
		map.remove(2, "Orange"); //key를 찾아서 value가 일치하는 쌍을 제거한다
		System.out.println("map : " + map);
		

		
		System.out.println("\n---null값 처리-------");
		
		//에러는 아니지만 key 가 null인 상환은 좋지 않다
		
		//**Hashtable은 put할 때 key값으로 null을 사용할 수 없다
		//**Hashtable은 put할 때 value값으로 null을 사용할 수 없다
		
//		map.put(null, "Bob");
//		map.put(10, null);
		System.out.println("map : " + map);
		
//		map.put(null, null);
		System.out.println("map : " + map);
		
		
		System.out.println("\n---map <-> set-------");
		
		//map->set
		Set keySet = map.keySet(); //key를 Set으로 추출한다
		Set entrySet = map.entrySet(); //key-value쌍(entry)을 Set으로 추출한다
		
		System.out.println("keySet : " + keySet);
		System.out.println("entrySet : " + entrySet);
		
		
		System.out.println("\n---keySet을 이용한 map 반복하기-------");
		Set keys = map.keySet();
		
		Iterator iter = keys.iterator(); //Key Set에 대한 Iterator
		
		while( iter.hasNext() ) {
			Object key = iter.next(); //키 추출
			
			//key를 이용한 value활용(출력)
			System.out.println( map.get(key) );
		}
		
	}
}
