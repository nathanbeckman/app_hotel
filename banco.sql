CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(60) NOT NULL,
  email VARCHAR(60) NOT NULL,
  senha VARCHAR(60) NOT NULL
);

SELECT id, username
FROM usuarios
WHERE username = 'nome_de_usuario' AND senha = 'senha_do_usuario';

