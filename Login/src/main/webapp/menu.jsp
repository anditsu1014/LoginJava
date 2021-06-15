<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-dark bg-dark"> 
    <div class="container">

        <a href="index.jsp" class="navbar-brand">Home</a>
        <a href="index.jsp" class="navbar-brand">Cerrar sesion</a>

    </div>
</nav>

<div class="card card-body">
            <form action="registrarNotas" method="POST">
                <div class="form-group">
                    <input type="text" name="nombres" class = "form-control"
                    placeholder="Nombres" autofocus>
                </div><br>
                <div class="form-group">
                <input type="text" name="nota1"  class="form-control"
                placeholder= "Nota 1 ">
                </div><br>
                <div class="form-group">
                <input type="text" name="nota2"  class="form-control"
                placeholder= "Nota 2 ">
                </div><br>
                <div class="form-group">
                <input type="text" name="nota3"  class="form-control"
                placeholder= "Nota 3 ">
                </div><br>
                <input type="submit" class= "btn btn-success btn-block" name="save" 
                value= "Guardar">
            </form>
        </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</body>
</html>