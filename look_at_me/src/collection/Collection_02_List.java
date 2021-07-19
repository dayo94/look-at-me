package collection;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

public class Collection_02_List {
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) {

		List list = new ArrayList();
		List llist = new LinkedList();
		List vect = new Vector();

		//--------------------------------------------

		//ArrayList
		list.add(10);
		list.add(20);
		list.add(30);
		System.out.println(list);

		//--------------------------------------------

		//LinkedList
		llist.add(10);
		llist.add(20);
		llist.add(30);
		System.out.println(llist);

		//--------------------------------------------

		//Vector
		vect.add(10);
		vect.add(20);
		vect.add(30);
		System.out.println(vect);
	}
}


