<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "reserva_de_hotel"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Recebe os dados do formulário
$username = $_POST['username'];
$password = $_POST['password'];

// Consulta SQL para verificar as credenciais do usuário
$sql = "SELECT * FROM 'clientes' WHERE id=1, nome='nathan', email='nathan@gmail.com', senha=1234, informacoes_de_contato='numero'";

$result = $conn->query($sql);

if ($conn->query($sql) === TRUE) {
    echo "Dados inseridos com sucesso";
} else {
    echo "Erro ao inserir dados: " . $conn->error;
}

$conn->close();

?>