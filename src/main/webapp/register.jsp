<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./reset.css"/>
<link rel="stylesheet" href="./style.css" />
<title>Cadastre-se</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Cormorant+SC:wght@500;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<link rel="icon" href="./images/seribank.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="./images/seribank.ico" type="image/x-icon"/>
</head>


<body>

	<form method="post" action="register" class="login_form" style="height: 80vh">
	<div style="width: 100%; text-align: left; margin-left: 20px; margin-top: 10px;">
	<a href="/Seribank/login.jsp">Voltar</a></div>
	<div class="login_content_contaier" style="height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
		<div class="title">
			<h1>Cadastro:</h1>
		</div>
			<div class="field" style="margin-top: 40px;">
				<input
				type="text"
				name="name"
				id="name"
				placeholder="Nome"
				required="required"
				/>
			</div>
		
			<div class="field">
				<input
					type="email" 
					name="email" 
					id="email"
					placeholder="E-mail"
					required="required"
				/>
			</div>
		
			<div class="field">
				<input
					type="password"
					name="password"
					id="password"
					placeholder="Password"
					required="required"
				/>
			</div>
		
			<div class="field">
				<input 
					type="text"
					name="cpf"
					id="cpf"
					placeholder="Cpf"
					required="required"
				/>
			</div>
		
			<div class="field">
				<input 
					type="text"
					name="phone"
					id="phone"
					placeholder="Celular"
					required="required"
				/>
			</div>
		
			<div class="field">
				<input
					type="text"
					name="address"
					id="address"
					placeholder="Endereço"
					required="required"
				/>
			</div>
	
			<div class="buttons">
				<input type="submit" value="Cadastrar"/>
				<input type="reset" value="Limpar"/>
			</div>
		</div>
	</form>

</body>
</html>