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
		
		System.out.println( stack.pop() ); //가장 최근에 입력된 데이터를 꺼낸다
		System.out.println( stack.pop() );
		
		System.out.println("---------------");
		
		System.out.println( stack.peek() ); //데이터를 꺼내진 않고 확인만 한다
		System.out.println( stack );
	}
}


