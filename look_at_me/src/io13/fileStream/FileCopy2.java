package io13.fileStream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileCopy2 {
	public static void main(String[] args) {

		//Source.txt ������ ������ �о�鿩 Destination.txt ���Ϸ� �����Ѵ�(�����Ѵ�)
		//	-> 49,520,690  bytes

		//	Source.txt ---Copy---> Destination.txt

		//-------------------------------------------------------------------------------

		File file1 = new File("./src/io13/fileStream","Source");
		
		File file2 = new File("./src/io13/fileStream","Destination1");
		
		byte[] buf = new byte[1024];
		
		int len = -1;
		
		int total = 0;
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		
		
		try {
			fis = new FileInputStream(file1);
			fos = new FileOutputStream(file2);
			
			
			while ((len = fis.read(buf)) != -1) {
				fos.write(buf, 0, len);
				fos.flush();
				
				total += len;
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(fis!=null)	fis.close();
				if(fos!=null)	fos.close();
			} catch (Exception e) {
				System.out.println("����");
			}
			
		}
		
		System.out.println(total);
		
		
		
	}//main
}//class

