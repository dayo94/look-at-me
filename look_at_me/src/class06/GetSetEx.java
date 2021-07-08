package class06;

public class GetSetEx {
	public static void main(String[] args) {
		
		
		
		
		GetSet gs = new GetSet();
		
//		System.out.println(gs.num); //에러, 외부접근
		
		
		gs.setNum(123);
		System.out.println(gs.getNum());
		
		
		
		
	}//main

}//class