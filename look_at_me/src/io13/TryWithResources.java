package io13;

import java.io.IOException;
import java.io.OutputStream;

public class TryWithResources {
	public static void main(String[] args) {
		
		byte[] buf = "AppleBanana".getBytes(); 
		
		try (OutputStream os = System.out) {
			
			os.write(buf, 0, buf.length); 
			os.flush(); 
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}


