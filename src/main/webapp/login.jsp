<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./reset.css" />
<link rel="stylesheet" href="./style.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="icon" href="./images/seribank.ico" type="image/x-icon" />
<link rel="shortcut icon" href="./images/seribank.ico"
	type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Cormorant+SC:wght@500;700&family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<title>SeriBank</title>

</head>
<body>
	<%
	boolean showModal = false;
	if (request.getAttribute("showModal") != null) {
		showModal = (boolean) request.getAttribute("showModal");
	}
	String modalMessage = (String) request.getAttribute("modalMessage");
	%>

	<%
	if (showModal) {
		out.println(
		"<div id='myModal' style='position: absolute; top: 20px; padding: 5px; border-radius: 5px; background-color: gray;'>"
				+ modalMessage + "</div>");

	}
	%>
	<script>
			setTimeout(function (){
				var modal = document.getElementById("myModal")
				if(modal){
					modal.style.display = 'none'
				}
			}, 5000)
	</script>
	<form action="login" method="post" class="login_form">
		<div class="login_content_contaier"
			style="height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
			<!-- <div class="title">
			<h1>Seri Bank</h1>
		</div> -->
			<div class="logo" style="margin-bottom: 0;">
				<img src="./images/seribank_logo.png" />
			</div>

			<div class="field" style="margin-top: 40px;">
				<input type="email" name="email" id="email" placeholder="E-mail" />
			</div>

			<div class="field">
				<input type="password" name="password" id="password"
					placeholder="Password" />
			</div>

			<div class="buttons">
				<input type="submit" value="Entrar" class="login_button" /> <input
					type="reset" value="Limpar" class="reset_button" />
			</div>
			<div class="register">
				<a href="/Seribank/register">Cadastre-se</a>
			</div>
		</div>

	</form>



</body>
</html>