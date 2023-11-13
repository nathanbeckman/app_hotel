<?php
<<<<<<< HEAD

$servername = "localhost";
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "seu_banco_de_dados"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Recebe os dados do formulário
$username = $_POST['username'];
$password = $_POST['password'];

// Consulta SQL para verificar as credenciais do usuário
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
=======
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
>>>>>>> 295d318e488558d530198e7b51a9a9d092fa9057
