package com.stand.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stand.model.Utilizador;
import com.stand.service.SUtilizador;

/**
 * Servlet implementation class HLogin
 */
@WebServlet("/HLogin")
public class HLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Utilizador user;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HLogin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		if(session.getAttribute("currentSessionUSer") != null){
			if(user != null){
				request.getRequestDispatcher("dashboard.jsp").forward(request, response);
			}
		}else{
			response.sendRedirect("HWeb/?NoSessionSet");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameterMap().containsKey("log_ut")){
			try{
				
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				user = SUtilizador.login(username, password);
				
				if(user.isOnline()){
					HttpSession session = request.getSession(true);
					session.setAttribute("currentSessionUser", user);
				}else{
					response.sendRedirect("HLogin/?InvalidUser");
				}
				
			} catch (Throwable e) {
				System.out.println("Zona de Login: "+ e);
			}
			
		}
		
		this.doGet(request, response);
	}

}
