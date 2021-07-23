package net;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class Client03 {
	public static void main(String[] args) {
		
		Socket sock = null; //Ŭ���̾�Ʈ ����(����, ��� ��� ���)
		
		PrintWriter out = null; //���� ��� ��Ʈ��
		
		try {
			System.out.println("+ + + Ŭ���̾�Ʈ ���� + + +");
			
//			sock = new Socket("����IP �Ǵ� ����������", ������Ʈ��ȣ); -> ������ ����
//			sock = new Socket("localhost", 10001);
			sock = new Socket("192.168.10.3", 10001);

			
			
			//----- ������ ��� -----
//			sock.getInputStream(); //��ſ� �Է� ��Ʈ�� (InputStream)
//			sock.getOutputStream(); //��ſ� ��� ��Ʈ�� (OutputStream)

			out = new PrintWriter( new BufferedOutputStream( sock.getOutputStream() ), true );
			
//			out.println("Hello");

			Scanner sc = new Scanner(System.in);
		
			System.out.print("\n >>������ ������ �Է� : ");
			out.println( sc.nextLine() );
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out!=null)	out.close(); //��Ʈ�� �ݱ�
				if(sock!=null)	sock.close(); //���� �ݱ�
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}

