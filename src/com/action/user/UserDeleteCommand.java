package com.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.TemplateCommand;
import com.model.UserDAO;

public class UserDeleteCommand implements TemplateCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse resonse) {
		// TODO Auto-generated method stub
		UserDAO dao = new UserDAO();
		String user_id = request.getParameter("user_id");
		
		dao.delete(user_id);
		System.out.println("[-]User is Deleted(user_id: "+user_id+")");
		return "";
	}

}
