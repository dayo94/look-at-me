package exception;

public class ExceptionEx_04_throw {
	public static void main(String[] args) {
		
		//throw 키워드
		
		//-----------------------------------------------------
		
		String str = null;
		
		//NullPointerException 발생한다 - 자연적으로 예외 발생
//		System.out.println( str.length() ); //예외 발생 시 프로그램 강제 종료
		
		//-----------------------------------------------------
		
		if( str == null ) { //예외가 발생하는 경우
			
			System.out.println("[ERROR] 문자열이 null입니다");

			
			//직접 예외 발생시키기
//			throw new NullPointerException(); //예외 발생 시 프로그램 강제 종료
			
			
		} else { //예외가 발생하지 않는 경우
			
			System.out.println("문자열의 길이 : " + str.length() );
			
		}
		
		System.out.println("+ + + NullPointerException 발생 이후 + + +");
		
		//-----------------------------------------------------
		
		//예외 정보 객체 생성
		//	-> 예외가 던져지진 않는다(throw되지 않음)
		NullPointerException e = new NullPointerException();
		
		
		//예외 던지기(발생 시키기)
		throw e;
		
		
		// 예외 객체를 생성(new)한다고 해서 예외가 발생(throw)되는 것은 아니다
		
		// 예외가 발생된 위치는 객체를 생성한 곳으로 지정된다
		//	-> throw코드에서 곧바로 new로 예외객체를 생성하는 것이 좋다
		
	}
}



