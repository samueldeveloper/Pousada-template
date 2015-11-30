<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="daoTipoApartamento" class="dao.DaoTipoApartamento"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="../images/logo3.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width" />
	<title>Cadastrar Apartamento</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link href="../css/light-bootstrap-dashboard.css" rel="stylesheet"/>
	
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
    	<div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">    
    		<div class="sidebar-wrapper">
		         <div class="logo">
		                <a href="home.jsp" class="simple-text">
		                    Painel Pousada
		                </a>
		          </div>
		          <ul class="nav">
		               <li class="active">
		                   <a href="cadastrarApartamento.jsp">
		                        <i class="pe-7s-graph"></i> 
		                        <p>Novo Apartamento</p>
		                   </a>            
		                </li>
		                <li>
		                    <a href="ocuparApartamento.jsp">
		                        <i class="pe-7s-user"></i> 
		                        <p>Ocupar Apartamento</p>
		                    </a>
		                </li> 
		                <li>
		                    <a href="desocuparApartamento.jsp">
		                        <i class="pe-7s-note2"></i> 
		                        <p>Sair Apartamento</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="cadastrarProdutos.jsp">
		                        <i class="pe-7s-news-paper"></i> 
		                        <p>Cadastrar Produtos</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="listarReservas.jsp">
		                        <i class="pe-7s-science"></i> 
		                        <p>Listar Reservas</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="listarApartamentos.jsp">
		                        <i class="pe-7s-map-marker"></i> 
		                        <p>Listar Apartamentos</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="">
		                        <i class="pe-7s-bell"></i> 
		                        <p>Sair</p>
		                    </a>        
		                </li>
		            </ul> 
		    </div>
		</div>
		<div class="main-panel">
       		<div class="content">
            	<div class="container-fluid">    
                	<div class="row">
                    	<div class="col-md-12">
                        	<div class="card" id="card">
                            	<div class="header">
                                	<h4 class="title">..: Novo Apartamento</h4>
                                </div>
                            	<div class="content">
                            		<form method="post" id="cadastroApartamento">
                            		<div class="row">
                            			<div class="col-md-5">
		                                     <div class="form-group">
		                                          <label>Número Apartamento</label>
		                                          <input name="numApt" type="text" class="form-control" required="required" placeholder="Número Apartamento">
		                                      </div>        
		                                </div>
		                                <div class="col-md-3">
		                                    <div class="form-group">
		                                        <label>Tipo Apartamento</label>
		                                        <select id="tipoApt" name="tipoApt" required="required" class="form-control">
		                                        	<option value="0" selected="selected">Selecione uma opção</option>
		                                        	<c:forEach var="tipoapt" items="${daoTipoApartamento.tipoApartamento}">
										             		 <option value="${tipoapt.pkTipoApt}">${tipoapt.tipoApt}</option>        
										            </c:forEach>
		                                        </select>
		                                    </div>        
		                                </div>                               
                            		</div>
                            		<div class="row">
		                                	<div class="col-md-4">
			                                  <div class="form-group">
			                                     <button class="btn" type="button">Cadastrar</button>
			                               	  </div>        
			                           		</div>
		                            </div> 	
                            		</form>
                            	</div>
                        	</div>
                    	</div>
                	</div>                     
            	</div>    
        	</div>
        
        	<footer class="footer">
	            <p class="copyright pull-right">
	                    &copy; 2015 <a href="">Dev</a>
	             </p>
	        </footer>
        </div>
    </div>  
    
	<script type="text/javascript" src="../scripts/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$(".btn").click(function(){
			var numeroapt = $("input[name=numApt]").val();
			var tipoapt   = $("#tipoApt").val();
			if(numeroapt == ""){
				alert("Preencher numero do apartamento");
				$("input[name=numApt]").focus();
			}else if(tipoapt == 0){
				alert("Selecionar Tipo do apartamento");
				$("#tipoApt").focus();
			}else{
				$.ajax({
					type:"post",
					url :"../CadastrarApartamento",
					data: {					
						numeroapt:numeroapt,
						tipoapt:tipoapt
					},
					success: function(result){
						$(".card").append(result);
						setTimeout(function(){$(".resultado").hide("slow")}, 2000)
					}
				});
				$("#cadastroApartamento").get(0).reset();			
			}
		});
	});
		
	
	</script>
	
		
</body>
</html>