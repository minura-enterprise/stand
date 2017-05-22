package com.stand.service;

import java.util.ArrayList;

import com.stand.model.Viatura;

public class SViatura {
        ArrayList <Viatura> arViatura;

		public SViatura() {
			super();
			this.arViatura = new ArrayList<Viatura>();
		}

		public ArrayList<Viatura> getArViatura() {
			return arViatura;
		}

		public void setArViatura(ArrayList<Viatura> arViatura) {
			this.arViatura = arViatura;
		}
}