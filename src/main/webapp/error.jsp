<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./reset.css"/>
<link rel="stylesheet" href="./common.css"/>
<link rel="icon" href="./images/seribank.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="./images/seribank.ico" type="image/x-icon"/>
<meta charset="UTF-8">
<title>OOps!!</title>
</head>
<body>
	<div class="main_container" style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center;">
		<div class="error_container" style="position: relative;">
			<div style="position: absolute; left: 20px; top: 20px;">
				<a href="/Seribank/login.jsp">Voltar</a>
			</div>
			
			<div>
				<h1 style="font-weight: bold; font-size: 2rem;">Oops!</h1>
				<br/>
				<h3 style="font-size: 1.5rem;"> Algo deu errado!</h3>
			</div>
			
			<div class="image">
				<img src="./images/error.jpg"/>
			</div>
		</div>
		
	</div>

</body>
</html>