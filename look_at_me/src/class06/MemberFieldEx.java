package class06;

public class MemberFieldEx {

	public static void main(String[] args) {

		
		MemberField_01 mf01 = new MemberField_01();
		MemberField_01 mf02 = new MemberField_01();
		MemberField_01 mf03 = null;
		
		System.out.println(mf01.getNum());
		
		
		mf02.setNum(777);
		System.out.println(mf02.getNum());
		
		
		//----------------------------------------------------
		
//		System.out.println(mf03.getNum());
		
		//NullpointerException
		// ->null�������� �̿��� ����� �����Ϸ��� �ϸ� �߻�
		
		//-> �� �� ���� ���̴� ����!!
		
		System.out.println();
		System.out.println("---Ŭ�������� �׽�Ʈ---");
		
		MemberField_02 mf04 = new MemberField_02();
		MemberField_02 mf05 = new MemberField_02();
		
		System.out.println(mf04.city);
		System.out.println(mf05.city);
		
		mf04.city = "busan";
		
		System.out.println("---busan ���� ��---");
		
		System.out.println(mf04.city);
		System.out.println(mf05.city);
		System.out.println("---Ŭ���������� ����---");
		//Ŭ���� ������ ��ü�� �ƴ� Ŭ�������� ���� ����
		System.out.println(MemberField_02.city);
		
		MemberField_02.city = "incheon";
		
		
		System.out.println(MemberField_02.city);
		
		
		System.out.println();
		System.out.println("---�������� �׽�Ʈ---");
		
		MemberField_03 mf06 = new MemberField_03();
		
		mf06.method(111); //�޼ҵ� ȣ��
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class
