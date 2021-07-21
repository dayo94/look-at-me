package io13.filterStream;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Ex02_Performance {
	public static void main(String[] args) {
		
		long start = System.currentTimeMillis();
		
		long end = System.currentTimeMillis(); 
		
		System.out.println( end-start );
		System.out.println( (end-start)/(double)1000 ); 
		
		System.out.println("-----------------------------------");
		
		File file = new File("./src/io13/fileStream", "Source");

		FileInputStream fis = null; 
		BufferedInputStream bis = null;

		
		byte[] buf = new byte[1024];
		int len = -1;

		try {
			fis = new FileInputStream( file );
			
			start = System.currentTimeMillis(); 
			
			while( (len = fis.read(buf)) != -1 ) {
				
			}
			
			end = System.currentTimeMillis();
			
			System.out.println( end-start );
			System.out.println( (end-start)/(double)1000 ); 

			System.out.println("---------------------------------");
			
			
			bis = new BufferedInputStream( new FileInputStream( file ) );
			
			start = System.currentTimeMillis(); 
			
			while( (len = bis.read(buf)) != -1 ) {
				
			}
			
			end = System.currentTimeMillis();
			
			System.out.println( end-start );
			System.out.println( (end-start)/(double)1000 ); 
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			
			try {
				if(bis!=null)	bis.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
	}
}
