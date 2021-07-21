package io13.fileStream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileCopy {
	public static void main(String[] args) {

		File src = new File("./src/io13/fileStream", "Source");

		File dest = new File("./src/io13/fileStream", "Destination");

		FileInputStream fis = null;
		FileOutputStream fos = null;


		byte[] buf = new byte[1024]; 
		int len = -1; 
		int total = 0; 


		try {

			fis = new FileInputStream(src); 
			fos = new FileOutputStream(dest); 


			while( (len = fis.read(buf)) != -1 ) {
				fos.write(buf, 0, len);
				fos.flush();

				System.out.print( new String(buf, 0, len) );

				total += len; 
			}

		} catch (FileNotFoundException e) {
			System.out.println("[ERROR] ���� �Է�/��� ��Ʈ���� ������ �� �����ϴ�");

		} catch (IOException e) {
			System.out.println("[ERROR] ���� �б�/���� ����");

		} finally {
			try {

				if(fis!=null)	fis.close();
				if(fos!=null)	fos.close();
			} catch (IOException e) {
				System.out.println("[ERROR] �Է�/��� ��Ʈ�� �ݱ⿡ �����߽��ϴ�");

			}
		}

		System.out.println();
		System.out.println(">> " + total + "����Ʈ ���� �Ϸ�");

		System.out.println();
		System.out.println(" + + + ���α׷� ���� ���� + + +");

	}
}

