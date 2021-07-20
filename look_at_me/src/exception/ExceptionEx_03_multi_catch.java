package exception;

public class ExceptionEx_03_multi_catch {
	public static void main(String[] args) {
		
		try {
			//try블록
			//예외 발생이 예측되는 코드를 작성한다
			
		} catch (NullPointerException e) {
			//NullPointerException 예외 발생 시 예외처리하는 코드
			
		} catch (ArrayIndexOutOfBoundsException e) {
			//ArrayIndexOutOfBoundsException 예외 발생 시 예외처리하는 코드
			
		} catch (Exception e) {
			//NullPointerException 과
			//ArrayIndexOutOfBoundsException 를 제외한 나머지 모든 예외 발생 시 예외 처리
			
		}
		
		// catch구문을 여러 개 작성할 수 있다
		
		//--------------------------------------------------------------------------------
		
		//다중 예외처리(Multi Catch)
		//	-> catch구문에 예외클래스타입을 한꺼번에 여러 개 적는 방법
		
		try {
			
		} catch (NullPointerException | ArrayIndexOutOfBoundsException  e) {
			// NullPointerException 과
			// ArrayIndexOutOfBoundsException 를 동시에 처리할 수 있는 catch 구문
			
			e.printStackTrace();
			
		} catch (Exception e) {
			// 남은 예외 전부 처리하는 catch구문
			
		}
		
	}
}
