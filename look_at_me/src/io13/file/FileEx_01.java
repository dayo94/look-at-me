package io13.file;

import java.io.File;

public class FileEx_01 {
	public static void main(String[] args) {
		
		
		File file = new File("C:/Users/user1/Documents/test.txt"); //존재하는 파일
		
		System.out.println("File Info : " + file); //경로+파일명
		
		System.out.println("length : " + file.length()); //파일의 크기
		System.out.println("exists : " + file.exists()); //파일의 존재유무
		


		
	}//main

}//class
