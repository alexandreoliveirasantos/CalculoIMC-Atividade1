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

</head>
<body>

<div class="container">
    <!-- Indicators -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="http://www.cruzazulsp.com.br/wp-content/uploads/2015/07/banner-cruz-azul-saude.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3>Saiba mais sobre sua saúde</h3>
                    <p>Através de nossas soluções você poderá obter mais informações sobre sua saúde!</p>
                </div>
            </div>
            <div class="item">
                <img src="http://bradescosaudesponline.com.br/wp-content/uploads/2016/02/BANNER-BRADESCO-SAUDE...-1500x430.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3>Trabalhamos sua Saúde</h3>
                    <p>Trabalhamos algo muito importante para você: Sua saúde!</p>
                </div>
            </div>
            <div class="item">
                <img src="http://www.rodrigooller.com/wp-content/uploads/2013/05/wdw.jpg" alt="Flower">
                <div class="carousel-caption">
                    <h3>Mude sua alimentação</h3>
                    <p>Uma alimentação saudável previne deficiências nutricionais e protege contra doenças infecciosas. </p>
                </div>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
    </div>
</div>

	<form class="form-horizontal" action = "mostra-imc.jsp"> 	<!-- Formulário - Este formulario foi Gerado com Bootsnipp (indicado professor) (www.bootsnipp.com -->
		<fieldset>

			<!-- Formulário Name e Centralizado -->
			<legend align="center">Cálculo IMC: </legend>

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

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins)  -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>