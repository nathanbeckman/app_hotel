<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "reserva_de_hotel";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $database);

// Verificando a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

echo "Conexão bem-sucedida!";

// Você pode executar consultas, inserções, atualizações, etc., aqui usando $conn

// Por fim, não esqueça de fechar a conexão quando terminar
$conn->close();
?>
