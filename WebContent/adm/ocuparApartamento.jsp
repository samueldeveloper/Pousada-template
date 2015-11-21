<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="../images/logo3.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />	
	<title>Ocupar Apartamento</title>	
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />	
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
		                        <p>NOvo Apartamento</p>
		                   </a>            
		                </li>
		                <li class="active">
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
                        	<div class="card">
                            	<div class="header">
                                	<h4 class="title">..: Ocupar Apartamento</h4>
                                </div>
                            	<div class="content">
                            		<form action="">
                            			<div class="row">
	                            			<div class="col-md-12">
	                                    		<div class="form-group">
	                                        		<label>Escolha o Apartamento</label>
	                                        		<select name="apt" required="required" class="form-control">
	                                        			<option></option>
	                                        		</select>
		                                    	</div>        
		                                	</div>
                                		</div>
                                		<h4 class="title">..: Cadastrar Hóspede</h4>
                                		<div class="row">
			                                <div class="col-md-5" >
			                                     <div class="form-group">
			                                          <label>Nome</label>
			                                          <input class="form-control" name="nome" type="text"  required="required" placeholder="Nome">
			                                     </div>        
			                                </div>
			                                <div class="col-md-4">
			                                	<div class="form-group">
				                                	<label>Cpf</label>
				                                   	<input class="form-control" name="cpf" type="text" required="required" placeholder="Cpf">
			                                	</div>
			                                </div>
			                                <div class="col-md-3">
			                                	<div class="form-group">
				                                	<label>Email</label>
				                                   	<input class="form-control" name="email" type="email" required="required" placeholder="Email">
			                                	</div>
			                                </div>   
			                                                               
                                		</div>
                                		<div class="row">
                                		 	<div class="col-md-6" >
			                                     <div class="form-group">
			                                		<label>Celular</label>
		                                          	<input name="celular" type="text" class="form-control" required="required" placeholder="Celular">
		                                         </div>
			                                </div> 
			                                <div class="col-md-6" >
			                                     <div class="form-group">
		                                          	<label>Telefone Fixo</label>
		                                          	<input name="fixo" type="text" class="form-control" required="required" placeholder="Fixo">
		                                         </div>
			                                </div>                         
                                		</div>
                                		<div class="row">
                                		 	<div class="col-md-3" >
			                                     <div class="form-group">
			                                		<label>CEP</label>
		                                          	<input name="cep" type="text" class="form-control" required="required" placeholder="Cep">
		                                         </div>
			                                </div> 
			                                <div class="col-md-6" >
			                                     <div class="form-group">
		                                          	<label>Rua</label>
		                                          	<input name="rua" type="text" class="form-control" required="required" placeholder="Rua">
		                                         </div>
			                                </div>
			                                <div class="col-md-3" >
			                                     <div class="form-group">
		                                          	<label>Número</label>
		                                          	<input name="numero" type="number" class="form-control" required="required" placeholder="Número">
		                                         </div>
			                                </div>                              
                                		</div>
                                		<div class="row">
                                		 	<div class="col-md-4" >
			                                     <div class="form-group">
			                                		<label>Complemento</label>
		                                          	<input name="complemento" type="text" class="form-control" required="required" placeholder="Complemento">
		                                         </div>
			                                </div> 
			                                <div class="col-md-4" >
			                                     <div class="form-group">
		                                          	<label>Estado</label>
				                                      <select required="required" name="estado" class="form-control">
				                                      	
				                                      </select>
		                                         </div>
			                                </div>
			                                <div class="col-md-4" >
			                                     <div class="form-group">
		                                          	<label>Cidade</label>
				                                      <select required="required" name="cidade" class="form-control">
				                                      	
				                                      </select>
		                                         </div>
			                                </div>
			                                                              
                                		</div>
                                		<div class="row">
                                		 	<div class="col-md-6" >
			                                     <div class="form-group">
			                                		<label>Data Entrada</label>
		                                          	<input name="data_entrada" type="date" class="form-control" required="required" placeholder="Data Entrada">
		                                         </div>
			                                </div> 
			                                <div class="col-md-6" >
			                                     <div class="form-group">
		                                          	<label>Data Saída</label>
				                                    <input name="data_saida" type="date" class="form-control" required="required" placeholder="Data Saída">  
		                                         </div>
			                                </div>
			                            </div>
                                		<div class="row"> 
				                            <div class="col-md-4">
				                                 <div class="form-group">
				                                     <button class="btn" type="submit">Salvar</button>
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
	<script src="../scripts/jquery.maskedinput.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("input[name=cpf]").mask("999.999.999-99");
		$("input[name=cep]").mask("99999-999");
		$("input[name=fixo]").mask("(99)99999-9999");
		$("input[name=celular]").mask("(99)99999-9999");
	})
	</script>
		
</body>
</html>