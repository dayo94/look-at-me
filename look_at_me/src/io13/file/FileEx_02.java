package io13.file;

import java.io.File;

public class FileEx_02 {
	public static void main(String[] args) {


	
		File file1 = new File("C:\\Users\\82107\\Desktop\\coding\\lookAtMe\\look_at_me\\src\\io13\\file", "Hello");

		System.out.println( file1.length() );
		System.out.println( file1.exists() );

		

		
		File file2 = new File("./src/io13/file", "Hello");

		System.out.println( file1.length() );
		System.out.println( file1.exists() );

	}//main

}//class
