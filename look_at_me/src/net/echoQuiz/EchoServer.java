package net.echoQuiz;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class EchoServer {
	public static void main(String[] args) {
		
		ServerSocket serverSock = null; //���� ���� ����
		Socket sock = null; //���� ��� ����
		
		BufferedReader in = null; //���� �Է� ��Ʈ��
		PrintWriter out = null; //���� ��� ��Ʈ��
		
		try {
			serverSock = new ServerSocket(10005);
			System.out.println("+ + + ���� ���� ���� + + +");
			
			while( true ) {
				try {
					System.out.println("\n --- ���� ����� ---");
					System.out.println(" Listen Port : " + serverSock.getLocalPort());
					System.out.println(" -------------------");
					sock = serverSock.accept(); //Listen
					
					//----- BLOCKED -----
					
					System.out.println("\n Ŭ���̾�Ʈ ����!!!");
					
					//Remote ���� Ȯ��
					InetAddress ip = sock.getInetAddress();
					System.out.println("\t>> Ŭ���̾�Ʈ IP : " + ip.getHostAddress()); //IP
					System.out.println("\t>> Ŭ���̾�Ʈ Port : " + sock.getPort()); //Port
					
					
					//--- ������ ��� �غ� ---
					//���� �Է½�Ʈ�� ����(����)
					in = new BufferedReader(new InputStreamReader(sock.getInputStream()));
					
					//���� ��½�Ʈ�� ����(����) - AutoFlush
					out = new PrintWriter(new BufferedOutputStream(sock.getOutputStream()), true);
					
					
		
					//--- ������ ��� ----
					String msg = null;
					
					while( (msg = in.readLine()) != null ) {
						System.out.println(" �Է¹��� �޽���>> " + msg);
						out.println(msg); //Echo(����) ���
					}
					
					System.out.println("\n + + + Ŭ���̾�Ʈ ���� ���� ���� + + +");
					
				} catch(IOException e) {
					e.printStackTrace();
				} finally {
					try {
						//��Ʈ�� �ݱ�
						if(in!=null)	in.close();
						if(out!=null)	out.close();
						
						//Ŭ���̾�Ʈ ��� ���� �ݱ�
						if(sock!=null)	sock.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				
			} // while(true) end - Ŭ���̾�Ʈ ���� �� ���
			
		} catch (IOException e) {
			
			//����(Ŭ���̾�Ʈ)�ʿ��� .close()�� ����� �������Ḧ �����ʾ� �߻���
			//	-> Connection Reset
			System.out.println("[ERROR] Ŭ���̾�Ʈ�� ������ ������������ ����");
			
//			e.printStackTrace();
		} finally {
			try {
				//���� ���� ���� �ݱ�
				if(serverSock!=null)	serverSock.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}

