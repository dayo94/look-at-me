package net.echoQuiz;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class EchoServer1 {

	public static void main(String[] args) {

		
		
		ServerSocket ss = null;
		Socket sk = null;
		BufferedReader br = null;
		PrintWriter pw = null; //
		
		try {
			ss = new ServerSocket(11226);
			System.out.println("Listening");
			sk = ss.accept();
			
			System.out.println();
			System.out.println("Ŭ���̾�Ʈ ���ӿϷ�");
			
			
			br = new BufferedReader( new InputStreamReader(sk.getInputStream()));
			String str = br.readLine();
			System.out.println("\n>>���۹��� ������ : " + str);
			pw = new PrintWriter(new BufferedOutputStream(sk.getOutputStream()), true);
			pw.println(str);
			pw.flush();
			
			
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(br!=null) br.close();//��Ʈ���ݱ�
				if(pw!=null) pw.close();//��Ʈ���ݱ�
				if(ss!=null) ss.close(); //�������ϴݱ�
				if(sk!=null) sk.close(); //��ż��ϴݱ�
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
	}

}
