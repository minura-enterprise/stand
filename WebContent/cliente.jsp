<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, com.stand.model.Cliente" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cliente</title>
</head>
<body>
<form action="HCliente" method="post">
<h1>Cliente</h1>
<br>Nome
<input type="text" name="nomecli">
<br>E-mail
<input type="text" name="emailcli">
<br>Contacto
<input type="text" name="contactocli">
<br>Contacto Alternativo
<input type="text" name="contactoaltcli">
<br><input type="submit" value="Enviar">

<%
ArrayList arC= (ArrayList) request.getAttribute("ListaCliente");
for(int i=0; i<arC.size();i++){
	Cliente cli= (Cliente) arC.get(i);
	
	out.append("<br>Nome: "+cli.getNome()+"<br>E-mail: "+cli.getEmail()+
			"<br>Contacto: "+cli.getContacto()+"<hr>");
}
%>


</form>
</body>
</html>