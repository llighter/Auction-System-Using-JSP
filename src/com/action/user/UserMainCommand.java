package com.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.action.TemplateCommand;
import com.model.UserDAO;
import com.model.UserDTO;

public class UserMainCommand implements TemplateCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse resonse) {
		// TODO Auto-generated method stub
		String nextPage = "";
		
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO)session.getAttribute("user");
		
		request.setAttribute("user", user);
		
		return nextPage;
		
	}

}
