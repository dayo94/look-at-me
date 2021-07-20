package io13;

import java.io.IOException;
import java.io.InputStream;
import java.util.Scanner;

public class InputStreamEx {
	public static void main(String[] args) {
		
		InputStream is = System.in; //Ű���� ǥ�� �Է� ��Ʈ�� ��ü
		
		
//		byte[] buf = new byte[8]; //�Է� ������ ����� ( read()�޼ҵ��� �Ű������� ��� )
		byte[] buf = new byte[1024]; //�Է� ������ ����� ( read()�޼ҵ��� �Ű������� ��� )
		
		int len = -1; //�Է¹��� �������� ���� ( read()�޼ҵ��� ��ȯ�����ͷ� ��� )
	
		//** len�� �⺻���� -1�� �� ����
		//	-> read()�޼ҵ��� ��ȯ������ -1 �� EOF�� ��Ÿ���� Ư���� ������ ���δ�
		//	-> ���α׷� ���� ���� ���ʰ����� Ư���� ������ ���̴� �����͸� ������ ��
		
		
		//�Է� �����͸� ��ü ������ ���ڿ� ��ü
		StringBuilder sb = new StringBuilder();
		
		//�Է� �������� ��ü ���̸� ������ ����
		int total = 0;
		
		System.out.println("<< �Է� ����� >>");
		try {
			
			//�Է� ��Ʈ������ �Է¹��� �����Ͱ� �����Ѵٸ� ��� �ݺ��Ѵ�
			while( ( len = is.read(buf) ) != -1 ) { //EOF(End Of Stream)�� ���� ������ �ݺ�
				
//				System.out.println("�Է��� �������� ���� : " + len);
				
				total += len; //�Էµ� �������� ���� ����
				
				//�Է��� �����͸� ����Ϳ� ����Ѵ�
//				System.out.println( new String( buf, 0, len ) );
				
				//�Է��� �����͸� StringBuilder��ü�� �߰��Ѵ�(�����Ѵ�)
				sb.append( new String( buf, 0, len ) );
				
				//EOF�� Ű����� ���� �Է��ؾ� ����ȴ�
				//	-> ctrl + z
				//	-> ���� ctrl + d
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			
			try {
				is.close(); //��Ʈ�� �ݱ� (��Ʈ���� ����� �ڿ��� ����,�ݳ��Ѵ�)
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
		System.out.println("<< �Է��� �������� ���� : " + total + " >>");
		System.out.println("<< �Էµ� ������ >>");
		System.out.println(sb);
		
	}
}

