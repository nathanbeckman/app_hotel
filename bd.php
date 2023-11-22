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
$sql = "SELECT * from cliente where 'email'=nathan@gmail.com and 'senha'=1234";

$result = $conn->query($sql);

if ($result === FALSE) {
    die("Erro na consulta: " . $conn->error);
}

while ($row = $result->fetch_assoc()) {
    echo "cliente: " . $row['1, nathan,	nathan@gmail.com, 1234, numero'] .  "<br>";
}
    
$conn->close();
?>

