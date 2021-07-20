package exception.custom;

public class CustomExceptionEx {
	public static void main(String[] args) {
		
		User user = new User();
		
		try {
//			user.setAge(22); //예외 발생하지 않음 - 정상적인 흐름
			user.setAge( -5 );
			
		} catch (UserAgeException e) {
			e.printStackTrace();
		}
		
	}
}
