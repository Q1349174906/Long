package servletTwo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jingleTwo.Dao;
import twoEntity.Custome;



/**
 * �ͻ�ע��servlet��
 * Servlet implementation class CustomerRegisterServlet
 */
@WebServlet("/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		//��ȡ�ͻ��˵���Ϣ
		
		String cusLoginName=request.getParameter("name1");
		String cusPwd=request.getParameter("psw1");
		String cusPhone=request.getParameter("cname");
		String cusName=request.getParameter("adr");
		String cusAddress=request.getParameter("pho");
		String name=request.getParameter("name");
		System.out.println(cusLoginName);
		System.out.println(cusPhone);
		System.out.println(cusName);
		System.out.println(cusAddress);
		String p1="q";
		String p2="a";
		System.out.println(cusPwd);
		System.out.println("123456785559");
		
		
		System.out.println(cusPwd);
		//ʵ�����ͻ�dao����Ϳͻ���
		Custome c = new Custome(cusLoginName,cusPwd,cusPhone,cusName,cusAddress,p1,p2);
		Dao cd = new Dao();
	System.out.println("123456789");
		if (cusAddress!=null&&!"".equals(cusAddress)
				&&cusLoginName!=null&&!"".equals(cusLoginName)
				&&cusPwd!=null&&!"".equals(cusPwd)
				&&cusPhone!=null&&!"".equals(cusPhone)				
				&&cusName!=null&&!"".equals(cusName)
				) 
				{
					//����dao���ע�᷽��
					cd.insert(c);
					//�ض���indexҳ��
					response.sendRedirect("index.jsp");
				}
		
		}

	}
