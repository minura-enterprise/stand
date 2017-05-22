package com.stand.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.ResponsavelStand;
import com.stand.service.SResponsavelStand;

/**
 * Servlet implementation class HResponsavelStand
 */
@WebServlet("/HResponsavelStand")
public class HResponsavelStand extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private SResponsavelStand servRStand;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HResponsavelStand() {
        super();
        servRStand = new SResponsavelStand();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ListaResponsavelStand", servRStand.getArRStand());
		request.getRequestDispatcher("responsavelstand.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		  int id, String nome, String email, String contacto, String contactoAlt, String password, boolean isDeleted, boolean isOnline
		*/
		ResponsavelStand rs = new ResponsavelStand(servRStand.getArRStand().size(), request.getParameter("nome"),
																					request.getParameter("email"),
																					request.getParameter("contacto"),
																					request.getParameter("contactoAlt"),
																					request.getParameter("password"),
																					Boolean.parseBoolean(request.getParameter("idDeleted")),
																					Boolean.parseBoolean(request.getParameter("isOnline"))
																					); 
		
		
		
		servRStand.getArRStand().add(rs);
		doGet(request, response);
	}

}
