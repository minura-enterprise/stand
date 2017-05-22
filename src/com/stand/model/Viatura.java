package com.stand.model;

public class Viatura {
	int id;
	String marca, modelo, dono;
	int segmento, combustivel;
	String data_inspec;
	int potencia_cv, potencia_kw, tipo_caixa;
	String cor_veiculo;
	int nr_portas, lotacao,tracao;
	boolean ar_condicionado, direcao_assistida, alarme, airbags, farol_nevoeiro;
	
	public Viatura(int id, String marca, String modelo, String dono, int segmento, int combustivel, String data_inspec,
			int potencia_cv, int potencia_kw, int tipo_caixa, String cor_veiculo, int nr_portas, int lotacao,
			int tracao, boolean ar_condicionado, boolean direcao_assistida, boolean alarme, boolean airbags,
			boolean farol_nevoeiro) {
		super();
		this.id = id;
		this.marca = marca;
		this.modelo = modelo;
		this.dono = dono;
		this.segmento = segmento;
		this.combustivel = combustivel;
		this.data_inspec = data_inspec;
		this.potencia_cv = potencia_cv;
		this.potencia_kw = potencia_kw;
		this.tipo_caixa = tipo_caixa;
		this.cor_veiculo = cor_veiculo;
		this.nr_portas = nr_portas;
		this.lotacao = lotacao;
		this.tracao = tracao;
		this.ar_condicionado = ar_condicionado;
		this.direcao_assistida = direcao_assistida;
		this.alarme = alarme;
		this.airbags = airbags;
		this.farol_nevoeiro = farol_nevoeiro;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getDono() {
		return dono;
	}

	public void setDono(String dono) {
		this.dono = dono;
	}

	public int getSegmento() {
		return segmento;
	}

	public void setSegmento(int segmento) {
		this.segmento = segmento;
	}

	public int getCombustivel() {
		return combustivel;
	}

	public void setCombustivel(int combustivel) {
		this.combustivel = combustivel;
	}

	public String getData_inspec() {
		return data_inspec;
	}

	public void setData_inspec(String data_inspec) {
		this.data_inspec = data_inspec;
	}

	public int getPotencia_cv() {
		return potencia_cv;
	}

	public void setPotencia_cv(int potencia_cv) {
		this.potencia_cv = potencia_cv;
	}

	public int getPotencia_kw() {
		return potencia_kw;
	}

	public void setPotencia_kw(int potencia_kw) {
		this.potencia_kw = potencia_kw;
	}

	public int getTipo_caixa() {
		return tipo_caixa;
	}

	public void setTipo_caixa(int tipo_caixa) {
		this.tipo_caixa = tipo_caixa;
	}

	public String getCor_veiculo() {
		return cor_veiculo;
	}

	public void setCor_veiculo(String cor_veiculo) {
		this.cor_veiculo = cor_veiculo;
	}

	public int getNr_portas() {
		return nr_portas;
	}

	public void setNr_portas(int nr_portas) {
		this.nr_portas = nr_portas;
	}

	public int getLotacao() {
		return lotacao;
	}

	public void setLotacao(int lotacao) {
		this.lotacao = lotacao;
	}

	public int getTracao() {
		return tracao;
	}

	public void setTracao(int tracao) {
		this.tracao = tracao;
	}

	public boolean isAr_condicionado() {
		return ar_condicionado;
	}

	public void setAr_condicionado(boolean ar_condicionado) {
		this.ar_condicionado = ar_condicionado;
	}

	public boolean isDirecao_assistida() {
		return direcao_assistida;
	}

	public void setDirecao_assistida(boolean direcao_assistida) {
		this.direcao_assistida = direcao_assistida;
	}

	public boolean isAlarme() {
		return alarme;
	}

	public void setAlarme(boolean alarme) {
		this.alarme = alarme;
	}

	public boolean isAirbags() {
		return airbags;
	}

	public void setAirbags(boolean airbags) {
		this.airbags = airbags;
	}

	public boolean isFarol_nevoeiro() {
		return farol_nevoeiro;
	}

	public void setFarol_nevoeiro(boolean farol_nevoeiro) {
		this.farol_nevoeiro = farol_nevoeiro;
	}

	



}