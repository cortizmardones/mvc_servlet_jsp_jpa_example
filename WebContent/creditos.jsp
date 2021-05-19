<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colocación de créditos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>

	<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
	<% String correo = (String)session.getAttribute("correo"); %>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	      	<li class="nav-item">
	          <a class="nav-link" href="#">Bienvenido: <%=correo%></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">Créditos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Clientes</a>
	        </li>
	      </ul>
	      <form class="d-flex">
	        <input class="form-control me-2" type="search" placeholder="Escriba acá..." aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Buscar</button>
	      </form>
	    </div>
	  </div>
	</nav>
    
    
	<div class="row">
		<div class="col-md-3">
		

		</div>
		
		<div class="col-md-6">
				<form method="post" action="ProcesarCredito">
				<br><br>
				<p class="text-center">Sistema de gestión de créditos</p>
				<hr>
				<label><i class="far fa-address-book"></i> Ingrese su nombre: </label>
				<input type="text" class="form-control" name="nombre" placeholder="" autocomplete="off" required> 
				<br>
				<label><i class="far fa-address-book"></i> Ingrese su rut: </label>
				<input type="text" class="form-control" name="rut" placeholder="" autocomplete="off" required> 
				<br>
				<label><i class="fas fa-dollar-sign"></i> Ingrese el monto solicitado:   (Minimo:$99.999   -   Máximo:$999.999)</label>
				<input type="number" class="form-control" name="monto" placeholder="0.0" min="99999" max="999999" required> 
				<br>
				<label><i class="fas fa-sort-amount-down"></i> Ingrese la cantidad de cuotas: </label>				
				<select class ="form-control" name="cuotas">
					<option>6</option>
					<option>12</option>
					<option>24</option>
					<option>36</option>
					<option>48</option>
					<option>60</option>
					<option>72</option>
				</select>
				<br>
				<button class="btn btn-success form-control"><i class="far fa-plus-square"></i> Ingresar crédito</button>
				<hr>
			</form>
			<a href="index.html" class="alert-link text-center"><i class="far fa-hand-point-left"></i> Salir</a>
			<br><br>
		</div>
		<div class="col-md-3"></div>
	</div>
	
	

</body>
</html>