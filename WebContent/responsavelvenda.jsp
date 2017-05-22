<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList, com.stand.model.ResponsavelVenda" %>
<!DOCTYPE html lang="pt">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Responsável de Stand</title>
</head>
<body>
<h1>Responsável de Venda</h1>
<form action="HResponsavelVenda" method="post">
Nome
<input type="text" name="nome"><br>
Password
<input type="password" name="password"><br>
Contacto
<input type="text" name="contacto"><br>
Contacto Alternativo
<input type="text" name="contactoAlt"><br>
Email
<input type="text" name="email"><br>
Is Deleted
<input type="checkbox" value="true">
Is Online
<input type="checkbox" value="true">
<br><input type="submit" value="Enviar">

int id, String nome, String email, String contacto, String contactoAlt, String password, boolean isDeleted, boolean isOnline
<%
ArrayList arRV = (ArrayList) request.getAttribute("ListaResponsavelVenda");
for(int i=0; i<arRV.size();i++){
	ResponsavelVenda rv = (ResponsavelVenda) arRV.get(i);
	out.append("<br>Nome: "+rv.getNome()+"<br>Email: "+rv.getEmail()+"<br>Contacto: "+rv.getContacto()
	+"<br>Password: "+rv.getPassword()+"<br>isDeleted: "+rv.isIdDeleted()+"<br>isOnline: "+rv.isOnline());
	}
%>
</form>
</body>
</html>