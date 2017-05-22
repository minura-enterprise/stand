package com.stand.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.Tipo;
import com.stand.service.STipo;

/**
 * Servlet implementation class HTipo
 */
@WebServlet("/HTipo")
public class HTipo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private STipo servTipo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HTipo() {
        super();
        this.servTipo = new STipo();
        this.servTipo.setArTipo(STipo.getDBTipo());
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		if(this.servTipo.getArTipo().isEmpty()){
			response.getWriter().append("Lista Vazia");
		}else{
			for(int i=0; i < this.servTipo.getArTipo().size(); i++){
				Tipo t = this.servTipo.getArTipo().get(i);
				System.out.println("ID: "+ t.getID());
				System.out.println("Nome: "+t.getNome());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		this.doGet(request, response);
	}

}
