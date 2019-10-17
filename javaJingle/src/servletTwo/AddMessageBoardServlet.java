package servletTwo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jingleTwo.Dao;
import twoEntity.Custome;
import twoEntity.MessageBoard;

/**
 * Servlet implementation class AddMessageBoardServlet
 */
@WebServlet("/AddMessageBoardServlet")
public class AddMessageBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMessageBoardServlet() {
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
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		//获取到页面留言的内容
		String Content =request.getParameter("Content");
		System.out.println("进来了哈哈");
		System.out.println(Content);
		// 获取session
        HttpSession session = request.getSession();
        // 获取用户对象
        Custome ct=(Custome) session.getAttribute("customer");
        //得到用户名
        String name=ct.getCusName();
        System.out.println(ct.getCusName());
      //创建date对象 ,得到当前时间
        Date date=new Date();
      //格式化
        SimpleDateFormat sd=new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");
        //得到格式化后的时间
        String time=sd.format(date);
        //实例化留言类对象
        System.out.println(Content);
        System.out.println(time);
        System.out.println(name);
        MessageBoard mo=new MessageBoard(name, time, Content);
        //实例化用户dao层类 ，并调用留言新增方法
        Dao dao=new Dao();
        if(Content!=null){
        	dao.mo(mo);
        	request.getRequestDispatcher("SecletMessageBoardServlet").forward(request,response);
        }
       
      //请求转发
	}

}
