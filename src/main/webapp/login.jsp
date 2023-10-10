<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./reset.css"/>
<link rel="stylesheet" href="./style.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Cormorant+SC:wght@500;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<title>SeriBank</title>
</head>
<body>
	
	<form action="login" method="post" class="login_form">
	<div class="login_content_contaier" style="height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
		<div class="title">
			<h1>Seri Bank</h1>
		</div>
		
		<div class="field" style="margin-top: 40px;">
			<input
				type="email" 
				name="email" 
				id="email"
				placeholder="E-mail"
			/>
		</div>
	
		<div class="field">
			<input 
				type="password" 
				name="password" 
				id="password"
				placeholder="Password"
			/>
		</div>

		<div class="buttons">
			<input type="submit" value="Entrar" class="login_button"/>
			<input type="reset" value="Limpar" class="reset_button"/>
		</div>
		<div class="register">
			<a href="/Seribank/register">Cadastre-se</a>
		</div>
	</div>
		
	</form>
	
	
	
</body>
</html>