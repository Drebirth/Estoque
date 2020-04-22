<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="signin.css"/>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
  <a class="navbar-brand" href="produto.jsp">Página inicial</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="exclusao.jsp">Excluir produto <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="cadastroProduto.jsp">Cadastro de produto</a>
      </li>
      <li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produtos</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="categoria1.jsp">Categoria Alimentos</a>
          <a class="dropdown-item" href="categoria2.jsp">Categoria Hingiene</a>
          <a class="dropdown-item" href="categoria3.jsp">Categoria Bebidas</a>
        </div>
      </li>
    </ul>
   
  </div>
</nav>

<div class= container>
	<h1>Olá seja bem-vindo!</h1>
	<h3>Categorias disponiveis para cadastro: </h3>
	<h3>1° Alimentos</h3>
	<h3>2° Higiene</h3>
	<h3>3° Bebidas</h3>
	
	  <h2 class="h3 mb-3 font-weight-normal">Digite a categoria, nome,preço e marca do produto</h2>
	
	<form action="http://localhost:8080/Estoque/Controlador" method="post" >
	<div>
 
  <label  class="sr-only">Categoria</label>
  <input type="number"  class="form-control" name="categoria" placeholder="Categoria" required>
  
  <label class="sr-only">Nome</label>
  <input type="text"  class="form-control" name="nome" placeholder="Nome do produto" required>
  
    <label  class="sr-only">Preço</label>
  <input type="text"  class="form-control" name="preco" placeholder="Preço do produto"required>
  
    <label class="sr-only">Marca</label>
  <input type="text"  class="form-control" name="marca" placeholder="Marca do produto" required>
    <br>
    
  </div>
  
  <input type="hidden" name="pag" value="1"/>
  <input type="hidden" name="funcao" value="1"/> 
   
  <button class="btn btn-lg btn-primary btn-block" type="submit">Salvar</button>
  <a href="consulta.jsp" class="btn btn-lg btn-primary btn-block">Consulta</a>
  ${produto}<br>
  ${categoria }

  <p class="mt-5 mb-3 text-muted">&copy; 2020-{{ Daniel Silva }}</p>
	
	</form>
	</div>
</body>
</html>