package twoEntity;

public class Custome {
	private int cusId;//�ͻ�id
	private String cusLoginName;//�ͻ��˺�
	private String cusPwd;//�ͻ�����
	private String cusPhone;//�ͻ��绰
	private String cusName;//�ͻ�����
	private String cusAddress;//�ͻ���ַ
	private String p1;//Ԥ���ֶ�
	private String p2;//Ԥ���ֶ�
	
	public Custome() {
		super();
	}

	public Custome(String cusLoginName, String cusPwd, String cusPhone, String cusName, String cusAddress, String p1,
			String p2) {
		super();
		this.cusLoginName = cusLoginName;
		this.cusPwd = cusPwd;
		this.cusPhone = cusPhone;
		this.cusName = cusName;
		this.cusAddress = cusAddress;
		this.p1 = p1;
		this.p2 = p2;
	}

	public Custome(int cusId, String cusLoginName, String cusPwd, String cusPhone, String cusName, String cusAddress,
			String p1, String p2) {
		super();
		this.cusId = cusId;
		this.cusLoginName = cusLoginName;
		this.cusPwd = cusPwd;
		this.cusPhone = cusPhone;
		this.cusName = cusName;
		this.cusAddress = cusAddress;
		this.p1 = p1;
		this.p2 = p2;
	}
	
	public int getCusId() {
		return cusId;
	}
	public void setCusId(int cusId) {
		this.cusId = cusId;
	}
	public String getCusLoginName() {
		return cusLoginName;
	}
	public void setCusLoginName(String cusLoginName) {
		this.cusLoginName = cusLoginName;
	}
	public String getCusPwd() {
		return cusPwd;
	}
	public void setCusPwd(String cusPwd) {
		this.cusPwd = cusPwd;
	}
	public String getCusPhone() {
		return cusPhone;
	}
	public void setCusPhone(String cusPhone) {
		this.cusPhone = cusPhone;
	}
	public String getCusName() {
		return cusName;
	}
	public void setCusName(String cusName) {
		this.cusName = cusName;
	}
	public String getCusAddress() {
		return cusAddress;
	}
	public void setCusAddress(String cusAddress) {
		this.cusAddress = cusAddress;
	}
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	
}
