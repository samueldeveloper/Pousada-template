<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="../images/logo3.png" />
	<title>Cadastrar Produtos</title>
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
		                <a href="" class="simple-text">
		                    Painel Pousada
		                </a>
		            </div>
		            <ul class="nav">
		                <li>
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
		                        <p>sair Apartamento</p>
		                    </a>        
		                </li>
		                <li class="active">
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
		                        <div class="card">
		                            <div class="header">
		                                <h4 class="title">..: Cadastrar Produtos</h4>
		                            </div>
		                            <div class="content">
		                            <form action="" id="cadastroProduto">
		                            	<div class="row">
		                                	<div class="col-md-6">
				                                 <div class="form-group">
				                                  	<label>Produto</label>
				                                    <input name="produto" type="text" class="form-control" required="required" placeholder="Produto">
				                                 </div>        
				                           </div>
				                           <div class="col-md-6">
				                                 <div class="form-group">
				                                  	<label>Valor Unitário</label>
				                                    <input name="valor_unitario" type="text" class="form-control" required="required" placeholder="Valor Unitário">
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
            </div>
        </footer>
        
    </div>  
	</div>
 
	

	<script type="text/javascript" src="../scripts/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="../scripts/light-bootstrap-dashboard.js"></script>	
	<script type="text/javascript">
	$(document).ready(function(){
		$(".btn").click(function(){
			var produto = $("input[name=produto]").val();
			var valor_unitario = $("input[name=valor_unitario]").val();
			
			if(produto != "" && valor_unitario != ""){
				$.ajax({
					type:"post",
					url :"../CadastrarProduto",
					data: {					
						produto:produto,
						valor_unitario:valor_unitario
					},
					success: function(result){
						$(".card").append(result);
						setTimeout(function(){$(".resultado").hide("slow")}, 2000)
					}
				});
				$("#cadastroProduto").get(0).reset();			
			}
		});
	});
		
	
	</script>
</body>
</html>