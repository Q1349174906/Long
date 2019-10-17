package entity;

public class Customer {
	private int id;
	private String name;
	private String pass;
	private String sex;
	private String email;
	private String phone;
	private String address;
	private String question;
	private String answer;
	
	
	public Customer(String name) {
		super();
		this.name = name;
	}
	public Customer(String name, String pass, String sex, String email, String phone, String address, String question,
			String answer) {
		super();
		this.name = name;
		this.pass = pass;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.question = question;
		this.answer = answer;
	}
	public Customer(int id, String name, String pass, String sex, String email, String phone, String address,
			String question, String answer) {
		super();
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.question = question;
		this.answer = answer;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
