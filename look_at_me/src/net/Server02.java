package net;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class Server02 {
	public static void main(String[] args) {
		
		ServerSocket servSock = null; //서버 리슨 소켓
		Socket sock = null; //서버 통신 소켓
		
		
		BufferedReader in = null; //소켓 입력 스트림
		
		
		try {
			servSock = new ServerSocket(10001);
			System.out.println("+ + + 서버 리슨 소켓 생성 + + +");
			
			System.out.println();
			System.out.println(" --- Listening ---");
			sock = servSock.accept(); //리슨 시작, 클라이언트를 기다림
			
			
			//----- BLOCKED 상태가 된다 -----	
			//	-> 다음 코드로 진행되지않고 멈춰있는 상태
			
			
			System.out.println();
			System.out.println(" --- 클라이언트 접속 완료 ---");
			
			InetAddress ip = sock.getInetAddress(); //클라이언트의 IP정보 얻기
			System.out.println("  >>클라이언트 IP : " + ip.getHostAddress());
			System.out.println("  >>클라이언트 Port : " + sock.getPort());
			
			
			//----- 데이터 통신 -----
//			sock.getInputStream(); //통신용 입력 스트림 (InputStream)
//			sock.getOutputStream(); //통신용 출력 스트림 (OutputStream)

			in = new BufferedReader( new InputStreamReader( sock.getInputStream() ) );

			String msg = in.readLine();
			System.out.println("\n>>전송받은 데이터 : " + msg);
			
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(in!=null)	in.close(); //스트림 닫기
				if(sock!=null)	sock.close(); //통신 소켓 닫기
				if(servSock!=null)	servSock.close(); //리슨 소켓 닫기
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}



