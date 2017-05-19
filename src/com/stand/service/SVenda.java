package com.stand.service;

import java.util.ArrayList;

import com.stand.model.Cliente;
import com.stand.model.Venda;
import com.stand.model.Vendedor;
import com.stand.model.Viatura;

public class SVenda {

	ArrayList<Venda> arVenda;

	public SVenda() {
		super();
		this.arVenda = new ArrayList<Venda>();
	}

	public ArrayList<Venda> getArVenda() {
		return arVenda;
	}

	public void setArVenda(ArrayList<Venda> arVenda) {
		this.arVenda = arVenda;
	}
	
	public void addVenda(Cliente cli, Vendedor vend, Viatura via){
	  
		Venda arV= new Venda(0, 0, 0, cli, vend, via);
		
		this.arVenda.add(arV);
	}
}