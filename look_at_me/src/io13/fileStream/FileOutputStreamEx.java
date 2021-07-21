package io13.fileStream;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileOutputStreamEx {
	public static void main(String[] args) {


		File file = new File("./src/java13_io/fileStream", "output");
		System.out.println("[TEST] exists : " + file.exists());



		FileOutputStream fos = null;

		try {

			fos = new FileOutputStream(file); 

			String str = "Cherry";
			fos.write(str.getBytes(), 0, str.length());
			fos.flush();

		} catch (FileNotFoundException e) {

			System.out.println("[ERROR] 파일을 찾을 수 없습니다");

		} catch (IOException e) {

			System.out.println("[ERROR] 파일로 데이터를 출력할 수 없습니다");

		} finally {

			try {

				if(fos!=null)	fos.close(); 

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}
}



