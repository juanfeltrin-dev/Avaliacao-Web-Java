<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <title>Cadastro</title>
  </head>
  <body>
	<div class="toast-fixed m-1">
		<div class="toast" id="error" role="alert" aria-live="assertive" aria-atomic="true">
		  	<div class="toast-header">
		  		<span class="badge badge-danger d-block p-2"></span>
			    <strong class="mr-auto">Erro!</strong>
			    <small>agora</small>
			    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
			      <span aria-hidden="true">&times;</span>
			    </button>
		  </div>
		  <div class="toast-body">
		    ${erro != null ? erro : ''}
		  </div>
		</div>
	</div>

	
  	<div id="sidebar" class="sidenav">
	  <a href="#" id="entrar" data-toggle="modal" data-target="#login">Entrar</a>
	  <a href="cadastro.jsp" id="cadastro">Cadastro</a>
	  <a href="index.jsp" id="eventos">Eventos</a>
	</div>
	
	<div class="container my-5">
		<div class="row d-flex justify-content-center">
			<div class="col-md-4">
			  	<div class="text-center">
					<h2>Cadastro</h2>
			  	</div>
				<form id="frmCadastro" action="Cadastro" method="post">
				  <div class="form-group">
				    <label for="txtnome">Nome</label>
				    <input type="text" class="form-control" id="txtnome" name="txtnome">
				  </div>
				  <div class="form-group">
				    <label for="txtusuario">Email</label>
				    <input type="email" class="form-control" id="txtusuario" name="txtusuario" aria-describedby="emailHelp">
				    <small id="emailHelp" class="form-text text-muted">Será seu login para entrar no sistema</small>
				  </div>
				  <div class="form-group">
				    <label for="txtsenha">Senha</label>
				    <input type="password" class="form-control" id="txtsenha" name="txtsenha">
				  </div>
				  <div class="text-right">
				  	<button type="submit" form="frmCadastro" class="btn btn-primary">Cadastrar</button>
				  </div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="loginLabel">Entrar</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="Login" method="post">
			  <div class="form-group">
			    <label for="txtusuario">Email</label>
			    <input type="email" class="form-control" id="txtusuario" name="txtusuario" required>
			  </div>
			  <div class="form-group">
			    <label for="txtsenha">Senha</label>
			    <input type="password" class="form-control" id="txtsenha" name="txtsenha" required>
			  </div>
			  <div class="text-right">
			  	<button type="submit" class="btn btn-primary text-right">Entrar</button>
			  </div>
			</form>
	      </div>
	   </div>
	  </div>
	</div>

  	<script src="js/js.js"></script>
  	<script>
	$(document).ready(function(){
	  ${erro != null ? "$('#error').toast('show')" : ''}
	  ${sucesso != null ? "$('#success').toast('show')" : ''}	  
	});
	</script>
  </body>
</html>