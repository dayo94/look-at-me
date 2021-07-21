package io13;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IOStream_tryWithResources {
	public static void main(String[] args) {
		

		
		byte[] buf = new byte[1024]; 
		int len = -1;
		
		
		try ( InputStream is = System.in;
				OutputStream os = System.out ) {

			
			while( (len = is.read(buf)) != -1 ) {
				
				
				os.write(buf, 0, len);
				os.flush(); 
				
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
	}
}


