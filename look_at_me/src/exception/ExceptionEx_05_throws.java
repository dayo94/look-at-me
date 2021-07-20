package exception;

class ThrowsTest {

	public void method() throws Exception {

		//Unchecked Exception은 예외처리가 필수는 아니다

		//		throw new NullPointerException(); //Unchecked Exception
		//		throw new RuntimeException(); //Unchecked Exception

		//-------------------------------------------------------

		//Checked Exception은 예외처리가 필수다

		throw new Exception(); //Checked Exception

	}

}


public class ExceptionEx_05_throws {
	public static void main(String[] args) {

		//throws 키워드

		//-------------------------------------------------

		ThrowsTest tt = new ThrowsTest();

		try {

			//예외처리를 떠넘긴 메소드를 호출
			//	->예외처리를 대신해야하는 책임이 생긴다
			tt.method();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}



