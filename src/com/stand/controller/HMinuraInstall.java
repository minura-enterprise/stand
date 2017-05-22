package com.stand.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.Stand;
import com.stand.model.Utilizador;
import com.stand.service.SStand;
import com.stand.service.STipo;
import com.stand.service.SUtilizador;

/**
 * Servlet implementation class HMinuraInstall
 */
@WebServlet("/HMinuraInstall")
public class HMinuraInstall extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private STipo servTipo;
	private SUtilizador servUtilizador;
	private SStand servStand;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HMinuraInstall() {
        super();
        this.servTipo = new STipo();
        this.servUtilizador = new SUtilizador();
        this.servStand = new SStand();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());.
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameterMap().containsKey("web_install")){
			
			int u_id = this.servUtilizador.getArUtilizador().size();
			String u_nome = request.getParameter("u_nome");
			String u_sobrenome = request.getParameter("u_sobrenome");
			String u_email = request.getParameter("u_email");
			String u_contacto = request.getParameter("u_contacto");
			String u_username = request.getParameter("u_username");
			String u_password = request.getParameter("u_password");
			
			Utilizador u = new Utilizador(u_id, u_nome, u_sobrenome, u_email, u_contacto, 6, u_username, u_password, false, false);
			SUtilizador.insertDBUtilizador(u);
			this.servUtilizador.getArUtilizador().add(u);
			

			int s_id = this.servUtilizador.getArUtilizador().size();
			String s_nome = request.getParameter("s_nome");
			String s_contacto = request.getParameter("s_contacto");
			String s_morada = request.getParameter("s_morada");
			String s_localidade = request.getParameter("s_local");
			String s_codigoPostal = request.getParameter("s_cp");
			String s_hora_abertura = request.getParameter("s_ha");
			String s_hora_fecho = request.getParameter("s_hf");
			
			Stand s = new Stand(s_id, s_nome, s_contacto, s_morada, s_localidade, s_codigoPostal, s_hora_abertura, s_hora_fecho, false, false, u.getID());
			SStand.insertDBStand(s);
			this.servStand.getArStand().add(s);
			response.sendRedirect("HMinuraInstall?SuccessInstallation");
			
		}else{
			response.sendRedirect("HWeb");
		}
		
		this.doGet(request, response);
	}

}
