package jingleTwo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JingleOne.JDBC;
import twoEntity.Custome;
import twoEntity.MessageBoard;

public class Dao extends JDBC {
	/**
	 * 描述 前端登录查询
	 * @return
	 */
	public Custome cus(String ctmid,String pwd){
		Custome cus=null;
		//得到连接
		Connection con=conn();
		String sql="select * from custome where cusLoginName=? and cusPwd=?";
		PreparedStatement pre=null;
		ResultSet rs=null;
		try {
			pre=con.prepareCall(sql);
			pre.setString(1, ctmid);
			pre.setString(2, pwd);
			rs=pre.executeQuery();
			if(rs.next()){
				int cusId=rs.getInt("cusId");
				 String cusLoginName=rs.getString("cusLoginName");
				 String cusPwd=rs.getString("cusPwd");
				 String cusPhone=rs.getString("cusPhone");
				 String cusName=rs.getString("cusName");
				 String cusAddress=rs.getString("cusAddress");
				 String p1=rs.getString("p1");
				 String p2=rs.getString("p2");
				 cus=new Custome(cusId, cusLoginName, cusPwd, cusPhone, cusName, cusAddress, p1, p2);
				System.out.println(cusName);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cus;
	}
	/**
	 * 功能  新增用户
	 * @return
	 */
	public int insert(Custome cus){
		int cs=0;
		Connection conn=conn();
		String sql="insert into custome values(?,?,?,?,?,?,?);";
		PreparedStatement pre=null;
		try {
			pre=conn.prepareCall(sql);
			pre.setString(1, cus.getCusLoginName());
			pre.setString(2, cus.getCusPwd());
			pre.setString(3, cus.getCusPhone());
			pre.setString(4, cus.getCusName());
			pre.setString(5, cus.getCusAddress());
			pre.setString(6, cus.getP1());
			pre.setString(7, cus.getP2());
			cs=pre.executeUpdate();
			if(cs>0){
				System.out.println("新增成功");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(null, pre, conn);
		}
		return cs;
	}
	public int mo(MessageBoard me){
		int x=0;
		Connection conn=conn();
		PreparedStatement pre=null;
		String sql="insert into MessageBoard values(?,?,?)";
		try {
			pre=conn.prepareCall(sql);
			pre.setString(1, me.getCdName());
			pre.setString(2, me.getTime());
			pre.setString(3, me.getContent());
			x=pre.executeUpdate();
			if(x>0){
				System.out.println("新增成功");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(null, pre, conn);
		}
		return x;
	}
	public List<MessageBoard> select(){
		List<MessageBoard> list=new ArrayList<MessageBoard>();
		Connection conn=conn();
		String sql="select * from MessageBoard";
		PreparedStatement pre=null;
		ResultSet rs=null;
				try {
					pre=conn.prepareCall(sql);
					rs=pre.executeQuery();
				while(rs.next()){
					int boID=rs.getInt("boID");
					String cdName=rs.getString("cdName");
					String time=rs.getString("time");
					String content=rs.getString("content");
					MessageBoard me=new MessageBoard(boID, cdName, time, content);
					list.add(me);
				}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					close(rs, pre, conn);
				}
		return list;
	}
	public static void main(String[] args) {
		Dao dao=new Dao();
		MessageBoard x=new MessageBoard("张三", "2019--08--18--17--32--32", "12345");
		dao.mo(x);
	}
}
