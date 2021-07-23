package net;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class Server02 {
	public static void main(String[] args) {
		
		ServerSocket servSock = null; //���� ���� ����
		Socket sock = null; //���� ��� ����
		
		
		BufferedReader in = null; //���� �Է� ��Ʈ��
		
		
		try {
			servSock = new ServerSocket(10001);
			System.out.println("+ + + ���� ���� ���� ���� + + +");
			
			System.out.println();
			System.out.println(" --- Listening ---");
			sock = servSock.accept(); //���� ����, Ŭ���̾�Ʈ�� ��ٸ�
			
			
			//----- BLOCKED ���°� �ȴ� -----	
			//	-> ���� �ڵ�� ��������ʰ� �����ִ� ����
			
			
			System.out.println();
			System.out.println(" --- Ŭ���̾�Ʈ ���� �Ϸ� ---");
			
			InetAddress ip = sock.getInetAddress(); //Ŭ���̾�Ʈ�� IP���� ���
			System.out.println("  >>Ŭ���̾�Ʈ IP : " + ip.getHostAddress());
			System.out.println("  >>Ŭ���̾�Ʈ Port : " + sock.getPort());
			
			
			//----- ������ ��� -----
//			sock.getInputStream(); //��ſ� �Է� ��Ʈ�� (InputStream)
//			sock.getOutputStream(); //��ſ� ��� ��Ʈ�� (OutputStream)

			in = new BufferedReader( new InputStreamReader( sock.getInputStream() ) );

			String msg = in.readLine();
			System.out.println("\n>>���۹��� ������ : " + msg);
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(in!=null)	in.close(); //��Ʈ�� �ݱ�
				if(sock!=null)	sock.close(); //��� ���� �ݱ�
				if(servSock!=null)	servSock.close(); //���� ���� �ݱ�
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}



