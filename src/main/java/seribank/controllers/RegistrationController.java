package seribank.controllers;

import java.io.IOException;

import seribank.ddo.UserDataManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDataManager userDataManager = UserDataManager.getInstance();
       

    public RegistrationController() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		try {
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String cpf = request.getParameter("cpf");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			if (userDataManager.registerUser(name, cpf, phone, address, password, email)) {		
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
				
		}catch(Exception e) {
			System.out.println("Um erro corroeu: " + e.getMessage());
		}
			
		
	}

}
