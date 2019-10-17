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
		//��ȡ��ҳ�����Ե�����
		String Content =request.getParameter("Content");
		System.out.println("�����˹���");
		System.out.println(Content);
		// ��ȡsession
        HttpSession session = request.getSession();
        // ��ȡ�û�����
        Custome ct=(Custome) session.getAttribute("customer");
        //�õ��û���
        String name=ct.getCusName();
        System.out.println(ct.getCusName());
      //����date���� ,�õ���ǰʱ��
        Date date=new Date();
      //��ʽ��
        SimpleDateFormat sd=new SimpleDateFormat("yyyy��MM��dd��HHʱmm��ss��");
        //�õ���ʽ�����ʱ��
        String time=sd.format(date);
        //ʵ�������������
        System.out.println(Content);
        System.out.println(time);
        System.out.println(name);
        MessageBoard mo=new MessageBoard(name, time, Content);
        //ʵ�����û�dao���� ��������������������
        Dao dao=new Dao();
        if(Content!=null){
        	dao.mo(mo);
        	request.getRequestDispatcher("SecletMessageBoardServlet").forward(request,response);
        }
       
      //����ת��
	}

}
