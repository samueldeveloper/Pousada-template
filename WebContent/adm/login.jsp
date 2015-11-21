<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="icon" type="image/png" href="../images/logo3.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="css/signin.css" rel="stylesheet">
    <style type="text/css">
    body{
		-image:url(../images/backgroundtexture.png);
		background-color:#f9f9f9;
		color:#2d2d2d;
	}
    </style>
</head>
<body>
 <div class="container-fluid">
	   <h2 class="text-center">Pousada Lua Estrela</h2>
	   
	   <div class="row" style="background:red">
	   <div class="col-md-5"></div>
	   <div class="col-md-8">
	   
       <form class="form-signin" method="POST" action="Login">        
        	<div class="row">
        	<div class="col-md-4">
                 <div class="form-group">
                     <label>Usuario</label>
                     <input name="usuario" type="text" id="inputEmail" class="form-control" placeholder="Usuario" required="" autofocus="">
                 </div>        
          	</div>
          	</div>
          	<div class="row">
	          	<div class="col-md-4">
	                 <div class="form-group">
	                     <label>Senha</label>
	                     <input name="senha"   type="password" id="inputPassword" class="form-control" placeholder="Senha" required="">
	                 </div>        
	          	</div>
          	</div> 
        	<div class="row">			
        		<div class="col-md-4">	
        			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
    				<c:if test="${requestScope.mensagem != ''}">  
 						<button type="button" class="btn btn-danger btn-block">${requestScope.mensagem}</button>
 					</c:if>
 				</div>
 			</div> 
      </form>
      </div>
      <div class="col-md-2"></div>
      </div>
     
   </div>    
    <script src="../js/jquery-2.1.1.min.js"></script>   
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	
    	$.ajax({
    		type:'POST'
    	})
    })
    </script>
</body>
</html>
