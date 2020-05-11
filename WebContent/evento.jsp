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
  <script src="https://kit.fontawesome.com/ee68f21b6c.js" crossorigin="anonymous"></script>

    <title>EVENTOS</title>
  </head>
  <body>
  	<div id="sidebar" class="sidenav">
	  <a href="#" id="entrar"${usuario != null ? '' : ' data-toggle="modal" data-target="#login"'}>${usuario != null ? 'Olá ' .concat(usuario): 'Entrar'}</a>
	  <a href="${usuario != null ? 'Login?logout=logout' : 'cadastro.jsp'}" id="cadastro">${usuario != null ? 'Sair' : 'Cadastro'}</a>
	  <a href="index.jsp" id="eventos">Eventos</a>
	</div>
	
	<div class="evento-body py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<h2>Evento 1</h2>
					<div class="d-flex flex-column bd-highlight my-3">
					  <div class="pb-2 bd-highlight">
						<i class="far fa-calendar-alt"></i> Sáb, 11/11/2020
					</div>
					  <div class="pb-2 bd-highlight">
					<i class="far fa-clock"></i> 20:00
					</div>
					  <div class="pb-2 bd-highlight">
					<i class="fas fa-map-marker-alt"></i> Florianópolis, SC
					</div>
					</div>
				</div>
				<div class="col-md-3">
				  <img src="images/evento1.jpg" class="card-img-top">
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="container my-5">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
				  <div class="card-body">
				  	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla lectus, ultricies et nisl sit amet, commodo molestie purus. Pellentesque enim tortor, scelerisque eu euismod sollicitudin, tempus ut mi. Curabitur lobortis maximus massa, quis vulputate sem. Nulla eu augue et arcu venenatis tincidunt pellentesque nec leo. Aliquam dignissim molestie accumsan. Donec volutpat ac magna eu interdum. Suspendisse non sodales urna. Vivamus interdum risus quis augue egestas bibendum. Suspendisse elementum enim odio, at pellentesque ex mattis non. Sed tristique molestie nulla, eu pulvinar nisl euismod ut. In placerat consequat sodales. Praesent pharetra ultricies tortor, id rhoncus mi euismod eu.

					Duis quis porttitor purus. Vestibulum tellus justo, pulvinar sed tempus quis, sagittis vitae urna. Proin urna purus, sagittis vitae tellus vel, sollicitudin dictum diam. Integer ac vulputate mauris, quis pretium massa. Maecenas laoreet est lectus, ut elementum odio imperdiet sed. Fusce auctor orci sit amet quam sagittis, id auctor sapien ultrices. Maecenas dapibus pharetra neque eget consectetur. Maecenas neque nisi, varius a sollicitudin sit amet, egestas sit amet ex.
					
					Maecenas suscipit viverra lacus. Donec facilisis sed augue non eleifend. Nullam pulvinar est ut sapien iaculis, eget auctor metus maximus. Cras laoreet velit imperdiet ex porttitor venenatis. Vivamus placerat at magna a suscipit. Vestibulum elementum consectetur felis et tristique. Proin tellus nunc, congue ut mi ut, luctus semper ante. Maecenas non nulla a nulla aliquet maximus. Curabitur auctor, nisl sollicitudin eleifend vehicula, risus odio porta turpis, sed gravida sem leo sed odio. Vestibulum viverra ante diam, ut consectetur augue mollis ut. Curabitur nisl risus, volutpat quis eros et, consectetur scelerisque magna. Donec hendrerit ligula ac dolor ultrices, a rhoncus quam tempor. Phasellus enim nulla, fermentum at vestibulum ut, rhoncus eget nulla. Aenean pellentesque sapien a lacus convallis gravida. Quisque eget ipsum nibh. Morbi quam elit, feugiat eu lobortis ac, consectetur ut est.
					
					Maecenas sit amet est quis eros fringilla ultrices. Nulla suscipit commodo lorem, nec ultricies massa luctus quis. Aenean lectus tortor, imperdiet eget magna semper, auctor placerat magna. Etiam feugiat faucibus ex eget bibendum. Ut quis odio felis. Nam euismod sed tortor ut pellentesque. Ut id velit commodo, bibendum odio vel, facilisis nunc. Sed rhoncus orci sed accumsan interdum. Pellentesque in arcu risus. Donec faucibus, magna vitae congue hendrerit, ligula ex pretium quam, feugiat accumsan lectus sem vel arcu. Pellentesque sagittis tempus neque at fermentum. In accumsan massa eu tempor tristique. Praesent at metus purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec fringilla sed nisi in placerat.
					
					Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed et urna eu nisl blandit condimentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi elementum ipsum eu molestie blandit. Nulla ac ante odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque varius, libero eget ornare molestie, risus ipsum elementum sapien, eget ultrices urna neque a nunc. Donec vitae justo in est suscipit commodo. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam tempor, diam eget congue consectetur, metus metus efficitur turpis, gravida hendrerit dolor elit a felis.
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
  </body>
</html>