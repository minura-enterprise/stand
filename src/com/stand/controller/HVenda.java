package com.stand.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.Cliente;
import com.stand.model.Vendedor;
import com.stand.model.Viatura;
import com.stand.service.SVenda;



/**
 * Servlet implementation class HVenda
 */
@WebServlet("/HVenda")
public class HVenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private SVenda servVenda;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HVenda() {
        super();
        servVenda= new SVenda();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Cliente cli=
		Viatura via= new Viatura(1, "ford", "fiesta", "migo", 1, 1, "20/02/2017", 200, 50, 1, "preto", 5, 5, 1, true, true, false, false, false);
		Vendedor vend= new Vendedor(1, "intruja", "gangdosladroes@mafia.com", "21", "2121", "preto", true);
				this.servVenda.addVenda(cli, vend, via);
				response.getWriter().append("Nome: "+cli.getNome()+"Nome vendedor: "+vend.getNome()+"Marca Viatura: "+via.getMarca());
				//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
		
		doGet(request, response);
	}


}
