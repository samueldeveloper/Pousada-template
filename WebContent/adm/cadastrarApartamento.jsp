<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
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
		                <li class="active">
		                    <a href="dashboard.html">
		                        <i class="pe-7s-graph"></i> 
		                        <p>Cadastrar Apartamentos</p>
		                    </a>            
		                </li>
		                <li>
		                    <a href="user.html">
		                        <i class="pe-7s-user"></i> 
		                        <p>Ocupar Apartamentos</p>
		                    </a>
		                </li> 
		                <li>
		                    <a href="table.html">
		                        <i class="pe-7s-note2"></i> 
		                        <p>Desocupar Apartamento</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="typography.html">
		                        <i class="pe-7s-news-paper"></i> 
		                        <p>Cadastrar Produtos</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="icons.html">
		                        <i class="pe-7s-science"></i> 
		                        <p>Listar Reservas</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="maps.html">
		                        <i class="pe-7s-map-marker"></i> 
		                        <p>Listar Apartamentos</p>
		                    </a>        
		                </li>
		                <li>
		                    <a href="notifications.html">
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
                    <div class="col-md-4">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">..: Cadastrar Apartamentos</h4>
                                <p class="category"></p>
                            </div>
                            <div class="content">
                            <form action="">
                            	<div class="col-md-5">
                                     <div class="form-group">
                                          <label>Número Apartamento</label>
                                          <input name="numApt" type="text" class="form-control" required="required" placeholder="Número Apartamento">
                                      </div>        
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Tipo Apartamento</label>
                                        <select name="tipoApt" required="required" class="form-control">
                                        	<option>Luxo</option>
                                        </select>
                                    </div>        
                                </div>
                                <div class="col-md-4">
	                                  <div class="form-group">
	                                      <label>Status</label>
	                                      <select required="required" name="statusApt" class="form-control">
	                                      	<option value="ocupado">Ocupado</option>
	                                      	<option value="desocupado">Desocupado</option>
	                                      </select>
	                                  </div>        
	                           </div>    
	                            <div class="col-md-4">
	                                  <div class="form-group">
	                                     <button class="btn" type="submit">Cadastrar</button>
	                                  </div>        
	                           </div>                                
	                      </form>
                                <div class="footer">
                                    <div class="legend">
                                        <i class="fa fa-circle text-info"></i> Aberto
                                        <i class="fa fa-circle text-danger"></i> Fechado
                                        <i class="fa fa-circle text-warning"></i> Atenção
                                    </div>
                                    <hr>
                                    <div class="stats">
                                        <i class="fa fa-clock-o"></i> Avisos
                                    </div>                                    
                                </div>
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