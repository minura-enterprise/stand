package com.stand.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.service.SController;

/**
 * Servlet implementation class HInstall
 */
@WebServlet("/HInstall")
public class HInstall extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SController servController;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HInstall() {
        super();
        
        this.servController = new SController();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(servController.controllerWeb() == true){
			// Arranque do servLet
			request.getRequestDispatcher("install.jsp").forward(request, response);
		}else{
			response.sendRedirect("dashboard.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		this.doGet(request, response);
	}

}
