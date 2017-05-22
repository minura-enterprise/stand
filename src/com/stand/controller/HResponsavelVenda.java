package com.stand.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.ResponsavelVenda;
import com.stand.service.SResponsavelVenda;

/**
 * Servlet implementation class HResponsavelVenda
 */
@WebServlet("/HResponsavelVenda")
public class HResponsavelVenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private SResponsavelVenda servRVenda;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HResponsavelVenda() {
        super();
        servRVenda = new SResponsavelVenda();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ListaResponsavelStand", servRVenda.getArRVenda());
		request.getRequestDispatcher("responsavelvenda.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		  int id, String nome, String email, String contacto, String contactoAlt, String password, boolean isDeleted, boolean isOnline
		*/
		ResponsavelVenda rv = new ResponsavelVenda(servRVenda.getArRVenda().size(), request.getParameter("nome"),
																					request.getParameter("email"),
																					request.getParameter("contacto"),
																					request.getParameter("contactoAlt"),
																					request.getParameter("password"),
																					Boolean.parseBoolean(request.getParameter("idDeleted")),
																					Boolean.parseBoolean(request.getParameter("isOnline"))
																					); 
		
		
		
		servRVenda.getArRVenda().add(rv);
		doGet(request, response);
		doGet(request, response);
	}

}
