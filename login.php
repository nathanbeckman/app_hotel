<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tela de Login</title>
    </head>
        <h2>Formulario de Login</h2>
    <form action="bd.php" method="post" class="log">

        <label for="username">Nome de Usuario:</label>
        <input type="text" name="username" required><br><br>

        <label for="email">E-mail:</label>
        <input type="text" name="email" required><br><br>
        
        <label for="password">Senha:</label>
        <input type="password" name="password" required><br><br>

        <a href="login-conc.html"><input type="submit" value="Concluir"></a>
        
    </form>
</html>
