
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Calculo IMC</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- Formulário Gerado com Bootsnipp (www.bootsnipp.com -->
	<form class="form-horizontal" action = "mostra-imc.jsp">
		<fieldset>

			<!-- Form Name -->
			<legend>Cálculo IMC:</legend>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="sexo">Sexo:</label>
				<div class="col-md-4">
					<select id="sexo" name="sexo" class="form-control">
						<option value="1">Feminino</option>
						<option value="2">Masculino</option>
					</select>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="altura">Altura:</label>
				<div class="col-md-4">
					<input id="altura" name="altura" type="text"
						placeholder="Digite sua altura:" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="peso">Peso:</label>
				<div class="col-md-4">
					<input id="peso" name="peso" type="text"
						placeholder="Digite seu Peso:" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="submeter"></label>
				<div class="col-md-4">
					<button id="submeter" name="submeter" class="btn btn-primary">Submeter</button>
				</div>
			</div>

		</fieldset>
	</form>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>