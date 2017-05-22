package com.stand.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.service.SStand;
import com.stand.service.STipo;
import com.stand.service.SUtilizador;

/**
 * Servlet implementation class HWeb
 */
@WebServlet("/HWeb")
public class HWeb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private STipo servTipo;
	//private SUtilizador servUtilizador;
	private SStand servStand;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HWeb() {
        super();
        
        this.servTipo = new STipo();
        this.servTipo.setArTipo(STipo.getDBTipo());
        
        //this.servUtilizador = new SUtilizador();
        //this.servUtilizador.setArUtilizador(SUtilizador.getDBUtilizador());
        
        this.servStand = new SStand();
        this.servStand.setArStand(SStand.getDBStand());
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		if(this.servStand.getArStand().isEmpty()){
			request.setAttribute("listaTipos", this.servTipo.getArTipo());
			request.getRequestDispatcher("install.jsp").forward(request, response);
		}else{
			request.setAttribute("listaWeb", this.servStand.getArStand());
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//if(request.getParameterMap().containsKey("web_install")){}
		
		this.doGet(request, response);
	}

}
