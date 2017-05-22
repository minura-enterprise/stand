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
	private HttpSession session;
	private SUtilizador servUtilizador;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HLogin() {
        super();
        this.servUtilizador = new SUtilizador();
        this.servUtilizador.setArUtilizador(SUtilizador.getDBUtilizador());
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
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
					session = request.getSession(true);
					session.setAttribute("currentSessionUser", user);
					request.getRequestDispatcher("dashboard.jsp").forward(request, response);
				}else{
					response.sendRedirect("HLogin/?InvalidUser");
				}
				
			} catch (Throwable e) {
				System.out.println("Zona de Login: "+ e);
			}
			
		}
		
		if(request.getParameterMap().containsKey("add_ut")){
			
			int u_id = this.servUtilizador.getArUtilizador().size();
			String u_username = request.getParameter("u_username");
			String u_email = request.getParameter("u_email");
			String u_password = request.getParameter("u_password");
			
			Utilizador u = new Utilizador(u_id, null, null, u_email, null, 1, u_username, u_password, false, false);
			SUtilizador.insertDBUtilizador(u);
			this.servUtilizador.getArUtilizador().add(u);
			response.sendRedirect("HWeb?UserInsertSuccess");
		}
		
		this.doGet(request, response);
	}

}
