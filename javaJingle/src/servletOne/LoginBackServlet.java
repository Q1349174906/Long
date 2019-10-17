package servletOne;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import JingleOne.Dao;
import oneEntity.Authority;
import oneEntity.EmployeeId;

/**
 * Servlet implementation class LoginBackServlet
 */
@WebServlet("/LoginBackServlet")
public class LoginBackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginBackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		HttpSession session=request.getSession();
//		session.setAttribute("backuser", null);
//		//跳转到主页
//		response.sendRedirect("");
//		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=utf-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		//实列化数据库连接对象
		Dao dao=new Dao();
		//标记
		String flag =request.getParameter("flag");
		//用户输入的账号
		String name=request.getParameter("name");
		//用户密码
		String pwd=request.getParameter("password");
		//判断是否登录成功
		EmployeeId em=dao.backLogin(name, pwd);
		if("1".equals(flag)){
			//得到登录成功的用户  得到用户的角色id 返回模块
			ArrayList<Authority> list=dao.selectAuthority(em);
			//将数据传入页面
			session.setAttribute("backuser", list);
			//查询用户角色
			String brName=dao.selectRoleName(em.getRoleId());
			System.out.println(brName);
			//角色名字传到页面
			session.setAttribute("brName", brName);
			//得到子模块集合 传到页面
			ArrayList<Authority> sonList=dao.selectSonAu();
			session.setAttribute("sonList", sonList);
			//重定向到后台主页
			response.sendRedirect("");
		}else if("2".equals(flag)){
			//为空则登录失败 写回到1页面
			if(em==null){
				out.println("2");
			}else{
				out.println("1");
			}
			
		}
	out.close();	
	}

}
