package net.echoQuiz;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class EchoClient {
	public static void main(String[] args) {
		
		Socket sock = null; //Ŭ���̾�Ʈ ���� ��ü
		
		BufferedReader in = null; //���� �Է� ��Ʈ��
		PrintWriter out = null; //���� ��� ��Ʈ��

		Scanner sc = new Scanner(System.in); //Ű���� �Է� ��Ʈ��
		
		try {
			System.out.println("+ + + Ŭ���̾�Ʈ ���� + + +");
			sock = new Socket("192.168.10.3", 10005); //���� �� ��� �غ�
			
			
			//--- ������ ��� �غ� ---
			//���� �Է½�Ʈ�� ����(����)
			in = new BufferedReader(new InputStreamReader(sock.getInputStream()));
			
			//���� ��½�Ʈ�� ����(����) - AutoFlush
			out = new PrintWriter(new BufferedOutputStream(sock.getOutputStream()), true);

			
			//--- ������ ��� ---
			String msg = null; //���� ������
			
			while(true) {
				System.out.print("\t���� ������ : ");
				msg = sc.nextLine();
				
				//��� �ߴ� ��ɾ�
				if("/EXIT".equals(msg)) {
					break;
				}
				
				//������ ����
				out.println(msg);
				
				//Echo(����) ���� ������ ���
				System.out.println(">>���� �޽��� : " + in.readLine());
			}
			
			System.out.println("+ + + ��� ���� + + +");
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				//���� ��Ʈ�� �ݱ�
				if(in!=null) 	in.close();
				if(out!=null)	out.close();
				
				//���� �ݱ�
				if(sock!=null)	sock.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}




