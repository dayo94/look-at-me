package io13.fileStream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileInputStreamEx {
	public static void main(String[] args) {

		File file = new File("./src/io13/fileStream", "input");
		System.out.println("[TEST] exists : " + file.exists());



		byte[] buf = new byte[1024]; 
		int len = -1;

		StringBuilder sb = new StringBuilder(); 


		FileInputStream fis = null;

		try {
			fis = new FileInputStream(file);


			while( (len = fis.read(buf)) != -1 ) {
				sb.append( new String(buf, 0, len) );
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(fis!=null)	fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		System.out.println("<< 입력된 데이터 >>");
		System.out.println( sb );

	}
}


