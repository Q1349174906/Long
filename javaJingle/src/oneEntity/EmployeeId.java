package oneEntity;
/**
 * ��̨Ա��ʵ����
 *2019��8��14��
 *����11:44:28
 */
public class EmployeeId {
	private int employeeId;//Ա��id
	private String employeeUserName;//Ա������
	private String employeePwd;//Ա������
	private double employeeSalary;//Ա��нˮ
	private String employeeIdNum;//Ա�����֤
	private String employeeAdd;//Ա����ַ
	private String employeePhone;//Ա���绰
	private int roleId;//Ա����Ӧ�Ľ�ɫ
	private String employeeState;//Ա��״̬ --δɾ��
	private String p1;//Ԥ���ֶ�
	private String p2;//Ԥ���ֶ�
	 
	public EmployeeId(int employeeId, String employeeUserName, String employeePwd, double employeeSalary,
			String employeeIdNum, String employeeAdd, String employeePhone, int roleId, String employeeState, String p1,
			String p2) {
		super();
		this.employeeId = employeeId;
		this.employeeUserName = employeeUserName;
		this.employeePwd = employeePwd;
		this.employeeSalary = employeeSalary;
		this.employeeIdNum = employeeIdNum;
		this.employeeAdd = employeeAdd;
		this.employeePhone = employeePhone;
		this.roleId = roleId;
		this.employeeState = employeeState;
		this.p1 = p1;
		this.p2 = p2;
	}
	public EmployeeId() {
		super();
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeUserName() {
		return employeeUserName;
	}
	public void setEmployeeUserName(String employeeUserName) {
		this.employeeUserName = employeeUserName;
	}
	public String getEmployeePwd() {
		return employeePwd;
	}
	public void setEmployeePwd(String employeePwd) {
		this.employeePwd = employeePwd;
	}
	public double getEmployeeSalary() {
		return employeeSalary;
	}
	public void setEmployeeSalary(double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}
	public String getEmployeeIdNum() {
		return employeeIdNum;
	}
	public void setEmployeeIdNum(String employeeIdNum) {
		this.employeeIdNum = employeeIdNum;
	}
	public String getEmployeeAdd() {
		return employeeAdd;
	}
	public void setEmployeeAdd(String employeeAdd) {
		this.employeeAdd = employeeAdd;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getEmployeeState() {
		return employeeState;
	}
	public void setEmployeeState(String employeeState) {
		this.employeeState = employeeState;
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
