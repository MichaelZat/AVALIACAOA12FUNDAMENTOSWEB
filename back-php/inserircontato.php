<?php
//ler os parametro que estão sendo recebidos via get
$nome = $_GET['nome'];
$email = $_GET['email'];      
$mensagem = $_GET['mensagem'];

//conexao com o banco de dados local
$con = new PDO("mysql:host=localhost;dbname=avaliacaoweb;charset=utf8", "root", ""); 
//inserir um registro na tabela lancamento
$sql = "insert into contato (nome, email, mensagem) values (:nome, :email, :mensagem)";
$qry = $con->prepare($sql);
//binParam vincula os parametros da query com os valores evitando o sql injection
$qry->bindParam(":nome", $nome, PDO::PARAM_STR);
$qry->bindParam(":email", $email, PDO::PARAM_STR);
$qry->bindParam(":mensagem", $mensagem, PDO::PARAM_STR);
$qry->execute();

// Volta para a página principal
header("Location: index.php");
exit;