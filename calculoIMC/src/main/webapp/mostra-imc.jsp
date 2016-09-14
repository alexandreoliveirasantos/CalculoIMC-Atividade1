<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado IMC</title>
</head>
<body>
<%
	String peso = request.getParameter("peso");
	String altura = request.getParameter("altura");
	String sexo = request.getParameter("sexo");
	double pesoFinal = Double.parseDouble(peso);
	double  alturaFinal = Double.parseDouble(altura);
	int sexoInteiro = Integer.parseInt(sexo);
	String sexoFinal;
	double imcTotal=0;
	if(sexoInteiro == 1){
		sexoFinal = "Sexo Feminino";
	}
		else if(sexoInteiro == 2){
			sexoFinal = "Sexo Masculino";
		}
		else{
			sexoFinal = "Ocorreu um erro!";
		}

	//Calculo de IMC
	imcTotal = (pesoFinal / java.lang.Math.pow(alturaFinal,2));
	
	out.println("\nSeu IMC é de: " +imcTotal +"\n");
	
	//RESULTADO HOMENS e MULHERES>>
		switch(sexoInteiro){
		case 1: //RELATORIO IMC SEXO FEMININO
			if(imcTotal < 19.1){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA ABAIXO DO PESO!");
			}else if(imcTotal >= 19.1 && imcTotal < 25.8){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA NO PESO NORMAL!");
			}else if(imcTotal >= 25.8 && imcTotal < 27.3){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA MARGINALMENTE ACIMA DO PESO!");
			}else if(imcTotal >= 27.3 && imcTotal < 31.1){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA ACIMA DO PESO IDEAL!");
			}else if(imcTotal > 31.1){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA OBESO!");
			}else{
				out.println("\nNÃO FOI POSSIVEL GERAR O RELATORIO SOBRE O IMC SUBMETIDO!");
			}
			break;
			
		case 2: //RELATORIO IMC SEXO MASCULINO
			if(imcTotal < 20.7){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA ABAIXO DO PESO!");
			}else if(imcTotal >= 20.7 && imcTotal < 26.4){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA NO PESO NORMAL!");
			}else if(imcTotal >= 26.4 && imcTotal < 27.8){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA MARGINALMENTE ACIMA DO PESO!");
			}else if(imcTotal >= 27.8 && imcTotal < 32.3){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA ACIMA DO PESO IDEAL!");
			}else if(imcTotal > 32.3){
				out.println("\nATENÇÃO, VOCÊ SE ENCONTRA OBESO!");
			}else{
				out.println("\nNÃO FOI POSSIVEL GERAR O RELATORIO SOBRE O IMC SUBMETIDO!");
			}
			break;
		
		default:
			out.println("Ocorreu um erro desconhecido durante a geração de relatório de seu IMC!");
			break;
		}
	//RESULTADO MULHERES>>
	
%>

	<!-- O peso é ${param.peso}.
	A altura é ${param.altura}.<br />
	sexo = ${param.sexo}.<br />-->

<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <h3 class="text-center">Índice de Massa Corporal</h3>
      <p>
        Wikipédia:
        O índice de massa corporal (IMC) é uma medida internacional usada para calcular se uma pessoa está no peso ideal. Tal índice foi desenvolvido pelo polímata Lambert Quételet no fim do século XIX. Trata-se de um método fácil e rápido para a avaliação do nível de gordura de cada pessoa, ou seja, é um preditor internacional de obesidade adotado pela Organização Mundial da Saúde (OMS).
      O IMC é determinado pela divisão da massa do indivíduo pelo quadrado de sua altura, em que a massa está em quilogramas e a altura em metros.
          
      </p>
      <ul class="timeline">
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://www.finaerica.com/wp-content/uploads/2014/08/shutterstock_133508447.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Abaixo do Peso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                Para mulheres IMC MENOR QUE 19,1. JÁ PARA O SEXO MASCULINO IMC MENOR QUE 20,7.
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://www.clinicaqualivida.com.br/wp-content/uploads/2013/12/cintura.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>No Peso Normal</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                Para mulheres IMC ENTRE 19,1 - 25,8. JÁ PARA O SEXO MASCULINO IMC ENTRE 20,7 - 26,4.              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://bandnewsfmcuritiba.com/wp-content/uploads/2015/04/obesidade.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Marginalmente acima do peso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                Para mulheres IMC ENTRE 25,8 - 27,3. JÁ PARA O SEXO MASCULINO IMC ENTRE 26,4 - 27,8.              </p>
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://img.r7.com/images/2015/08/13/6tvc3udwsw_8z07wwq6ls_file?dimensions=460x305" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Acima do Peso Ideal</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                Para mulheres IMC ENTRE 27,3 - 31,1. JÁ PARA O SEXO MASCULINO IMC ENTRE 27,8 - 32,3.              </p>
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="http://www.f24.com.br/images/cdn-aws-cbnfoz-2012-novembro/barrigudos-tem-mais-chance.jpg" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Obeso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                Para mulheres IMC ACIMA DE 31,1. JÁ PARA O SEXO MASCULINO IMC ACIMA DE 32,3.              </p>
              </p>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
	<!-- img src="imagens/imcTabela.png" title="Tabela IMC" width="370px" height="240px alt="Tabela IMC" align="left" border="1px"/-->
	<!--
	https://www.youtube.com/watch?v=a1_1TtS6FXQ
	<img src="imagens/imc.png" width="328px" height="250px"/>
	-->
</body>
</html>