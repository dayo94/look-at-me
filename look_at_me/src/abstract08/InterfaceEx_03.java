package abstract08;


interface InterA {
	public abstract void getA();
}

interface InterB {
	public abstract void getB();
}

interface InterC extends InterA, InterB { //�������̽����� ����� �� extends �̿�
	public abstract void getC();
}


class Children implements InterC {
//class Children implements InterA, InterB, InterC {
	@Override
	public void getC() {
	}
	@Override
	public void getB() {
	}
	@Override
	public void getA() {
	}
}


