package JingleOne;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import oneEntity.Authority;
import oneEntity.EmployeeId;
import sun.security.krb5.internal.crypto.RsaMd5CksumType;

public class Dao extends JDBC{
/**
 * 增删改查
 * 功能  查看所有 
 */
	public List<EmployeeId> selectEmployee(){
		List<EmployeeId> list =new ArrayList<EmployeeId>();
		PreparedStatement pre=null;
		ResultSet rs=null;
		Connection conn=conn();
		String sql="select * from EmployeeId";
		try {
			 pre=conn.prepareCall(sql);
			 rs=pre.executeQuery();
			while(rs.next()){
				int employeeId=rs.getInt("employeeId");
				String employeeUserName=rs.getString("employeeUserName");
				String employeePwd=rs.getString("employeePwd");
				double employeeSalary=rs.getDouble("employeeSalary");
				String employeeIdNum=rs.getString("employeeIdNum");
				String employeeAdd=rs.getString("employeeAdd");
				String employeePhone=rs.getString("employeePhone");
				int roleId=rs.getInt("RoleId");
				String employeeState=rs.getString("employeeState");
				String p1=rs.getString("P1");
				String p2=rs.getString("P2");
				EmployeeId em=new EmployeeId(employeeId,employeeUserName,employeePwd,
						employeeSalary,employeeIdNum,employeeAdd,employeePhone,roleId
						,employeeState,p1,p2);
				list.add(em);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs, pre, conn);
		}
		return list;
	}
	/**
	 * 		String sql="update Employee set 
	 * EmployeeUserName="+employee.getEmployeeUserName()+"
	 *  ,set EmployeePwd="+employee.getEmployeePwd()+""
				+ " ,set EmployeeSalary="+employee.getEmployeeSalary()+", 
				set EmployeeIdNum="+employee.getEmployeeIdNum()+""
				+ " ,set EmployeeAdd="+employee.getEmployeeAdd()+",
				set EmployeePhone="+employee.getEmployeePhone()+""
				+ " ,set EmployeeState="+employee.getEmployeeState()+",
				set RoleId="+employee.getRoleId()+""
				+ " ,where EmployeeId ="+employee.getEmployeeId()+"";
	 * 修改员工信息
	 */
	public int updateEmployee(EmployeeId employee,EmployeeId em){
		int row=0;
		Connection conn=conn();
		PreparedStatement pre=null;
		String sql="update employee set employeeUserName="+em.getEmployeeUserName()+",set employeePwd="+em.getEmployeePwd()+
				",set employeeSalary="+em.getEmployeeSalary()+",set employeeIdNum="+em.getEmployeeIdNum()+",set employeeAdd="+em.getEmployeeAdd()+",set employeePhone="+
				em.getEmployeePhone()+",set RoleId="+em.getRoleId()+",set employeeState ="+
				",set P1="+em.getP1()+",set P2"+em.getP2()+",where employeeId="+em.getEmployeeId()+"";
		System.out.println(sql);
		try {
			pre=conn.prepareCall(sql);
			row=pre.executeUpdate();
			if(row>0){
				System.out.println("修改成功");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(null,pre, conn);
		}
		
		return row;
	}
	/**
	 * 描述 后端登录
	 */
	public EmployeeId backLogin(String name,String pwd ){
		EmployeeId em=null;
		Connection conn=conn();
		PreparedStatement pre=null;
		ResultSet rs=null;
		String sql="select * from employee where employeeUserName=? and employeePwd=?";
		try {
			pre=conn.prepareCall(sql);
			pre.setString(1, name);
			pre.setString(2, pwd);
			rs=pre.executeQuery();
			if(rs.next()){
				int employeeId=rs.getInt("employeeId");
				String employeeUserName=rs.getString("employeeUserName");
				String employeePwd=rs.getString("employeePwd");
				double employeeSalary=rs.getDouble("employeeSalary");
				String employeeIdNum=rs.getString("employeeIdNum");
				String employeeAdd=rs.getString("employeeAdd");
				String employeePhone=rs.getString("employeePhone");
				int roleId=rs.getInt("RoleId");
				String employeeState=rs.getString("employeeState");
				String p1=rs.getString("P1");
				String p2=rs.getString("P2");
				em=new EmployeeId(employeeId,employeeUserName,employeePwd,
						employeeSalary,employeeIdNum,employeeAdd,employeePhone,roleId
						,employeeState,p1,p2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs, pre, conn);
		}
		return em;
	}
	/**
	 * 描述 ：查询登录对象的父级模块
	 */
	public ArrayList<Authority> selectAuthority(EmployeeId em){
		ArrayList<Authority> list =new ArrayList<Authority>();
		//连接
		Connection conn=conn();
		PreparedStatement pre=null;
		ResultSet rs=null;
		String sql="select * from Authority a join RoleAuthorty ra on a.AuthorityId=ra.AuthorityId join Role r on ra.RoleId=r.RoleId where r.RoleId=?";
		try {
			pre=conn.prepareCall(sql);
			pre.setInt(1, em.getRoleId());
			rs=pre.executeQuery();
			if(rs.next()){
				int authorityId=rs.getInt("AuthorityId");
				String authorityName=rs.getString("AuthorityName");
				int parentAuthority=rs.getInt("ParentAuthority");
				String authorityState=rs.getString("AuthorityState");
				String authoritySonUrl=rs.getString("AuthoritySonUrl");
				String p1=rs.getString("P1");
				String p2=rs.getString("P2");
				Authority aut=new Authority(authorityId,authorityName,parentAuthority,authorityState,authoritySonUrl,p1,p2);
				list.add(aut);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs, pre, conn);
		}
		return list;
	}
	/**
	 * 查询子模块
	 */
	public ArrayList<Authority> selectSonAu(){
		Connection conn=conn();
		String sql="select * from Authority where ParentAuthority !=0 ";
		ArrayList<Authority> list=new ArrayList<Authority>();
		//预编译
		PreparedStatement pre=null;
		ResultSet rs=null;
		
		try {
			pre=conn.prepareCall(sql);
			rs=pre.executeQuery();
			if(rs.next()){
				int authorityId=rs.getInt("AuthorityId");
				String authorityName=rs.getString("AuthorityName");
				int parentAuthority=rs.getInt("ParentAuthority");
				String authorityState=rs.getString("AuthorityState");
				String authoritySonUrl=rs.getString("AuthoritySonUrl");
				String p1=rs.getString("P1");
				String p2=rs.getString("P2");
				Authority aut=new Authority(authorityId,authorityName,parentAuthority,authorityState,authoritySonUrl,p1,p2);
				list.add(aut);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs, pre, conn);
		}
		
		return list;
		//连接
	}
	/**
	 * 根据传进来的int 来查询属于什么角色
	 * @param roleid
	 * @return
	 */
	public String selectRoleName(int roleid){
		//连接
		Connection conn=conn();
		//sql
		String sql="select RoleName from Role join Employee on Employee.RoleId=Role.RoleId where Employee.RoleId=? ";
		ResultSet rs=null;
		String name="";
		//预编译
		PreparedStatement pre=null;
		try {
			pre=conn.prepareStatement(sql);
			pre.setInt(1,roleid);
			//执行
			rs=pre.executeQuery();
			while(rs.next()){
			name=rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs, pre, conn);
		}
		return name;
	}
}
