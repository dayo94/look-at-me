package dto;

public class UploadFile {

	
	private int fileno;
	private String orginName;
	private String storedName;
	
	
	@Override
	public String toString() {
		return "UploadFile [fileno=" + fileno + ", orginName=" + orginName + ", storedName=" + storedName + "]";
	}


	
	
	public int getFileno() {
		return fileno;
	}


	public void setFileno(int fileno) {
		this.fileno = fileno;
	}


	public String getOrginName() {
		return orginName;
	}


	public void setOrginName(String orginName) {
		this.orginName = orginName;
	}


	public String getStoredName() {
		return storedName;
	}


	public void setStoredName(String storedName) {
		this.storedName = storedName;
	}
	
	
	
	
	
}
