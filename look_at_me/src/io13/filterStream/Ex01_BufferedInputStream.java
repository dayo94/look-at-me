package io13.filterStream;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Ex01_BufferedInputStream {
	public static void main(String[] args) {
		
		
		File file = new File("./src/io13/fileStream", "Source");
		System.out.println("[TEST] exists : " + file.exists());
		
		BufferedInputStream bis = null; 
		
		byte[] buf = new byte[1024]; 
		int len = -1;
		
		
		try {
			
			bis = new BufferedInputStream( new FileInputStream( file ) );
			
			while( (len = bis.read(buf)) != -1 ) {
				System.out.print( new String(buf, 0, len) );
			}
			
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


