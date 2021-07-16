package java10_collection;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class Collection_03_Iterator {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {

		// Iterator, 반복자
		//	컬렉션의 모든 요소들을 순차적으로 반복할 때 사용한다

		//	컬렉션의 요소의 형식이 달라도 표준적인방법(다 같은 방법)으로 반복할 수 있다

		//-------------------------------------------------------------------------------

		List list = Arrays.asList( "A", "B", "C", "D", "E" );
		System.out.println(list);

		//Arrays.asList() 메소드
		//	매개변수로 전달된 데이터를 이용하여 ArrayList객체를 생성한다
		//	ArrayList의 생성과 동시에 초기화 기능이라고 볼 수 있다

		//-------------------------------------------------------------------------------

		Iterator iter = null; //반복자 변수

		iter = list.iterator();


		//요소가 존재하는만큼 하나씩 반복한다
		while( iter.hasNext() ) {

			//요소를 반환하고 다음요소를 참조하게 만든다
			System.out.println( iter.next() );

		}


		//Iterator의 주요 메소드
		//	public boolean hasNext()
		//		다음 요소가 존재하는지 확인
		//		true / false 반환

		//	public E next()
		//		다음 요소의 데이터를 반환


	}
}