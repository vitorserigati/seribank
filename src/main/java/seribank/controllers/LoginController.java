package seribank.controllers;

import java.io.IOException;
import seribank.ddo.UserDataManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import seribank.models.User;



@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDataManager userDataManager = UserDataManager.getInstance();
       
    public LoginController() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("/login.jsp").forward(request, response);
   	
    	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = null;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String email = null;
		String password = null;
		RequestDispatcher dispatcher;
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		
		
		
		if(email != "" && password != "") {		
			user = userDataManager.getUserByEmail(email);	
			
			if (user != null && user.getPassword().equals(password)) {
				request.setAttribute("user", userDataManager.getUserByEmail(email));
				request.setAttribute("dtManager", userDataManager);
				dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
			}else {
				request.setAttribute("e", "Email ou Senha incorretos.");
				dispatcher = request.getRequestDispatcher("error.jsp");				
				dispatcher.forward(request, response);
			}
		}else {
			request.setAttribute("e", "Por favor, preencha todos os campos!");
			dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
