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
		
		Socket sock = null; //클라이언트 소켓 객체
		
		BufferedReader in = null; //소켓 입력 스트림
		PrintWriter out = null; //소켓 출력 스트림

		Scanner sc = new Scanner(System.in); //키보드 입력 스트림
		
		try {
			System.out.println("+ + + 클라이언트 실행 + + +");
			sock = new Socket("192.168.10.3", 10005); //연결 및 통신 준비
			
			
			//--- 데이터 통신 준비 ---
			//소켓 입력스트림 개설(생성)
			in = new BufferedReader(new InputStreamReader(sock.getInputStream()));
			
			//소켓 출력스트림 개설(생성) - AutoFlush
			out = new PrintWriter(new BufferedOutputStream(sock.getOutputStream()), true);

			
			//--- 데이터 통신 ---
			String msg = null; //전달 데이터
			
			while(true) {
				System.out.print("\t보낼 데이터 : ");
				msg = sc.nextLine();
				
				//통신 중단 명령어
				if("/EXIT".equals(msg)) {
					break;
				}
				
				//서버로 전송
				out.println(msg);
				
				//Echo(에코) 받은 데이터 출력
				System.out.println(">>받은 메시지 : " + in.readLine());
			}
			
			System.out.println("+ + + 통신 종료 + + +");
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				//소켓 스트림 닫기
				if(in!=null) 	in.close();
				if(out!=null)	out.close();
				
				//소켓 닫기
				if(sock!=null)	sock.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
}




