<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList, com.stand.model.ResponsavelStand" %>
<!DOCTYPE html lang="pt">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Responsável de Stand</title>
</head>
<body>
<h1>Responsável de Stand</h1>
<form action="HResponsavelStand" method="post">
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
ArrayList arRS = (ArrayList) request.getAttribute("ListaResponsavelStand");
for(int i=0; i<arRS.size();i++){
	ResponsavelStand rs = (ResponsavelStand) arRS.get(i);
	out.append("<br>Nome: "+rs.getNome()+"<br>Email: "+rs.getEmail()+"<br>Contacto: "+rs.getContacto()
	+"<br>Password: "+rs.getPassword()+"<br>isDeleted: "+rs.isDeleted()+"<br>isOnline: "+rs.isOnline());
	}
%>
</form>
</body>
</html>