package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 서블릿에서 데이터를 전달할 때 
		 * request에 setAttribute로 전달
		 */
		
		//	정수, 실수, 문자열, 논리형, null 세팅
		int iVal = 2021;
		float fVal = 3.14159f;
		String sVal = "Hello EL";
		boolean bVal = true;
		Object nullVal = null;
		//	참조 타입
		UserVo vo = new UserVo();
		vo.setNo(100);
		vo.setEmail("hong@example.com");
		
		//	JSP로 전달
		request.setAttribute("iVal", iVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("sVal", sVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("nullVal", nullVal);
		request.setAttribute("userVo", vo);
		
		//	01.jsp로 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
