package collection;

import java.util.LinkedList;
import java.util.Queue;

public class Collection_08_Queue {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {

		Queue queue = new LinkedList();


		//ť�� ������ �ֱ� - ��ť(Enqueue)
		queue.offer("Apple");
		queue.offer("Banana");
		queue.offer("Cherry");

		System.out.println(queue);

		System.out.println("----------");

		//ť���� ������ ������ �� ���� - ��ũ(Dequeue)
		System.out.println( queue.poll() );
		System.out.println( queue.poll() );

		System.out.println( queue );

		System.out.println("----------");

		System.out.println( queue.peek() ); //����X
		System.out.println( queue );
	}
}



