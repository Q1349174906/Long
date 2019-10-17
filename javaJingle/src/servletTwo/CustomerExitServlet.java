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
		// ��ȡsession
		System.out.println("�˳�");
        HttpSession session = request.getSession();
        // ��ȡ�û�����
        
        Custome ct = (Custome)session.getAttribute("customer");
        System.out.println(ct);
        // �ж��û��Ƿ���Ч
        if(ct!=null){
            // ���û��������session
            session.removeAttribute("customer");
            System.out.println("nihao");
            // ������ʾ��Ϣ
            request.setAttribute("info", ct.getCusLoginName() + " �ѳɹ��˳���");
        }
        // ת����index.jspҳ��
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
