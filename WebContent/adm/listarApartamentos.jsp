<%@page import="model.Apartamento"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoApartamento"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="daoApartamento" class="dao.DaoApartamento"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="../images/logo3.png" />
	<title>Listar Apartamentos</title>
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
		                <li class="active">
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
		                                <h4 class="title">..: Listar Apartamentos</h4>
		                            </div>
		                            <div class="content">
		                            	<div class="row">
		                            		<div class="content table-responsive table-full-width">
				                                <table class="table table-hover table-striped">
				                                    <thead>				                                        
				                                    	<th>NUmero Apt</th>
				                                    	<th>Tipo Apartamento</th>
				                                    	<th>Valor Diária</th>
				                                    	<th>Status</th>	
				                                    	<th>Ação</th>				                                    	
				                                    </thead>
				                                    <tbody>
				                                      	  <%
				                                        
				                                        DaoApartamento daoapt = new DaoApartamento(); 
				                                        List<Apartamento> listaApt = daoapt.getListarApartamentos();
				                                        for(Apartamento ap : listaApt){
				                                        %>
				                                       		
				                                        <tr>
				                                        		<td><%=ap.getNumApt()%></td>
					                                        	<td><%=ap.getTipoApt() %></td>
					                                        	<td>R$ : <%=ap.getValor_diaria()%></td>
					                                        	<td><%=ap.getStatus()%></td>
					                                        	<td><a href="#"><i class="pe-7s-close"></i></a> </td>
				                                        					         
				                                        					                                        	
				                                    	</tr>
				                                    	<%} %>
				                                    </tbody>
				                                </table>
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