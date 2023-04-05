package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.OrderDAO;

@WebServlet("/order")
public class OrderServlet extends HttpServlet{
	//상세페이지에서 주문하기 클릭했을 때에 넘어오는 서블릿
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//로그인 확인여부 체크
		//HttpSession session = request.getSession();
		//String id = (String)session.getAttribute("id");
		String id="tpgml";
		
		if(id!=null){
			System.out.println("doPost");
			OrderDAO dao= new OrderDAO();
			
			int mno = dao.idToMno("tpgml");
			
			
			//int mno=3;
			
			//시퀀스 만들기
			int seq = dao.seq();
			System.out.println(seq);
			
			// 주문생성
			dao.insertOrder(mno);	
			String gno = request.getParameter("gno");
			String amt_ = request.getParameter("amt");
			int amt = Integer.parseInt(amt_);
			
			// 주문번호를    사용  insert  
			dao.insertOrderItem(amt, gno);
			
			
			response.sendRedirect("WEB-INF/views/home.jsp");
		}else{
			//로그인 안한경우
			response.sendRedirect("/sessionTest/login.jsp");
		}
	}

}
