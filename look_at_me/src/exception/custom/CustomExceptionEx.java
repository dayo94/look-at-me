package exception.custom;

public class CustomExceptionEx {
	public static void main(String[] args) {
		
		User user = new User();
		
		try {
//			user.setAge(22); //���� �߻����� ���� - �������� �帧
			user.setAge( -5 );
			
		} catch (UserAgeException e) {
			e.printStackTrace();
		}
		
	}
}
