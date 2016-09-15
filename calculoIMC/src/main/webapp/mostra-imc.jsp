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
	
	<%@ page
		import = "java.text.DecimalFormat"
	%> 
	
	<% String peso = request.getParameter("peso"); //Recebimento de parâmetros
	String altura = request.getParameter("altura");
	String sexo = request.getParameter("sexo");
	
	peso = peso.replaceAll(",", "."); //Tratamento caso o usuário insira caracter virgula ao invés de ponto.
	altura = altura.replaceAll(",", ".");
	
	double pesoFinal = Double.parseDouble(peso);
	double  alturaFinal = Double.parseDouble(altura);
	int sexoInteiro = Integer.parseInt(sexo);
	String sexoFinal;
	double imcTotal=0;
	
	if(sexoInteiro == 1){
		sexoFinal = " Sexo Feminino ";
	}
		else if(sexoInteiro == 2){
			sexoFinal = " Sexo Masculino ";
		}
		else{
			sexoFinal = "Ocorreu um erro!";
		}

	//Calculo de IMC
	imcTotal = (pesoFinal / java.lang.Math.pow(alturaFinal,2));
	
    DecimalFormat df = new DecimalFormat("#0.00");  //FOMARTAÇÃO PARA IMPRESSÃO NO FORMA X.XX
    String imcFormat = df.format(imcTotal);
	%>
	</br>
       <!--  <p class="text-muted" align="center"> -->
       <h4 class="text-center"><font color = "red">
        <% out.println(sexoFinal); %> </br></br>
		Seu IMC é: <% out.println(imcFormat); %> </br>
	<%
	//RESULTADO IMC HOMENS e MULHERES>>
		switch(sexoInteiro){
		case 1: //RELATORIO IMC SEXO FEMININO
			if(imcTotal < 19.1){ 
				%> ATENÇÃO! VOCÊ SE ENCONTRA ABAIXO DO PESO! <%
			}else if(imcTotal >= 19.1 && imcTotal < 25.8){
				%> ATENÇÃO, VOCÊ SE ENCONTRA NO PESO NORMAL <%
			}else if(imcTotal >= 25.8 && imcTotal < 27.3){
				%> ATENÇÃO, VOCÊ SE ENCONTRA MARGINALMENTE ACIMA DO PESO! <%
			}else if(imcTotal >= 27.3 && imcTotal < 31.1){
				%> ATENÇÃO, VOCÊ SE ENCONTRA ACIMA DO PESO IDEAL! <%
			}else if(imcTotal > 31.1){
				%> ATENÇÃO, VOCÊ SE ENCONTRA OBESO! <%
			}else{
				%> NÃO FOI POSSIVEL GERAR O RELATORIO SOBRE O IMC SUBMETIDO! <%
			}
			break;
			
		case 2: //RELATORIO IMC SEXO MASCULINO
			if(imcTotal < 20.7){
				%> ATENÇÃO, VOCÊ SE ENCONTRA ABAIXO DO PESO! <%
			}else if(imcTotal >= 20.7 && imcTotal < 26.4){
				%> ATENÇÃO, VOCÊ SE ENCONTRA NO PESO NORMAL! <%
			}else if(imcTotal >= 26.4 && imcTotal < 27.8){
				%> ATENÇÃO, VOCÊ SE ENCONTRA MARGINALMENTE ACIMA DO PESO! <%
			}else if(imcTotal >= 27.8 && imcTotal < 32.3){
				%> ATENÇÃO, VOCÊ SE ENCONTRA ACIMA DO PESO IDEAL! <%
			}else if(imcTotal > 32.3){
				%> ATENÇÃO, VOCÊ SE ENCONTRA OBESO! <%
			}else{
				%> NÃO FOI POSSIVEL GERAR O RELATORIO SOBRE O IMC SUBMETIDO!  <%
			}
			break;
		
		default:
			%> Ocorreu um erro desconhecido durante a geração de relatório de seu IMC!  <%
			break;
		} %>
</h4> </font>
 <!-- </p> -->
            
	<!-- O peso é ${param.peso}.
	A altura é ${param.altura}.<br />
	sexo = ${param.sexo}.<br />-->

<div class="container">
  <div class="row">
    <div class="col-lg-12">
           <div class="timeline-image">
            <img class="img-circle img-responsive" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ8pPhlPnysTr-o2Tv-rv04l7pULUzXOSKhfKnUj4XnWnXjMZBS" alt="" align="right">
       </div>
  
      <h3 class="text-center">Índice de Massa Corporal</h3>
      <p>
        Wikipédia:</br>
        O índice de massa corporal (IMC) é uma medida internacional usada para calcular se uma pessoa está no peso ideal. Tal índice foi desenvolvido pelo polímata Lambert Quételet no fim do século XIX. Trata-se de um método fácil e rápido para a avaliação do nível de gordura de cada pessoa, ou seja, é um preditor internacional de obesidade adotado pela Organização Mundial da Saúde (OMS).
      O IMC é determinado pela divisão da massa do indivíduo pelo quadrado de sua altura, em que a massa está em quilogramas e a altura em metros.
          
      </p>
      <ul class="timeline">
        <li>
          <div class="timeline-image">
            <img class= "img-circle img-responsive" src ="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTBfUuplRmOgKpEhR5hW5DwY28di6ZKAyCNrg9NYqUHWnqnjka2" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Abaixo do Peso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                SEXO FEMININO: IMC MENOR QUE 19,1. JÁ PARA O SEXO MASCULINO: MENOR QUE 20,7.
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">

            <img class= "img-circle img-responsive" src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQKnrgCTZ2ZRuZrA_36Gs_6i7D60-AgLl7Bg2IIudDwBq303VS" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>No Peso Normal</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                SEXO FEMININO: IMC ENTRE 19,1 - 25,8. JÁ PARA O SEXO MASCULINO: IMC ENTRE 20,7 - 26,4.              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjFwi7sgzxKKDH3VWtiEY8JwFbcCc7vqNOIB158XZLTUNWDkrb" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Marginalmente acima do peso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                SEXO FEMININO: IMC ENTRE 25,8 - 27,3. JÁ PARA O SEXO MASCULINO: IMC ENTRE 26,4 - 27,8.              </p>
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li class="timeline-inverted">
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9zyCmKvCFnyVvjs3c0f_9Uhw5tmExFEwv7tZ8W8Y3tMQKi0OBtQ" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Acima do Peso Ideal</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                SEXO FEMININO: IMC ENTRE 27,3 - 31,1. JÁ PARA O SEXO MASCULINO: IMC ENTRE 27,8 - 32,3.              </p>
              </p>
            </div>
          </div>
          <div class="line"></div>
        </li>
        <li>
          <div class="timeline-image">
            <img class="img-circle img-responsive" src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQFiQDK7kRarSZGTwd64G5fCXU74kKIN4lbKysNSdgD4-oiB0qWng" alt="">
          </div>
          <div class="timeline-panel">
            <div class="timeline-heading">
              <h4>Obeso</h4>
              <h4 class="subheading">Homens e Mulheres</h4>
            </div>
            <div class="timeline-body">
              <p class="text-muted">
                SEXO FEMININO: IMC ACIMA DE 31,1. JÁ PARA O SEXO MASCULINO: IMC ACIMA DE 32,3.              </p>
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
				</br>
				</br>
				</br>
	            <div class="timeline-body">
              <p class="text-muted" align="center"> 
                       Desenvolvido por Alexandre Oliveira para a matéria de Programação WEB INF/UFG - 2016-2.              </p>
              
            </div>
</body>
</html>