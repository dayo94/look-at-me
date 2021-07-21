package io13.file;

import java.io.File;

public class FileEx_02 {
	public static void main(String[] args) {


	
		File file1 = new File("D:/workspace/JavaBasic/src/java13_io/file", "Hello");

		System.out.println( file1.length() );
		System.out.println( file1.exists() );

		

		
		File file2 = new File("./src/java13_io/file", "Hello");

		System.out.println( file1.length() );
		System.out.println( file1.exists() );

	}//main

}//class
