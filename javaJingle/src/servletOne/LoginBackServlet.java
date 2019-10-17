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
//		//��ת����ҳ
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
		//ʵ�л����ݿ����Ӷ���
		Dao dao=new Dao();
		//���
		String flag =request.getParameter("flag");
		//�û�������˺�
		String name=request.getParameter("name");
		//�û�����
		String pwd=request.getParameter("password");
		//�ж��Ƿ��¼�ɹ�
		EmployeeId em=dao.backLogin(name, pwd);
		if("1".equals(flag)){
			//�õ���¼�ɹ����û�  �õ��û��Ľ�ɫid ����ģ��
			ArrayList<Authority> list=dao.selectAuthority(em);
			//�����ݴ���ҳ��
			session.setAttribute("backuser", list);
			//��ѯ�û���ɫ
			String brName=dao.selectRoleName(em.getRoleId());
			System.out.println(brName);
			//��ɫ���ִ���ҳ��
			session.setAttribute("brName", brName);
			//�õ���ģ�鼯�� ����ҳ��
			ArrayList<Authority> sonList=dao.selectSonAu();
			session.setAttribute("sonList", sonList);
			//�ض��򵽺�̨��ҳ
			response.sendRedirect("");
		}else if("2".equals(flag)){
			//Ϊ�����¼ʧ�� д�ص�1ҳ��
			if(em==null){
				out.println("2");
			}else{
				out.println("1");
			}
			
		}
	out.close();	
	}

}
