package servletTwo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jingleTwo.Dao;
import twoEntity.Custome;

/**
 * Servlet implementation class CustomerLoginServlet
 */
@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		//实列化数据库客户数据对象
		Dao dao=new Dao();
		//实列化客户对象
		Custome cus=new Custome();
		//标记
		String flag=request.getParameter("flag");
		//得到账户
		String ctmid =request.getParameter("ctmid");
		//得到密码
		String pwd=request.getParameter("psw");
		System.out.println(ctmid);
		System.out.println(pwd);
		
		if("1".equals(flag)){
			Custome	cs=dao.cus(ctmid, pwd);
			if(cs!=null){
				//将用户对象传到页面
				System.out.println("进来了");
				session.setAttribute("customer", cs);
				//转发到页面jis
				if (ctmid.equals(cs.getCusLoginName())&&pwd.equals(cs.getCusPwd())) {
					request.getRequestDispatcher("index.jsp").forward(request,response);	
				}
			}else{
				//重定向到后台
				out.print("0");
			}
		}
		//关闭
		out.close();
	}

}
