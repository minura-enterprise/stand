package com.stand.model;

import java.util.ArrayList;

public class Venda {


	double valor;
	int iva;
	double desconto;
	Cliente cli;
	Vendedor vend;
	Viatura via;
	public Venda(double valor, int iva, double desconto, Cliente cli, Vendedor vend, Viatura via) {
		super();
		this.valor = valor;
		this.iva = iva;
		this.desconto = desconto;
		this.cli = cli;
		this.vend = vend;
		this.via = via;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public int getIva() {
		return iva;
	}
	public void setIva(int iva) {
		this.iva = iva;
	}
	public double getDesconto() {
		return desconto;
	}
	public void setDesconto(double desconto) {
		this.desconto = desconto;
	}
	public Cliente getCli() {
		return cli;
	}
	public void setCli(Cliente cli) {
		this.cli = cli;
	}
	public Vendedor getVend() {
		return vend;
	}
	public void setVend(Vendedor vend) {
		this.vend = vend;
	}
	public Viatura getVia() {
		return via;
	}
	public void setVia(Viatura via) {
		this.via = via;
	}

}