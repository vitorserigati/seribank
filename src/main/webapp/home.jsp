<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="seribank.models.User" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./reset.css"/>
<link rel="stylesheet" href="./common.css"/>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

<header class="header_common">
	<div class="title">
		<!-- <% 
			User user = (User) request.getAttribute("user");
	
			if(user instanceof User){
				out.print("<h1 class='title'>Bem Vindo: " + user.getName() +"</h1>");
			}else{
			%>
				<script>
					alert("Não Foi encontrado nenhum usuário.")
				</script>
			<%
			}
		%> -->
		<h1>Bem Vindo: Vitor Serigati </h1>
	</div>
</header>
<section class="main_container">
	<div class="main">
		<% if(user instanceof User){
			out.print("<h1> Saldo Atual: <span>" + user.getWallet().getCurrentBalance()+ "</span></h1>");	
		}else{
			out.print("<h1> Saldo Atual: <span> 100.00 </span></h1>");
		}
		%>
		<form class="transfer_form">
			
				<h1>Transferência para:</h1>
				<label for="target">Usuário:</label>
				<select>
					<option>Henrique Serigati</option>
				</select>
				<div class="buttons">
					<input type="submit" value="Transferir"/>
					<input type="reset" value="Cancelar"/>
				</div>
		
			
		</form>
		
	</div>
	<div class="main">
	</div>
</section>
<footer>
	Fim da página
</footer>
	
</body>
</html>