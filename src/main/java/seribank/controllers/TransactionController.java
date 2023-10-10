package seribank.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import seribank.ddo.UserDataManager;
import seribank.models.User;


@WebServlet("/TransactionController")
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDataManager udm = UserDataManager.getInstance();
       
  
    public TransactionController() {
        super();  
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/login").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		double val = Double.parseDouble(request.getParameter("t_value"));
		String desc = request.getParameter("description");
		int from = Integer.parseInt(request.getParameter("from_id"));
		int to = Integer.parseInt(request.getParameter("to_id"));
		User user = udm.getUser(from);
		User target = udm.getUser(to);
		try {
			user.getWallet().withdraw(val);
		} catch (Exception e) {
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
		target.getWallet().deposit(val);
		Date time = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		request.setAttribute("date", sdf.format(time));
	
		request.setAttribute("user", user);
		request.setAttribute("dtManager", udm);
		request.setAttribute("desc", desc);
		request.setAttribute("val", val);
		
		request.getRequestDispatcher("/home.jsp").forward(request,  response);
	}

}
