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
			System.out.println("클라이언트 접속완료");
			
			
			br = new BufferedReader( new InputStreamReader(sk.getInputStream()));
			String str = br.readLine();
			System.out.println("\n>>전송받은 데이터 : " + str);
			pw = new PrintWriter(new BufferedOutputStream(sk.getOutputStream()), true);
			pw.println(str);
			pw.flush();
			
			
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(br!=null) br.close();//스트림닫기
				if(pw!=null) pw.close();//스트림닫기
				if(ss!=null) ss.close(); //리슨소켓닫기
				if(sk!=null) sk.close(); //통신소켓닫기
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		
	}

}
