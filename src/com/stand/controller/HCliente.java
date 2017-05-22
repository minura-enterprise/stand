package com.stand.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.Cliente;
import com.stand.service.SCliente;

/**
 * Servlet implementation class HCliente
 */
@WebServlet("/HCliente")
public class HCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private SCliente servCliente;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HCliente() {
        super();
        servCliente= new SCliente(); 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ListaCliente", servCliente.getArCliente());
		request.getRequestDispatcher("cliente.jsp").forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cliente cli= new Cliente(servCliente.getArCliente().size(),request.getParameter("nomecli"),
																   request.getParameter("emailcli"),
																   request.getParameter("contactocli"),
																   request.getParameter("contactoaltcli"), 0, 0);
		servCliente.getArCliente().add(cli);
		
		doGet(request, response);
	}

}
