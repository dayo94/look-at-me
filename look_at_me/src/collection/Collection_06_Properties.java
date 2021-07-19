package collection;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;

public class Collection_06_Properties {
	public static void main(String[] args) {
		
		//Properties 객체
		Properties prop = new Properties();
		
		//파일 입력 객체 - 파일의 내용을 불러온다
		FileReader reader = null;
		
		//파일 출력 객체 - 파일로 저장한다
		FileWriter writer = null;
		
		try {
//			reader = new FileReader("D:/workspace/JavaBasic/src/java10_collection/user.properties");
			reader = new FileReader("./src/java10_collection/user.properties");
			
			// ./ 경로
			//	-> 프로그램에 실행된 위치(폴더)
			//	-> 프로젝트의 폴더
			
			
			//파일로부터 내용을 불러온다
			prop.load(reader);
			
			
			//속성값 가져오기
			System.out.println("prop : " + prop);
			
			String user = prop.getProperty("username");
			System.out.println("USER : " + user);
			
			
			//속성값을 바꿔서 저장하기
			prop.setProperty("username", "Bob");
			System.out.println("prop : " + prop);
			
			writer = new FileWriter("./src/java10_collection/user.properties");
			
			//Properties객체의 내용을 파일로 출력한다(저장한다)
			prop.store(writer, "comment: write user comments");

			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("------------------------------------");
		
		
		//자바에서 제공하는 기본 Properties
		
		Properties sysProp = System.getProperties(); //시스템 설정항목
		
		System.out.println("\n--- 자바 버전 ---");
		System.out.println( sysProp.getProperty("java.version") );
		
		System.out.println("\n--- OS 이름 ---");
		System.out.println( sysProp.getProperty("os.name") );
		
		System.out.println("\n----------");
		System.out.println( sysProp );
		
	}
}


