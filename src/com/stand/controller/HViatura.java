package com.stand.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.stand.model.Viatura;
import com.stand.service.SViatura;



/**
 * Servlet implementation class HViatura
 */
@WebServlet("/HViatura")
public class HViatura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private SViatura servViatura;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HViatura() {
        super();
        servViatura= new SViatura();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("ListaViatura", servViatura.getArViatura());
		request.getRequestDispatcher("viatura.jsp").forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/** (int id, String marca, String modelo, String dono, int segmento, int combustivel, String data_inspec,
		int potencia_cv, int potencia_kw, int tipo_caixa, String cor_veiculo, int nr_portas, int lotacao, int tracao,
		boolean ar_condicionado, boolean direcao_assistida, boolean alarme, boolean airbags, boolean farol_nevoeiro) **/
		Viatura via= new Viatura(servViatura.getArViatura().size(), request.getParameter("marca"),
																	request.getParameter("modelo"),
																	request.getParameter("dono"),
																	Integer.parseInt(request.getParameter("segmento")),
																	Integer.parseInt(request.getParameter("combustivel")),
																	request.getParameter("datainspec"),
																	Integer.parseInt(request.getParameter("potenciacv")),
																	Integer.parseInt(request.getParameter("potenciakw")),
																	Integer.parseInt(request.getParameter("tipocaixa")),
																	request.getParameter("corveiculo"),
																	Integer.parseInt(request.getParameter("nrportas")),
																	Integer.parseInt(request.getParameter("lotacao")),
																	Integer.parseInt(request.getParameter("tracao")),
																	Boolean.parseBoolean(request.getParameter("ac")),
																	Boolean.parseBoolean(request.getParameter("direcaoass")),
																	Boolean.parseBoolean(request.getParameter("alarme")),
																	Boolean.parseBoolean(request.getParameter("airbag")),
																	Boolean.parseBoolean(request.getParameter("faroisnev")));
		servViatura.getArViatura().add(via);
		
		doGet(request, response);
	}

}
