<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource var="bd" driver="org.postgresql.Driver"
url="jdbc:postgresql://localhost:5432/Estoque"
user="postgres"
password="123"/>

<sql:query dataSource="${bd}" var="result">
SELECT * FROM produtos where categoria='3'
</sql:query>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="signin.css"/>
<link rel="stylesheet" href="starter-template.css"/>
<link rel="stylesheet" href="styles.css"/>
<title>Consultar todos os produtos</title>
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
          <a class="dropdown-item" href="categoria2.jsp">Categoria Higiene</a>
          <a class="dropdown-item" href="categoria3.jsp">Categoria Bebidas</a>
        </div>
      </li>
    </ul>
   
  </div>
</nav>

<main role="main" class="container">
<table border="1" id="table" align="center" class="table" >
<thead class ="thead-dark">
	
<tr>
	<th>id</th>
	<th>categoria</th>
	<th>nome</th>
	<th>preco</th>
	<th>marca</th>
</tr>
</thead>
<c:forEach var="row" items="${result.rows}">
<tr>
	<td><c:out value="${row.id}"/></td>
	<td><c:out value="${row.categoria}"/></td>
	<td><c:out value="${row.nome}"/></td>
	<td><c:out value="${row.preco}"></c:out>
	<td><c:out value="${row.marca}"></c:out></td>
</tr>
</c:forEach>
</table>
	

</main><!-- /.container -->
</body>
</html>