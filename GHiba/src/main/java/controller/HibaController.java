package controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import beans.*;
import service.*;

@WebServlet(urlPatterns = { "/HibaController" })

public class HibaController extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		//response.sendRedirect("GestionSalle.jsp");
        if (request.getParameter("op") != null) {
            if (request.getParameter("op").equals("load")) {
        		response.setContentType("application/json");
               String msg = "hiba";
                Gson json = new Gson();
                response.getWriter().write(json.toJson(msg));
        	}
//            if (request.getParameter("op").equals("activer")) {
//        		int id= Integer.parseInt(request.getParameter("id"));
//        		User user = us.findById(id);
//        		us.activatAccount(id);
//        		response.setContentType("application/json");
//        	    List<User> users = us.findAll();
//                Gson json = new Gson();
//                response.getWriter().write(json.toJson(users)); 
//            }
//            if (request.getParameter("op").equals("login")) {
//            	
//        		String user = request.getParameter("user"); 
//        		response.setContentType("application/json");
//        	    User u = us.findByUsername(user);
//        	    //String message="Informations erronés";
//    	    	Gson json = new Gson();
//        	    if(u!=null) {
//                    response.getWriter().write(json.toJson(u)); 
//        	    }
//        	    if(u==null) {
//                    response.getWriter().write(json.toJson(null)); 
//        	    }
//        	    //else response.getWriter().write(json.toJson(message)); 
//            }
//            if (request.getParameter("op").equals("authenticate")) {
//            	
//        		String user = request.getParameter("user"); 
//        		String pass = request.getParameter("pass");
//        		HttpSession session = request.getSession();
//        		session.setMaxInactiveInterval(10*60); 
//        		session.setAttribute("user", user);
//        		User u = us.findByUsername(session.getAttribute("user").toString());
//        		response.setContentType("application/json");
//    	    	Gson json = new Gson();
//                response.getWriter().write(json.toJson(u));
//
//            }
//            if (request.getParameter("op").equals("update")) {
//        		int id = Integer.parseInt(request.getParameter("id"));
//        		String nom = request.getParameter("nom"); 
//        		String prenom = request.getParameter("prenom");
//        		String username = request.getParameter("username");
//        		String email = request.getParameter("email");
//        		String password = request.getParameter("password");
//        		User u = us.findById(id);
//        		u.setNom(nom);
//        		u.setPrenom(prenom);
//        		u.setUsername(username);
//        		u.setEmail(email);
//        		u.setPassword(password);
//        		us.update(u);
//        		String msg= "";
//        		User u1 = us.findById(id);
//        		response.setContentType("application/json");
//    	    	Gson json = new Gson();
//                response.getWriter().write(json.toJson(u1));
//
//            }
//            if (request.getParameter("op").equals("getUser")) {
//            	HttpSession session = request.getSession();
//        		response.setContentType("application/json");
//        		User u = us.findByUsername(session.getAttribute("user").toString());
//    	    	Gson json = new Gson();
//    	    	response.getWriter().write(json.toJson(u)); 
//            }
//            if (request.getParameter("op").equals("desactiver")) {
//        		int id= Integer.parseInt(request.getParameter("id"));
//        		us.desactivatAccount(id);
//        		response.setContentType("application/json");
//        	    List<User> users = us.findAll();
//                Gson json = new Gson();
//                response.getWriter().write(json.toJson(users)); 
//        	}
//            
//            if (request.getParameter("op").equals("delete")) {
//        		int id= Integer.parseInt(request.getParameter("id"));
//        		Salle salle = ss.findById(id);
//        		ss.delete(salle);
//        		response.setContentType("application/json");
//                List<Salle> salles = ss.findAll();
//                Gson json = new Gson();
//                response.getWriter().write(json.toJson(salles));
//        	}
        }
        else {
//        	String user = request.getParameter("user");
//    		String pass = request.getParameter("pass");
//    		us.create(new User(user,pass));
//    		response.setContentType("application/json");
//            List<User> users = us.findAll();
//            Gson json = new Gson();
//            response.getWriter().write(json.toJson(users));
        }
        
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	
}

