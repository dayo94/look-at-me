package io13.file;

import java.io.File;

public class FileEx_01 {
	public static void main(String[] args) {
		
		
		File file = new File("C:/Users/user1/Documents/test.txt"); //�����ϴ� ����
		
		System.out.println("File Info : " + file); //���+���ϸ�
		
		System.out.println("length : " + file.length()); //������ ũ��
		System.out.println("exists : " + file.exists()); //������ ��������
		


		
	}//main

}//class
