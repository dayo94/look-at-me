package net;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class InetAddress01 {
	public static void main(String[] args) {

		InetAddress ip = null;

		try {
			//호스트로부터 IP주소 정보 얻기
			ip = InetAddress.getByName("www.iei.or.kr");

		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

		System.out.println( ip );

		//호스트 이름
		System.out.println( ip.getHostName() );

		//호스트 IP
		System.out.println( ip.getHostAddress() );

		System.out.println("------------------------------");



		try {
			InetAddress localhost = InetAddress.getLocalHost();

			System.out.println(localhost);


		} catch (UnknownHostException e) {
			e.printStackTrace();
		}


	}
}