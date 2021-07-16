package java10_collection;

import java.util.ArrayList;

public class Collection_01_List {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {
		
		ArrayList list = new ArrayList(); //빈(empty) 리스트
		
		System.out.println("---삽입-------");
		
		list.add("Banana"); //[0]
		list.add("Apple"); //[1]
		list.add("Cherry"); //[2]
		
		System.out.println( list );
		
		
		System.out.println("\n---조회-------");
		System.out.println("1번째 요소 : " + list.get(1));
		
		
		//size() : 리스트의 크기(길이)를 반환한다
		//	배열.length
		//	리스트.size()
		
		for(int i=0; i<list.size(); i++) { //모든 요소 출력
			System.out.println( list.get(i) );
		}
		
		
		System.out.println("\n---수정-------");
		list.set(0, "Orange");
		
		System.out.println( list );
		
		
		System.out.println("\n---삭제-------");
//		list.remove(int index); //인덱스 지정 삭제
		list.remove(1); //1번째 인덱스 삭제
		System.out.println(list);
		
//		list.remove(Object obj); //값 비교해서 삭제
		list.remove("Cherry");
		System.out.println(list);
		
		//-------------------------------------------------
		
		//삽입, 조회, 수정, 삭제
		
		//자료구조에서 자주 사용되는 동작
		//	CRUD 작업
		
		//	Create	- 추가/삽입/생성
		//	Read	- 조회/탐색
		//	Update	- 수정/변경
		//	Delete	- 삭제/제거
		
		//-------------------------------------------------
		
		System.out.println("\n---isEmpty-------");
		//	-> 리스트가 비어있는지 확인
		
		System.out.println(list.isEmpty()); //false
		
		
		ArrayList l1 = null; //리스트를 생성하지 않음
		ArrayList l2 = new ArrayList(); //리스트 생성함, 비어있음

		System.out.println("l1 : " + l1);
		System.out.println("l2 : " + l2);

//		l1.isEmpty(); //에러, NullPointerException
		System.out.println( l1 == null );
		
		l2.isEmpty(); //true
		System.out.println( l2 == null ); //false
		
		
		System.out.println("\n---clear-------");
		//	리스트의 모든 요소를 제거한다
		
		System.out.println(list);
		
		list.clear(); //모든 요소 제거
		
		System.out.println(list);
		
		
		System.out.println("\n----------");
		
		list.add("문자열");
		list.add(123);
		list.add(45.7656);
		list.add('A');
		list.add(true);
		
		System.out.println(list);
		
	}
}

