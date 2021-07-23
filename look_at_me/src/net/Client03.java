package net;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class Client03 {
	public static void main(String[] args) {
		
		Socket sock = null; //클라이언트 소켓(연결, 통신 모두 사용)
		
		PrintWriter out = null; //소켓 출력 스트림
		
		try {
			System.out.println("+ + + 클라이언트 실행 + + +");
			
//			sock = new Socket("서버IP 또는 서버도메인", 서버포트번호); -> 서버에 접속
//			sock = new Socket("localhost", 10001);
			sock = new Socket("192.168.10.3", 10001);

			
			
			//----- 데이터 통신 -----
//			sock.getInputStream(); //통신용 입력 스트림 (InputStream)
//			sock.getOutputStream(); //통신용 출력 스트림 (OutputStream)

			out = new PrintWriter( new BufferedOutputStream( sock.getOutputStream() ), true );
			
//			out.println("Hello");

			Scanner sc = new Scanner(System.in);
		
			System.out.print("\n >>전송할 데이터 입력 : ");
			out.println( sc.nextLine() );
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(out!=null)	out.close(); //스트림 닫기
				if(sock!=null)	sock.close(); //소켓 닫기
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}

