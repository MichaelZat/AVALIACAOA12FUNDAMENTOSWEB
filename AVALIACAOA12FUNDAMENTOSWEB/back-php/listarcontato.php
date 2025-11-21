<?php
//conexao com o banco de dados local
$con = new PDO("mysql:host=localhost;dbname=avaliacaoweb;charset=utf8", "root", ""); 


$sql = "select * from contato order by codigo desc";
$qry = $con->prepare($sql);
$qry->execute();
//$nr = $qry->rowCount();
//echo $nr;
$registros = $qry->fetchAll(PDO::FETCH_OBJ);
echo json_encode($registros);