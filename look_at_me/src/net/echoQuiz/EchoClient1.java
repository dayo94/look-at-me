package net.echoQuiz;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class EchoClient1 {

	public static void main(String[] args) {

		
		Socket sk = null;

		PrintWriter pw = null;
		BufferedReader br = null;
		
		
		try {
			System.out.println("+ + +Ŭ���̾�Ʈ ����+ + +");

			sk = new Socket("127.0.0.1", 11226);

			
			pw = new PrintWriter(new BufferedOutputStream(sk.getOutputStream()), true);

			
			Scanner sc = new Scanner(System.in);
			
			System.out.println(">>������ ������ �Է� : ");

			pw.println(sc.nextLine());
			pw.flush();
			
			br = new BufferedReader( new InputStreamReader(sk.getInputStream()));
			String str = br.readLine();
			System.out.println("\n>>���۹��� ������ : " + str);
			
			

		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				
				if(pw!=null) pw.close();
				if(br!=null) br.close();
				if(sk!=null) sk.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		
		
		
	}

}
