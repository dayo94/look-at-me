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
		
		ServerSocket serverSock = null; //서버 리슨 소켓
		Socket sock = null; //서버 통신 소켓
		
		BufferedReader in = null; //소켓 입력 스트림
		PrintWriter out = null; //소켓 출력 스트림
		
		try {
			serverSock = new ServerSocket(10005);
			System.out.println("+ + + 서버 소켓 생성 + + +");
			
			while( true ) {
				try {
					System.out.println("\n --- 접속 대기중 ---");
					System.out.println(" Listen Port : " + serverSock.getLocalPort());
					System.out.println(" -------------------");
					sock = serverSock.accept(); //Listen
					
					//----- BLOCKED -----
					
					System.out.println("\n 클라이언트 접속!!!");
					
					//Remote 정보 확인
					InetAddress ip = sock.getInetAddress();
					System.out.println("\t>> 클라이언트 IP : " + ip.getHostAddress()); //IP
					System.out.println("\t>> 클라이언트 Port : " + sock.getPort()); //Port
					
					
					//--- 데이터 통신 준비 ---
					//소켓 입력스트림 개설(생성)
					in = new BufferedReader(new InputStreamReader(sock.getInputStream()));
					
					//소켓 출력스트림 개설(생성) - AutoFlush
					out = new PrintWriter(new BufferedOutputStream(sock.getOutputStream()), true);
					
					
		
					//--- 데이터 통신 ----
					String msg = null;
					
					while( (msg = in.readLine()) != null ) {
						System.out.println(" 입력받은 메시지>> " + msg);
						out.println(msg); //Echo(에코) 출력
					}
					
					System.out.println("\n + + + 클라이언트 연결 정상 종료 + + +");
					
				} catch(IOException e) {
					e.printStackTrace();
				} finally {
					try {
						//스트림 닫기
						if(in!=null)	in.close();
						if(out!=null)	out.close();
						
						//클라이언트 통신 소켓 닫기
						if(sock!=null)	sock.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				
			} // while(true) end - 클라이언트 접속 및 통신
			
		} catch (IOException e) {
			
			//상대방(클라이언트)쪽에서 .close()로 제대로 소켓종료를 하지않아 발생함
			//	-> Connection Reset
			System.out.println("[ERROR] 클라이언트의 연결이 비정상적으로 끊김");
			
//			e.printStackTrace();
		} finally {
			try {
				//서버 리슨 소켓 닫기
				if(serverSock!=null)	serverSock.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}

