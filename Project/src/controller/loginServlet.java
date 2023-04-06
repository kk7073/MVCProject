package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
import model.service.loginService;


@WebServlet("/login")
public class loginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		loginService service = new loginService();
		MemberDAO dao = new MemberDAO();
		service.setDao(dao);
		
		
		
		if(service.logincheck(id, pw)){
			//회원 
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			//System.out.println("oo");
			
			// ================================================================================
			response.sendRedirect("/project/goodslist");
			
		}else{
			//비회원
			//System.out.println("xx");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('없는 아이디, 비밀번호입니다')");
			out.println("</script>");
			HttpSession session = request.getSession();
			
			//request.getRequestDispatcher("WEB-INF/views/로그인.jsp").forward(request, response);
		}
		
	}

}
