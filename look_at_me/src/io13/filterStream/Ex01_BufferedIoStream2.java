package io13.filterStream;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class Ex01_BufferedIoStream2 {
	public static void main(String[] args) {
		
		
		File file1 = new File("./src/io13/fileStream", "Source");
		File file2 = new File("./src/io13/filterStream", "src2");
	
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		
		byte[] buf = new byte[1024];
		
		int len = -1;
		
		try {
			
			bis = new BufferedInputStream(new FileInputStream(file1));
			bos = new BufferedOutputStream(new FileOutputStream(file2));
			
			
			while ((len = bis.read(buf)) != -1) {
				bos.write(buf,0,len);
				bos.flush();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
				try {
					if(bis!=null) bis.close();
					if(bos!=null) bos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			
		}
				
				
				
		
		
		
		
		
	}//main
}//class


