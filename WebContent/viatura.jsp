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
Segmento<br>
Combustivel
<select id="combustivel" name="combustivel">                     
<option value="0">--Combustivel--</option>
<option value="1">Diesel</option>
<option value="2">Gasolina</option>
<option value="3">Eletrico</option>
</select><br>
Data de Inspe&ccedil;ao
<input type="text" name="datainspec"><br>
Potencia (kw)
<input type="text" name="potenciakw"><br>
Potencia (cv)
<input type="text" name="potenciacv"><br>
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
<option value="1">Preto</option>
<option value="2">Branco</option>
<option value="3">Cinzento Claro</option>
<option value="4">Cinzento Escuro</option>
<option value="5">Bordeux</option>
<option value="6">Vermelho</option>
<option value="7">Laranja</option>
<option value="8">Amarelo</option>
<option value="9">Verde Claro</option>
<option value="10">Verde Escuro</option>
<option value="11">Azul Claro</option>
<option value="12">Azul Escuro</option>
<option value="13">Dourado</option>
<option value="14">Castanho Claro</option>
<option value="15">Castanho Escuro</option>
<option value="16">Rosa</option>
<option value="17">Roxo</option>
</select><br>
Numero de portas
<input type="number" name="nrportas"> <br>
Lotacao
<input type="number" name="lotacao"><br>
Tracao<br>
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

<%
ArrayList arV = (ArrayList) request.getAttribute("ListaViatura");
for(int i=0; i<arV.size();i++){
	Viatura via= (Viatura) arV.get(i);
	
	out.append("<br>Marca: "+via.getMarca()+"<br>Modelo: "+via.getModelo()+"<br>Dono: "+via.getDono()
	+"<br>Combustivel: "+via.getCombustivel()+"<br>Data de Inspecao: "+via.getData_inspec()
	+"<br>Potencia(Kw): "+via.getPotencia_kw()+"<br>Potencia(Cv): "+via.getPotencia_cv()
	+"<br>Tipo de Caixa: "+via.getTipo_caixa()+"<br>Cor de Veiculo: "+via.getCor_veiculo()+
	"<br>Numero de Portas: "+via.getNr_portas()+"<br>Lotacao: "+via.getLotacao()
	+"<br>Ar Condicionado: "+via.isAr_condicionado()+"<br>Direcao Assitida: "+via.isDirecao_assistida()
	+"<br>Alarme: "+via.isAlarme()+"<br>Airbag: "+via.isAirbags()+"<br>Farois de Nevoeiro: "+via.isFarol_nevoeiro());
}
%>
</form>
</body>
</html>