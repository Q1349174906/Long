package servletTwo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import twoEntity.Custome;

/**
 * Servlet implementation class CustomerExitServlet
 */
@WebServlet("/CustomerExitServlet")
public class CustomerExitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerExitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取session
		System.out.println("退出");
        HttpSession session = request.getSession();
        // 获取用户对象
        
        Custome ct = (Custome)session.getAttribute("customer");
        System.out.println(ct);
        // 判断用户是否有效
        if(ct!=null){
            // 将用户对象逐出session
            session.removeAttribute("customer");
            System.out.println("nihao");
            // 设置提示信息
            request.setAttribute("info", ct.getCusLoginName() + " 已成功退出！");
        }
        // 转发到index.jsp页面
        request.getRequestDispatcher("index.jsp").forward(request, response);
        System.out.println("tui");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
