<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
	
	<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
    <% String nombre = (String)session.getAttribute("nombre"); %>
    <% String rut = (String)session.getAttribute("rut"); %>
    <% String montoColocado = (String)session.getAttribute("montoColocado"); %>
    <% String numeroCuotas = (String)session.getAttribute("numeroCuotas"); %>
    <% String fechaColocacion = (String)session.getAttribute("fechaColocacion"); %>
    <% String valorCuota = (String)session.getAttribute("valorCuota"); %>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">#</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">Clientes</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Créditos</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Permisos
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <li><a class="dropdown-item" href="#">Usuarios</a></li>
	            <li><a class="dropdown-item" href="#">Listado</a></li>
	            <li><a class="dropdown-item" href="#">Permisos</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <!--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">About</a>-->
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
		<div class="col-md-2"></div>
		
		<div class="col-md-8">
		<br><br>
		<h4 class="text-center"><i class="fas fa-credit-card"></i> Detalle de colocación</h4>	
		<br><br>
			
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Nombre</th>
			      <th scope="col">Rut</th>
			      <th scope="col">Monto</th>
			      <th scope="col">Cuota</th>
			      <th scope="col">Fecha</th>
			      <th scope="col">Valor Cuota</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td><%=nombre%></td>
			      <td><%=rut%></td>
			      <td><%=montoColocado%></td>
			      <td><%=numeroCuotas%></td>
			      <td><%=fechaColocacion%></td>
			      <td><%=valorCuota%></td>
			    </tr>
			  </tbody>
			</table>
			<br>
			<a href="creditos.jsp" class="alert-link text-center"><i class="far fa-hand-point-left"></i> Volver</a>
		</div>
				
		<div class="col-md-2"></div>
	</div>
	
	

</body>
</html>