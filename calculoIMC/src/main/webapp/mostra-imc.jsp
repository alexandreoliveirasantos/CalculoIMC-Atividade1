<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado IMC</title>
</head>
<body>
	O peso é ${param.peso}.
	A altura é ${param.altura}.<br />
	sexo = ${param.sexo}.<br />
	
	<%
		out.println("Sexo Masculino");%>
	
	O sexo é:<br /><br /><br />

	<img src="imagens/imcTabela.png" title="Tabela IMC" width="370px" height="240px alt="Tabela IMC" align="left" border="1px"/>
	<!--
	https://www.youtube.com/watch?v=a1_1TtS6FXQ
	<img src="imagens/imc.png" width="328px" height="250px"/>
	-->
</body>
</html>