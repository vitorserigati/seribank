<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="seribank.models.User" %>
<%@page import="seribank.ddo.UserDataManager" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./reset.css"/>
<link rel="stylesheet" href="./common.css"/>
<link rel="icon" href="./images/seribank.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="./images/seribank.ico" type="image/x-icon"/>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

<header class="header_common">
	<div class="title">
		 <% 
			User user = (User) request.getAttribute("user");
	
			if(user instanceof User){
				out.print("<h1 class='title'>Bem Vindo: " + user.getName() +"</h1>");
			}
		%>
	</div>
	<div>
		<a href="login" style="margin-right: 15px;">Sair</a>
	</div>
</header>
<section class="main_container">
	<div class="main">
		<% if(user instanceof User){
			out.print("<h1> Saldo Atual: <span>" + user.getWallet().getCurrentBalance()+ "</span></h1>");	
		}
		%>
		<form class="transfer_form" action="transaction" method="post">
			
				<h1>Transferência para:</h1>
				<input name="from_id" id="from_id" type="number" value="<% out.print(user.getIdUser()); %>" hidden="hidden"/>
				<div >
					<div>
						<label for="target">Usuário:</label>
						<%
						UserDataManager dtManager = (UserDataManager) request.getAttribute("dtManager");
							List<User> userList = dtManager.getUsersExceptBy(user.getIdUser());
						%>
					<select name="to_id" id="to_id">
					<%
						for(User u : userList){
							out.println("<option value='" + u.getIdUser()+ "'> " + u.getName() + " </option>");
						}
					%>
					</select>
						
					</div>
				
					<div style="margin-top: 10px;">
						<label for="t_value">Valor da Transferência:</label>
						<input type="number" step=0.1 id="t_value" name="t_value" required="required"/>
					</div>
				</div>
				
				
				<div style="margin-top: 20px;">
					<label for="description">Descrição:</label><br/><br/>
					<textarea rows="3" cols="35" id="description" name="description"></textarea>
				</div>
				
				<div class="buttons">
					<input type="submit" value="Transferir"/>
					<input type="reset" value="Cancelar"/>
				</div>
		
			
		</form>
		
	</div>
	<div class="main" style="display: flex; flex-direction: column; gap: 20px;">
		<div>
			<label for="tfd_value">Valor Transferido: </label>
			<p>${val}</p>
		</div>
		<div>
			<label for ="tfd_desc">Descrição: </label> 
			<p>${desc}</p>			
		</div>
		<div>
			<label for="day">Data: </label>
			<p>${date}</p>
		</div>
	</div>
</section>

	<div class="footer">
		<h4>Serigati's LTDA</h4>
	</div>

	
</body>
</html>