package twoEntity;

public class MessageBoard {
	private int boID;
	private String cdName;
	private String time;
	private String content;
	
	public MessageBoard(String cdName, String time, String content) {
		super();
		this.cdName = cdName;
		this.time = time;
		this.content = content;
	}
	public MessageBoard(int boID, String cdName, String time, String content) {
		super();
		this.boID = boID;
		this.cdName = cdName;
		this.time = time;
		this.content = content;
	}
	public int getBoID() {
		return boID;
	}
	public void setBoID(int boID) {
		this.boID = boID;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
