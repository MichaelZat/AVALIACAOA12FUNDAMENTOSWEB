<?php
//ler os parametro que estão sendo recebidos via get
$nome = $_GET['nome'];
$email = $_GET['email'];   
$telefone = $_GET['telefone'];    
$observacao = $_GET['observacao'];
$endereco = $_GET['endereco'];
$cidade = $_GET['cidade'];      
$data = $_GET['data'];

//conexao com o banco de dados local
$con = new PDO("mysql:host=localhost;dbname=avaliacaoweb;charset=utf8", "root", ""); 
//inserir um registro na tabela lancamento
$sql = "insert into orcamento (nome, email, telefone, endereco, cidade, data, observacao) 
values (:nome, :email, :telefone, :endereco, :cidade, :data, :observacao)";
$qry = $con->prepare($sql);
//binParam vincula os parametros da query com os valores evitando o sql injection
$qry->bindParam(":nome", $nome, PDO::PARAM_STR);
$qry->bindParam(":email", $email, PDO::PARAM_STR);
$qry->bindParam(":telefone", $telefone, PDO::PARAM_STR);
$qry->bindParam(":endereco", $endereco, PDO::PARAM_STR);
$qry->bindParam(":cidade", $cidade, PDO::PARAM_STR);        
$qry->bindParam(":data", $data, PDO::PARAM_STR);
$qry->bindParam(":observacao", $observacao, PDO::PARAM_STR);
$qry->execute();

// Volta para a página principal
header("Location: index.php");
exit;