package com.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;

import com.action.TemplateCommand;
import com.model.UserDAO;
import com.model.UserDTO;

public class UserLoginCommand implements TemplateCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse resonse) {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nextPage = "";
		
		System.out.println("[info]Sign in: "+email+", "+password);
		
		UserDAO dao = new UserDAO();
		UserDTO user = dao.get(email);
		HttpSession session = request.getSession();
		
		System.out.println("[check]Infomation : "+user.getPassword()+", "+password);
		
		if(user != null && password.equals(user.getPassword())) {
			request.setAttribute("user", user);
			session.setAttribute("user", user);
			System.out.println("[+]Sign in Success..");
			
			nextPage = "main.jsp";
			
		} else {
			System.out.println("[-]Wrong Infomation..");
			nextPage = "login.jsp";
		}
		
		return nextPage;
		
	}

}
