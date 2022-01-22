package controller;

import beans.*;

import com.google.gson.*;
import java.io.IOException;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.*;

@WebServlet(name = "UserController", urlPatterns = { "/UserController" })
public class UserController extends HttpServlet {

	private UserService us = new UserService();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("op") != null) {
			if (request.getParameter("op").equals("load")) {
				response.setContentType("application/json");
				List<User> users = us.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(users));

			}
			
			if(request.getParameter("op").equals("activer")) {
            	int id= Integer.parseInt(request.getParameter("id"));
            	User user = us.findById(id);
         		us.Activer(user);
         		response.setContentType("application/json");
         		String username = request.getParameter("username");
        		List<User> users = us.findAll();
                 Gson json = new Gson();
                 response.getWriter().write(json.toJson(users));
            }
            if(request.getParameter("op").equals("desactiver")) {
            	int id= Integer.parseInt(request.getParameter("id"));
            	User user = us.findById(id);
         		us.Desactiver(user);
         		response.setContentType("application/json");
         		String username = request.getParameter("username");
        		List<User> users = us.findAll();
                 Gson json = new Gson();
                 response.getWriter().write(json.toJson(users));
            }

			if (request.getParameter("op").equals("delete")) {
				int id = Integer.parseInt(request.getParameter("id"));
				us.delete(us.findById(id));
				response.setContentType("application/json");
				List<User> users = us.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(users));
			}
			if (request.getParameter("op").equals("log")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				response.setContentType("application/json");
				User user = us.findUser(email, password);
				Gson json = new Gson();
				response.getWriter().write(json.toJson(user));
			}

		} else if (request.getParameter("id") != null) {
			if (!request.getParameter("id").equals("")) {
				String username = request.getParameter("username");
				String nomComplet = request.getParameter("nomComplet");
				String email = request.getParameter("email");
				String telephone = request.getParameter("telephone");
				String password = request.getParameter("password");
				int id = Integer.parseInt(request.getParameter("id"));
				User u = us.findById(id);
				u.setUsername(username);
				u.setNomComplet(nomComplet);
				u.setEmail(email);
				u.setTelephone(telephone);
				us.update(u);
				response.setContentType("application/json");
				List<User> users = us.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(users));
			}
		} else {
			boolean test = false;
			String username = request.getParameter("username");
			String nomComplet = request.getParameter("nomComplet");
			String email = request.getParameter("email");
			String telephone = request.getParameter("telephone");
			String password = request.getParameter("password");
			if (!us.findUserByUsername(username).isEmpty()) {
				test = true;
			}
			us.create(new User(nomComplet, username, email, telephone, password, 1, 0));
			response.setContentType("application/json");
			List<User> users = us.findAll();
			Gson json = new Gson();
//            String both="["+json.toJson(test)+","+json.toJson(machines)+"]";
			response.getWriter().write(json.toJson(users));
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}