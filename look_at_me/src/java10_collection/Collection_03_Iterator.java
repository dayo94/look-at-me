package java10_collection;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class Collection_03_Iterator {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {

		// Iterator, �ݺ���
		//	�÷����� ��� ��ҵ��� ���������� �ݺ��� �� ����Ѵ�

		//	�÷����� ����� ������ �޶� ǥ�����ι��(�� ���� ���)���� �ݺ��� �� �ִ�

		//-------------------------------------------------------------------------------

		List list = Arrays.asList( "A", "B", "C", "D", "E" );
		System.out.println(list);

		//Arrays.asList() �޼ҵ�
		//	�Ű������� ���޵� �����͸� �̿��Ͽ� ArrayList��ü�� �����Ѵ�
		//	ArrayList�� ������ ���ÿ� �ʱ�ȭ ����̶�� �� �� �ִ�

		//-------------------------------------------------------------------------------

		Iterator iter = null; //�ݺ��� ����

		iter = list.iterator();


		//��Ұ� �����ϴ¸�ŭ �ϳ��� �ݺ��Ѵ�
		while( iter.hasNext() ) {

			//��Ҹ� ��ȯ�ϰ� ������Ҹ� �����ϰ� �����
			System.out.println( iter.next() );

		}


		//Iterator�� �ֿ� �޼ҵ�
		//	public boolean hasNext()
		//		���� ��Ұ� �����ϴ��� Ȯ��
		//		true / false ��ȯ

		//	public E next()
		//		���� ����� �����͸� ��ȯ


	}
}