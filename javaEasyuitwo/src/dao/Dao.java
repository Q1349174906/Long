package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import entity.BookNew;
import entity.Shopcar;
import javafx.util.converter.PercentageStringConverter;


public class Dao {
	public Connection com(){
		Connection com=null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String a="sa";
			String b="123456";
			String c="jdbc:sqlserver://127.0.0.1:1433;databaseName=d33";
			com=DriverManager.getConnection(c, a, b);
			if(com!=null){
				System.out.println("���ӳɹ�");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		return com;
	}
	public List<BookNew> list(){
		List<BookNew> list=new ArrayList<BookNew>();
		Connection com=com();
		String a="select * from book";
		try {
			PreparedStatement b=com.prepareCall(a);
			ResultSet rs=b.executeQuery();
			while(rs.next()){
				int id=rs.getInt("id"); 
				String title=rs.getString("title");
				String author=rs.getString("author");
				String publisher=rs.getString("publisher");
				String type =rs.getString("type");
				String description=rs.getString("description");
				String image=rs.getString("image_url");
				System.out.println(image+"===");
				double price=rs.getDouble("price");
				BookNew book=new BookNew(id,title,author,publisher,type,description,image,price);	
				list.add(book);
				System.out.println(title);
				
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
	}
	/**
	 * ���� ��¼
	 */
	public boolean login(String name ,String pass){ 
		boolean a=false;
		//�õ�����
		Connection com=com();
		//Ԥ�������
		String sql="select * from customer where Name=? and password=?";
		PreparedStatement b=null;
		try {
			b=com.prepareCall(sql);
			b.setString(1, name);
			b.setString(2, pass);
			ResultSet rs=b.executeQuery();
			if(rs.next()){
				 a=true;
			}
			System.out.println(name);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(a);
		return a;
	}
	/**
	 * ���� ע��������û�
	 * @param name
	 * @param pwd
	 * @return
	 */
	public int insert(String name,String pass,String sex,String email,String phone,String address,String question,String answer){
		int x=0;
		Connection com=com();
		String sql="INSERT INTO customer (name,password,sex,email,phone,address,question,answer) values (?,?,?,?,?,?,?,?) ";
		PreparedStatement b=null;
		try {
			b=com.prepareStatement(sql);
			b.setString(1, name);
			b.setString(2, pass);
			b.setString(3, sex);
			b.setString(4, email);
			b.setString(5, phone);
			b.setString(6, address);
			b.setString(7, question);
			b.setString(8, answer);
			x=b.executeUpdate();
			if(x>0){
				System.out.println("��"+b);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	//��ҳ
	/**
	 * ��ҳ
	 * int ������ҳ��
	 * @return
	 */
	public int getTota(){
		int tota=0;
		int x=0;
		Connection com =com();
		String sql="select COUNT(*) from book";
		PreparedStatement b=null;
		try {
			b=com.prepareCall(sql);
			ResultSet rs=b.executeQuery();
			if(rs.next()){
				//������18
				x=rs.getInt(1);
				if(x%8==0){
					//�̾���������
					tota=x/8;
				}else{
					tota=x/8+1;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tota;
	}
	/**
	 * ��ҳ��ѯ
	 * ��ǰҳ��
	 * @return
	 */
	public List<BookNew> list1(int current){
		int current1=(current-1)*8;
		List<BookNew> list=new ArrayList<BookNew>();
		Connection com=com();
		String a="select top 8 * from book where id not in"+"(select top "+current1+"id from book)";
		try {
			PreparedStatement b=com.prepareCall(a);
			ResultSet rs=b.executeQuery();
			while(rs.next()){
				int id=rs.getInt("id"); 
				String title=rs.getString("title");
				String author=rs.getString("author");
				String publisher=rs.getString("publisher");
				String type =rs.getString("type");
				String description=rs.getString("description");
				String image=rs.getString("image_url");
				System.out.println(image+"===");
				double price=rs.getDouble("price");
				BookNew book=new BookNew(id,title,author,publisher,type,description,image,price);	
				list.add(book);
				System.out.println(title);
				
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
	}
	/**
	 * id ��ѯ����
	 * @param id
	 * @return
	 */
	public BookNew select(int id){
		//�õ�����
		BookNew book=null;
		Connection com=com();
		//Ԥ����
		String sql="select * from book where id=?";
		PreparedStatement b=null;
		try {
			b = com.prepareCall(sql);
			b.setInt(1, id);
			ResultSet rs=b.executeQuery();
			//ѭ���ó����
			//��������ֻ��һ�� ����id��ѯ
			if(rs.next()){
				int ids=rs.getInt("id"); 
				String title=rs.getString("title");
				String author=rs.getString("author");
				String publisher=rs.getString("publisher");
				String type =rs.getString("type");
				String description=rs.getString("description");
				String image=rs.getString("image_url");
				double price=rs.getDouble("price");
				book=new BookNew(ids,title,author,publisher,type,description,image,price);	
				System.out.println(description);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return book;
		
	}
	/**
	 * ����  ɾ��book
	 * @param args
	 */
	public void delete(String title){
		Connection com=com();
		PreparedStatement b=null;
		int x=0;
		String sql="delete from book where like %?%";
		try {
			b=com.prepareCall(sql);
			b.setString(1, title);
			x=b.executeUpdate();
			if(x>0){
				System.out.println("ɾ���ɹ�");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * ���� ͨ�����ֲ�ѯid
	 * @param args
	 */
	public int selectB(String name){
		int x=0;
		Connection com=com();
		String sql="select  id from customer where name=?";
		PreparedStatement per=null;
		try {
			per=com.prepareStatement(sql);
			x=per.executeUpdate();
			if(x>0){
				System.out.println("ok");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	/**
	 * ����  ���ﳵ����
	 * ����
	 * @param args
	 * Collection --�����м��ϵĸ���
	 */
	public void insert(Collection<BookNew>books,int carId){
		Connection com=com();
		PreparedStatement pre=null;
		String sql="insert into shopDetailCar values(?,?,?,?)";
		try {
			pre=com.prepareStatement(sql);
			//ѭ��book����
			for(BookNew b:books){
				pre.setInt(1, b.getId());
				pre.setInt(2, b.getBookCount());
				pre.setDouble(3, b.getBookCount()*b.getPrice()*0.8);
				pre.setInt(4, carId);
				//��������
				pre.addBatch();
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/**
	 * �������ﳵ  
	 * @param args
	 */
	public int inserta(Shopcar sho){
		int a=0;
		Connection com=com();
		String b="insert into orders values(?,?,?,?,?)";
		try {
			PreparedStatement pre=com.prepareStatement(b);
			pre.setString(1, sho.getCarId());
			pre.setString(2, sho.getCarcrateTime());
			pre.setInt(3, sho.getCld());
			pre.setString(4, sho.getCarSate());
			pre.setDouble(5, sho.getCarTotal());
			//��������

			a=pre.executeUpdate();
			if(a>0){
				System.out.println("�ɹ���");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	public int inserta(BookNew book){
		int row=0;
		//�õ�����
		Connection com=com();
		//Ԥ����
		String sql ="insert into book values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pre=com.prepareStatement(sql);
			pre.setString(1, book.getTitle());
			pre.setString(2, book.getAuthor());
			pre.setString(3, book.getPublisher());
			pre.setString(4, "1");
			pre.setString(5, book.getDesription());
			pre.setString(6, "666");
			pre.setDouble(7, book.getPrice());
			row=pre.executeUpdate();
			if(row>0){
				System.out.println("�����ɹ�");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row;
				
	}
	public int deleteBookById(int id){
		int row=0;
		Connection conn = com();
		String sql="delete from book where id=?";
		try {
			PreparedStatement pre = conn.prepareStatement(sql);
			pre.setInt(1, id);
			row = pre.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	/**
	 * ��ҳ��ѯ
	 * @param args
	 */
	public List<BookNew> getAllBooks(int page,int rows){
		int current1=(page-1)*rows;
		List<BookNew> list=new ArrayList<BookNew>();
		Connection com=com();
		String a="select top "+rows+" * from book where id not in"+"(select top "+current1+"id from book)";
		try {
			PreparedStatement b=com.prepareCall(a);
			ResultSet rs=b.executeQuery();
			while(rs.next()){
				int id=rs.getInt("id"); 
				String title=rs.getString("title");
				String author=rs.getString("author");
				String publisher=rs.getString("publisher");
				String type =rs.getString("type");
				String description=rs.getString("description");
				String image=rs.getString("image_url");
				System.out.println(image+"===");
				double price=rs.getDouble("price");
				BookNew book=new BookNew(id,title,author,publisher,type,description,image,price);	
				list.add(book);
				
				
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
	
	}
	/**
	 * ��ѯ������
	 * @param args
	 */
	public int getTotalRows(){
		Connection com=com();
		int x=0;
		String sql="select COUNT(*) from book";
		try {
			PreparedStatement b=com.prepareCall(sql);
			ResultSet rs=b.executeQuery();
			if(rs.next()){
				x=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	/**
	 * �޸�����
	 * @return
	 */
	public int xiuGai(){
		int row=0;
		
		return row;
	}
	public static void main(String[] args) {
		Dao dao=new Dao();
	//	dao.login("Fini", "admin");
		//dao.select(3);
		//dao.list1(1);
		//dao.insert("����","zhutou","F","jennyq@163.com","0551-5212818","����ʡ�Ϸ�����ɽ·XX��","dd","dadw");
	}
}
