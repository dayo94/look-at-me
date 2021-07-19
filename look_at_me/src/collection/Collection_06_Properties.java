package collection;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;

public class Collection_06_Properties {
	public static void main(String[] args) {
		
		//Properties ��ü
		Properties prop = new Properties();
		
		//���� �Է� ��ü - ������ ������ �ҷ��´�
		FileReader reader = null;
		
		//���� ��� ��ü - ���Ϸ� �����Ѵ�
		FileWriter writer = null;
		
		try {
//			reader = new FileReader("D:/workspace/JavaBasic/src/java10_collection/user.properties");
			reader = new FileReader("./src/java10_collection/user.properties");
			
			// ./ ���
			//	-> ���α׷��� ����� ��ġ(����)
			//	-> ������Ʈ�� ����
			
			
			//���Ϸκ��� ������ �ҷ��´�
			prop.load(reader);
			
			
			//�Ӽ��� ��������
			System.out.println("prop : " + prop);
			
			String user = prop.getProperty("username");
			System.out.println("USER : " + user);
			
			
			//�Ӽ����� �ٲ㼭 �����ϱ�
			prop.setProperty("username", "Bob");
			System.out.println("prop : " + prop);
			
			writer = new FileWriter("./src/java10_collection/user.properties");
			
			//Properties��ü�� ������ ���Ϸ� ����Ѵ�(�����Ѵ�)
			prop.store(writer, "comment: write user comments");

			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("------------------------------------");
		
		
		//�ڹٿ��� �����ϴ� �⺻ Properties
		
		Properties sysProp = System.getProperties(); //�ý��� �����׸�
		
		System.out.println("\n--- �ڹ� ���� ---");
		System.out.println( sysProp.getProperty("java.version") );
		
		System.out.println("\n--- OS �̸� ---");
		System.out.println( sysProp.getProperty("os.name") );
		
		System.out.println("\n----------");
		System.out.println( sysProp );
		
	}
}


