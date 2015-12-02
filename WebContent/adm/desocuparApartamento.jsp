<%@page import="model.Produto"%>
<%@page import="dao.DaoProduto"%>
<%@page import="dao.DaoApartamento"%>
<%@page import="model.Apartamento"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<%@page import="dao.DaoApartamento"%>
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
	                                        		<option value="0">Selecione o Apartamento</option>
	                                        			  <%DaoApartamento daoapt = new DaoApartamento(); 
					                                        List<Apartamento> listaApt = daoapt.getListarApartamentosPorStatus("O");
					                                        for(Apartamento ap : listaApt){%>
					                                        <option value="<%=ap.getNumApt()%>"><%=ap.getNumApt()%> - <%=ap.getTipoApt() %> - R$ : <%=ap.getValor_diaria()%></option>
					                                        <%}%>	                                        		
	                                        		</select>
		                                    	</div>        
		                                	</div>
                                		</div>
		                                <div class="row">
	                            			<div class="col-md-12">
	                                    		<div class="form-group">
	                                        		<label>Selecione os produtos que foram consumidos</label>
	                                        		<select name="produtosConsumidos" required="required" class="form-control">
	                                        			<option value="0">Seleciona o Produto consumido</option>
	                                        			<%DaoProduto daoprod = new DaoProduto(); 
					                                        List<Produto> listaproduto = daoprod.getListarProdutos();
					                                        for(Produto p : listaproduto){%>
					                                        <option value="<%=p.getId_produto()%>"><%=p.getNome_produto()%></option>
					                                        
					                                        <%}%>
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
		                                	<div class="col-md-4">
				                                 <div class="form-group">
				                                  	 <button style="margin-top:7%" class="btn" id="btn_adc_prod" type="button">OK</button>
				                                 </div>        
				                           </div>
				                           <div class="col-md-2">
				                                 <div class="form-group">
				                                  	<label>Valor</label>
				                                    <input name="valor_produto" type="" readonly="readonly" class="form-control" required="required" placeholder="Valor">
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
				                                    <tbody class="tbody">
				                                        
				                                    </tbody>
				                                </table>
				                            </div>
                                		</div>
                                		<div class="row">
			                                <div class="col-md-6" >
				                                     <div class="form-group">
			                                          	<label>Data entrada</label>
					                                    <input name="data_entrada" type="text" class="form-control" required="required" placeholder="Data Entrada">  
			                                         </div>
				                            </div>
				                            <div class="col-md-6" >
				                                     <div class="form-group">
			                                          	<label>Data Saída</label>
					                                    <input name="data_saida1" type="text" class="form-control" required="required" placeholder="Data Saída">  
			                                         </div>
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
				                                     <button class="btn" id="btn" type="button">Salvar</button>
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
			
		/*
		* Definir quantidade total do consumo dos itens
		*/
		$('input[name=quantidade]').blur(function(){
			var quantidade = $('input[name=quantidade]').val();
			var valorProduto = $('input[name=valor_produto]').val();
			var valor_final = quantidade  * valorProduto;
			
			$('input[name=valor_produto]').val(valor_final);			
		})
		/*
		* Adicionar itens na tabela
		*/
		$("#btn_adc_prod").click(function(){
			var idProdutoConsumido = $('select[name=produtosConsumidos]').val();
			var textProdutoConsumido = $('select[name=produtosConsumidos] option:selected').text();		
			var quantidade = $('input[name=quantidade]').val();
			var valorProduto = $('input[name=valor_produto]').val();
			
			if(idProdutoConsumido == 0){
				alert("Selecione o item que o hospede consumiu");
				$('select[name=produtosConsumidos]').focus();
			}else if(quantidade == ""){
				alert("Digite a quantidade");
				$('input[name=quantidade]').focus();
			}else{
				$('.tbody').append('<tr><td>' + idProdutoConsumido + '</td><td>'+ textProdutoConsumido +'</td><td>'+ quantidade +'</td><td> '+ valorProduto +'</td></tr>');
				$('select[name=produtosConsumidos]').val(0);
				$('input[name=quantidade]').val("");
				$('input[name=valor_produto]').val("");
				
			}						
		});
		
		/*
		* Mandar para o servlet via ajax
		*/
		$("#btn").click(function(){
			var aptdesocupar = $('select[name=aptdesocupar]').val();
			var data_saida   =  $('input[name=data_saida]').val();
			if(aptdesocupar == 0){
				alert("Selecione um apartamento para desocupar");
				$('select[name=aptdesocupar]').focus();
			}else{
				$.ajax({
					type:"post",
					url :"../DesocuparApartamento",
					data: {					
						num_apt:aptdesocupar,
						data_saida:data_saida
					},
					success: function(result){
						$(".card").append(result);
						setTimeout(function(){$(".resultado").hide("slow")}, 2000)					
					}
				});
			}
		});
		
		/*
		* Pegar cada valor do produto
		*/
		$('select[name=produtosConsumidos]').change(function(){
			$.ajax({
				type:"post",
				url :"../ListarProdutos",
				data: {					
					id:$(this).val()
				},
				success: function(result){
					$('input[name=valor_produto]').val(result);					
				}
			});
		});
		
		/*
		* Pegar data entrada/data saida/valor
		*/
		$('select[name=aptdesocupar]').change(function(){
			var acao = "pegardados";
			$.ajax({
				type:"post",
				url :"../DesocuparApartamento",
				data: {					
					num_apt:$(this).val(),
					acao:acao
				},
				success: function(result){
					alert(result);
					var quebradata = result.split('|');
					$('input[name=data_entrada]').val(quebradata[0]);
					$('input[name=data_saida1]').val(quebradata[1]);
				}
			});
		});
	});		
	</script>
		
</body>
</html>