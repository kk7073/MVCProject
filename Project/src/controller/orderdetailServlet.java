package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.Orderlist;
import model.dao.orderlistDAO;


@WebServlet(name = "OrderdetailServlet", urlPatterns = { "/OrderdetailServlet" })
public class orderdetailServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//HttpSession session = request.getSession();
		// String id = (String) session.getAttribute("id");  �꽭�뀡 �븘�씠�뵒 媛��졇�삤湲�.
		
		System.out.println("kkkkkd65446");
		//媛��졇�삤湲�
		String id = "tpgml";
		orderlistDAO dao = new orderlistDAO();
		 ArrayList<Orderlist> list = dao.getOrderlist(id);
		 System.out.println(list);
		
		 
		 //�뜕�졇二쇨린
		 request.setAttribute("list", list); //(�궎,�떎�젣�뜲�씠�꽣)
		 request.getRequestDispatcher("WEB-INF/views/orderlist.jsp").forward(request, response);
		 // �뿭�븷 :
		 
	}

}
