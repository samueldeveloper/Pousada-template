<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="../images/logo3.png" />
	<title>Desocupar Apartamento</title>
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
		                <li class="active">
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
		                                <h4 class="title">..: Sair Apartamento</h4>
		                            </div>
		                            <div class="content">
		                            <form action="">
		                            	<div class="row">
	                            			<div class="col-md-12">
	                                    		<div class="form-group">
	                                        		<label>Escolha o Apartamento para desocupar</label>
	                                        		<select name="aptdesocupar" required="required" class="form-control">
	                                        			<option></option>
	                                        		</select>
		                                    	</div>        
		                                	</div>
                                		</div>
		                                <div class="row">
	                            			<div class="col-md-12">
	                                    		<div class="form-group">
	                                        		<label>Selecione os produtos que foram consumidos</label>
	                                        		<select name="produtosConsumidos" required="required" class="form-control">
	                                        			<option></option>
	                                        		</select>
		                                    	</div>        
		                                	</div>
		                                </div>
		                                <div class="row">
		                                	<div class="col-md-6">
				                                 <div class="form-group">
				                                  	<label>Quantidade</label>
				                                    <input name="quantidade" type="number" class="form-control" required="required" placeholder="Quantidade">
				                                 </div>        
				                           </div>
		                                	<div class="col-md-6">
				                                 <div class="form-group">
				                                  	 <button style="margin-top:5%; " class="btn" type="button">OK</button>
				                                 </div>        
				                           </div>
		                                </div>
                                		<div class="row">
                                			<div class="content table-responsive table-full-width">
				                                <table class="table table-hover table-striped">
				                                    <thead>
				                                        <th>ID</th>
				                                    	<th>Produto</th>
				                                    	<th>Quantidade</th>
				                                    	<th>Valor</th>
				                                    </thead>
				                                    <tbody>
				                                        <tr>
				                                        	<td>1</td>
				                                        	<td>Dakota Rice</td>
				                                        	<td>2</td>
				                                        	<td>50</td>
				                                    	</tr>
				                                    </tbody>
				                                </table>
				                            </div>
                                		</div>
                                		<div class="row">
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
            </div>
        </footer>
        
    </div>  
	</div>
 
	

	<script type="text/javascript" src="../scripts/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="../scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="../scripts/light-bootstrap-dashboard.js"></script>	
</body>
</html>