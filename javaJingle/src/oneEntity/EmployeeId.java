package oneEntity;
/**
 * 后台员工实体类
 *2019年8月14日
 *上午11:44:28
 */
public class EmployeeId {
	private int employeeId;//员工id
	private String employeeUserName;//员工姓名
	private String employeePwd;//员工密码
	private double employeeSalary;//员工薪水
	private String employeeIdNum;//员工身份证
	private String employeeAdd;//员工地址
	private String employeePhone;//员工电话
	private int roleId;//员工对应的角色
	private String employeeState;//员工状态 --未删除
	private String p1;//预留字段
	private String p2;//预留字段
	 
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
