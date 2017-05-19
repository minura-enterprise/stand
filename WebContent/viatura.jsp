<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, com.stand.model.Viatura" %>    
<!DOCTYPE html lang="pt>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viatura</title>
</head>
<body>
<h1>Viatura</h1>
<form action="HViatura" method="post">
<!--  (int id, String marca, String modelo, String dono, int segmento, int combustivel, String data_inspec,
		int potencia_cv, int potencia_kw, int tipo_caixa, String cor_veiculo, int nr_portas, int lotacao, int tracao,
		boolean ar_condicionado, boolean direcao_assistida, boolean alarme, boolean airbags, boolean farol_nevoeiro) -->
Marca
<input type="text" name="marca"><br>
Modelo
<input type="text" name="modelo"><br>
Nome Dono
<input type="text" name="dono"><br>
Segmento
<select id="segmento" name="segmento">                     
<option value="0">--Segmento--</option>
<option value="1">Citadinos</option>
<option value="2">Utilitarios/ Sedan</option>
<option value="3">Carrinha/ Combi</option>
<option value="4">Desportivo/ Coupe</option>
<option value="5">Todo-o-terreno/ Pick-up</option>
<option value="6">Cabrios/ Roadster</option>
<option value="7">SUV/ Monovolume</option>
</select><br>
Combustivel
<select id="combustivel" name="combustivel">                     
<option value="0">--Combustivel--</option>
<option value="1">Gasolina</option>
<option value="2">Diesel</option>
<option value="3">GPL</option>
<option value="4">Eletrico</option>
<option value="5">Hibrido(Gasolina)</option>
<option value="6">Hibrido(Diesel)</option>
</select><br>
Data de Inspe&ccedil;ao
<input type="text" name="datainspec"><br>
Potencia (cv)
<input type="text" name="potenciacv"><br>
Potencia (kw)
<input type="text" name="potenciakw"><br>
Tipo de Caixa
<select id="tipocaixa" name="tipocaixa">                      
<option value="0">--Tipo de Caixa--</option>
<option value="1">Manual</option>
<option value="2">Semi-Automatica</option>
<option value="3">Automatica</option>
</select><br>
Cor do Veiculo
<select id="corveiculo" name="corveiculo">                     
<option value="0">--Cor do Veiculo--</option>
<option value="Preto">Preto</option>
<option value="Branco">Branco</option>
<option value="Cinzento Claro">Cinzento Claro</option>
<option value="Cinzento Escuro">Cinzento Escuro</option>
<option value="Bordeaux">Bordeaux</option>
<option value="Vermelho">Vermelho</option>
<option value="Laranja">Laranja</option>
<option value="Amarelo">Amarelo</option>
<option value="Verde Claro">Verde Claro</option>
<option value="Verde Escuro">Verde Escuro</option>
<option value="Azul Claro">Azul Claro</option>
<option value="Azul Escuro">Azul Escuro</option>
<option value="Dourado">Dourado</option>
<option value="Castanho Claro">Castanho Claro</option>
<option value="Castanho Escuro">Castanho Escuro</option>
<option value="Rosa">Rosa</option>
<option value="Roxo">Roxo</option>
</select><br>
Numero de portas
<input type="number" name="nrportas"> <br>
Lotacao
<input type="number" name="lotacao"><br>
Tracao
<select id="tracao" name="tracao">                      
<option value="0">--Tracao--</option>
<option value="1">Dianteira</option>
<option value="2">Integral</option>
<option value="3">Traseira</option>
</select><br>
Ar Condicionado 
<input type="checkbox" name="ac" value="true"><br>
Direcao Assistida
<input type="checkbox" name="direcaoass" value="true"><br>
Alarme
<input type="checkbox" name="alarme" value="true"><br>
Airbag
<input type="checkbox" name="airbag" value="true"><br>
Farois Nevoeiro
<input type="checkbox" name="faroisnev" value="true"><br>
<br><input type="submit" value="Enviar">
<hr>

<%
String seg="", comb="", tip="", trac="";
ArrayList arV = (ArrayList) request.getAttribute("ListaViatura");
for(int i=0; i<arV.size();i++){
	Viatura via= (Viatura) arV.get(i);
	
	
	if(via.getSegmento()==1){
		seg="Citadinos";
	}
	else if(via.getSegmento()==2){
		seg="Utilitarios/ Sedan";
	}
	else if(via.getSegmento()==3){
		seg="Carrinha/ Combi";
	}
	else if(via.getSegmento()==4){
		seg="Desportivo/ Coupe";
	}
	else if(via.getSegmento()==5){
		seg="Todo-o-terreno/ Pick-up";
	}
	else if(via.getSegmento()==6){
		seg="Cabrios/ Roadster";
	}
	else if(via.getSegmento()==7){
		seg="SUV/ Monovolume";
	}
	
	
	if(via.getCombustivel()==1){
		comb="Gasolina";
	}
	else if(via.getCombustivel()==2){
		comb="Diesel";
	}
	else if(via.getCombustivel()==3){
		comb="GPL";
	}
	else if(via.getCombustivel()==4){
		comb="Eletrico";
	}
	else if(via.getCombustivel()==5){
		comb="Hibrido(Gasolina)";
	}
	else if(via.getCombustivel()==6){
		comb="Hibrido(Diesel)";
	}
	
	
	if(via.getTipo_caixa()==1){
		tip="Manual";
	}
	else if(via.getTipo_caixa()==2){
		tip="Semi-Automatica";
	}
	else if(via.getTipo_caixa()==3){
		tip="Automatica";
	}
	
	
	if(via.getTracao()==1){
		trac="Dianteira";
	}
	else if(via.getTracao()==2){
		trac="Integral";
	}
	else if(via.getTracao()==3){
		trac="Traseira";
	}
	
	
	out.append("<br>Marca: "+via.getMarca()+"<br>Modelo: "+via.getModelo()+"<br>Dono: "+via.getDono()+
	"<br>Segmento: "+seg+"<br>Combustível: "+comb+"<br>Data de Inspeção: "+via.getData_inspec()
	+"<br>Potencia(Cv): "+via.getPotencia_cv()+"<br>Potencia(Kw): "+via.getPotencia_kw()+
	"<br>Tipo de Caixa: "+tip+"<br>Cor de Veiculo: "+via.getCor_veiculo()+
	"<br>Numero de Portas: "+via.getNr_portas()+"<br>Lotação: "+via.getLotacao()+"<br>Tração: "+trac
	+"<br>Ar Condicionado: "+via.isAr_condicionado()+"<br>Direcao Assitida: "+via.isDirecao_assistida()
	+"<br>Alarme: "+via.isAlarme()+"<br>Airbag: "+via.isAirbags()+"<br>Faróis de Nevoeiro: "+via.isFarol_nevoeiro()+"<hr>");
}
%>
</form>
</body>
</html>