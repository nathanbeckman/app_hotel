<?php

$servername = "localhost";
<<<<<<< HEAD
$username = "root";
$password = "";
$dbname = "reserva_de_hotel"; 
=======
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "seu_banco_de_dados"; 
>>>>>>> eaad41ddde6c9b3d27dc1c767d444b3af4bb0428

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Recebe os dados do formulário
$username = $_POST['username'];
$password = $_POST['password'];

// Consulta SQL para verificar as credenciais do usuário
<<<<<<< HEAD
$sql = "SELECT * FROM 'clientes' WHERE id=1, nome='nathan', email='nathan@gmail.com', senha=1234, informacoes_de_contato='numero'";

$result = $conn->query($sql);

if ($conn->query($sql) === TRUE) {
    echo "Dados inseridos com sucesso";
} else {
    echo "Erro ao inserir dados: " . $conn->error;
}

$conn->close();

?>
=======
$sql = "SELECT id, username FROM usuarios WHERE username = '$username' AND senha = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Login bem-sucedido
    session_start();
    $_SESSION['username'] = $username;
    header("Location: painel.php");  // Redireciona para a página do painel após o login
} else {
    // Login falhou
    header("Location: login.html");  // Redireciona de volta para a página de login
}

$conn->close();
?>
>>>>>>> eaad41ddde6c9b3d27dc1c767d444b3af4bb0428
