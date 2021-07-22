package io13.filterStream;

import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class Ex04_1_DataOutputStream {
	public static void main(String[] args) {
		
		File file = new File("./src/io13/filterStream", "DataTest");
		
		
		DataOutputStream dos = null;
		
		try {
			dos = new DataOutputStream( new BufferedOutputStream( new FileOutputStream(file) ) );
			
			
			dos.writeBoolean(true); 
			dos.writeChar('°¡'); 
			dos.writeInt(123); 
			
			
			dos.flush();			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(dos!=null)	dos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}			
		}
		
	}
}



