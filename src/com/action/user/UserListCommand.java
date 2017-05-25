package com.action.user;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.action.TemplateCommand;
import com.model.UserDAO;
import com.model.UserDTO;

public class UserListCommand implements TemplateCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse resonse) {
		// TODO Auto-generated method stub
		UserDAO dao = new UserDAO();
		
		ArrayList<UserDTO> list = dao.getAll();
		System.out.println("[UserList]length: "+ list.size());
		
		request.setAttribute("list", list);
		
		return "";
	}

}
