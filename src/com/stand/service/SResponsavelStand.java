package com.stand.service;


import java.util.ArrayList;
import com.stand.model.ResponsavelStand;

public class SResponsavelStand {
	ArrayList<ResponsavelStand> arRStand;

	public SResponsavelStand() {
		super();
		this.arRStand = new ArrayList<ResponsavelStand>();
	}

	public ArrayList<ResponsavelStand> getArRStand() {
		return arRStand;
	}

	public void setArRStand(ArrayList<ResponsavelStand> arRStand) {
		this.arRStand = arRStand;
	}
	
}