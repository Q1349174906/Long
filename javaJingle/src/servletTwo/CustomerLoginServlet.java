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
		//ʵ�л����ݿ�ͻ����ݶ���
		Dao dao=new Dao();
		//ʵ�л��ͻ�����
		Custome cus=new Custome();
		//���
		String flag=request.getParameter("flag");
		//�õ��˻�
		String ctmid =request.getParameter("ctmid");
		//�õ�����
		String pwd=request.getParameter("psw");
		System.out.println(ctmid);
		System.out.println(pwd);
		
		if("1".equals(flag)){
			Custome	cs=dao.cus(ctmid, pwd);
			if(cs!=null){
				//���û����󴫵�ҳ��
				System.out.println("������");
				session.setAttribute("customer", cs);
				//ת����ҳ��jis
				if (ctmid.equals(cs.getCusLoginName())&&pwd.equals(cs.getCusPwd())) {
					request.getRequestDispatcher("index.jsp").forward(request,response);	
				}
			}else{
				//�ض��򵽺�̨
				out.print("0");
			}
		}
		//�ر�
		out.close();
	}

}
