<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%> 

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Agenda</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
  <div class="container">
    <h3>Cadastro contato</h3>
    <form action="Inserir" method="post" class="form-control">
      <fieldset>
        <legend>Dados do Contato</legend>
        <div class="row">
          <div class="col-md-6">
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" size="40" class="form-control" required>
          </div>
          <div class="col-md-6">
            <label for="idade">Idade:</label>
            <input type="tel" id="idade" name="idade" size="15" class="form-control" required>
          </div>
        </div>
        <div class="row mt-3">
          <div class="col-12">
            <input type="submit" value="Cadastrar Cliente" class="btn btn-primary">
          </div>
        </div>
      </fieldset>
    </form>
    <table class="table">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>

            <jstl:forEach items="${listaContatos}" var="contato">
                <tr>
                    <td>${contato.nome}</td>
                    <td>${contato.idade}</td>
                   <td>${contato.dataCadastro}</td>
                    <td>
                        <a href="editar?id=${contato.id}" class="btn btn-success">Editar</a>
                        <a href="excluir?id=${contato.id}" onclick="return confirm('Deseja Excluir?')" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </jstl:forEach>

        </tbody>
    </table>
  </div>
</body>
</html>
