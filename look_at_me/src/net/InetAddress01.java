package net;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class InetAddress01 {
	public static void main(String[] args) {

		InetAddress ip = null;

		try {
			//ȣ��Ʈ�κ��� IP�ּ� ���� ���
			ip = InetAddress.getByName("www.iei.or.kr");

		} catch (UnknownHostException e) {
			e.printStackTrace();
		}

		System.out.println( ip );

		//ȣ��Ʈ �̸�
		System.out.println( ip.getHostName() );

		//ȣ��Ʈ IP
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