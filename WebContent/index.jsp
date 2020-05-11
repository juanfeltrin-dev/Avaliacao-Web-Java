<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <title>EVENTOS</title>
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

	<div class="toast-fixed m-1">
		<div class="toast" id="success" role="alert" aria-live="assertive" aria-atomic="true">
		  	<div class="toast-header">
		  		<span class="badge badge-success d-block p-2 mr-2"></span>
			    <strong class="mr-auto">Sucesso!</strong>
			    <small>agora</small>
			    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
			      <span aria-hidden="true">&times;</span>
			    </button>
		  </div>
		  <div class="toast-body">
		    ${sucesso != null ? sucesso : ''}
		  </div>
		</div>
	</div>
	
  	<div id="sidebar" class="sidenav">
	  <a href="#" id="entrar"${usuario != null ? '' : ' data-toggle="modal" data-target="#login"'}>${usuario != null ? 'Olá ' .concat(usuario): 'Entrar'}</a>
	  <a href="${usuario != null ? 'Login?logout=logout' : 'cadastro.jsp'}" id="cadastro">${usuario != null ? 'Sair' : 'Cadastro'}</a>
	  <a href="index.jsp" id="eventos">Eventos</a>
	</div>
	
	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="images/banner1.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="images/banner2.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="https://via.placeholder.com/1366x400?text=EVENTO+03" class="d-block w-100" alt="...">
	    </div>
	  </div>
	  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	
	<div class="container d-flex justify-content-center my-5">
		<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card">
				  <img src="images/evento1.jpg" class="card-img-top" alt="evento1">
				  <div class="card-body">
				    <a${usuario != null ? ' href="evento.jsp"' : ' href="#" data-toggle="modal" data-target="#login"'}><h5 class="card-title text-uppercase">Evento 1</h5></a>
				    <small class="form-text">Sáb, 11/11/2020</small>
				    <small class="form-text">Florianópolis, SC</small>
				  </div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card">
				  <img src="images/evento2.jpg" class="card-img-top" alt="banner2">
				  <div class="card-body">
				    <a${usuario != null ? ' href="evento.jsp"' : ' href="#" data-toggle="modal" data-target="#login"'}><h5 class="card-title text-uppercase">Evento 2</h5></a>
				    <small class="form-text">Sáb, 11/11/2020</small>
				    <small class="form-text">Florianópolis, SC</small>
				  </div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card">
				  <img src="https://via.placeholder.com/389x224" class="card-img-top" alt="...">
				  <div class="card-body">
				    <a${usuario != null ? ' href="evento.jsp"' : ' href="#" data-toggle="modal" data-target="#login"'}><h5 class="card-title text-uppercase">Evento 3</h5></a>
				    <small class="form-text">Sáb, 11/11/2020</small>
				    <small class="form-text">Florianópolis, SC</small>
				  </div>
				</div>
			</div>

			<div class="col-md-4 mb-4">
				<div class="card">
				  <img src="https://via.placeholder.com/389x224" class="card-img-top" alt="...">
				  <div class="card-body">
				    <a${usuario != null ? ' href="evento.jsp"' : ' href="#" data-toggle="modal" data-target="#login"'}><h5 class="card-title text-uppercase">Evento 4</h5></a>
				    <small class="form-text">Sáb, 11/11/2020</small>
				    <small class="form-text">Florianópolis, SC</small>
				  </div>
				</div>
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