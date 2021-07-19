package collection;

import java.util.List;
import java.util.Stack;

public class Collection_07_Stack {
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {
		
//		List stack = new Stack();
//		stack.push();
//		stack.pop();
		
		//--------------------------------------------------
		
		Stack stack = new Stack();
		
		stack.push("Apple");
		stack.push("Banana");
		stack.push("Cherry");
		
		System.out.println(stack);
		
		System.out.println("---------------");
		
		System.out.println( stack.pop() ); //���� �ֱٿ� �Էµ� �����͸� ������
		System.out.println( stack.pop() );
		
		System.out.println("---------------");
		
		System.out.println( stack.peek() ); //�����͸� ������ �ʰ� Ȯ�θ� �Ѵ�
		System.out.println( stack );
	}
}


