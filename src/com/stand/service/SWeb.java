package com.stand.service;

import java.util.ArrayList;

import com.stand.model.Web;

public class SWeb {
	private ArrayList<Web> arWeb;

	public SWeb() {
		super();
		this.arWeb = new ArrayList<Web>();
	}

	public ArrayList<Web> getArWeb() {
		return arWeb;
	}

	public void setArWeb(ArrayList<Web> arWeb) {
		this.arWeb = arWeb;
	}
	
	public void addArWeb(Web w){
		w.setID(this.getArWeb().size());
		this.getArWeb().add(w);
	}
	
}
