<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo_hotel.css">
    <title>Reserva de Hotel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .reservar{
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        label{
            font-weight: bold;
        }
        input[type="text"], input[type="date"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button{
            background-color: rgb(255, 255, 255);
            color: rgb(0, 0, 0);
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body class="reservas">
<div class="reservar">
    <h1>Reserva de Hotel Online</h1>
    <form id="hotel-reservation-form"> <!--USADO PARA INICIAR UM FORMULÁRIO-->
    <label for="data-de-entrada">DATA DE ENTRADA:</label>
    <input type="date" id="data-de-entrada" required> <!--DATA DE ENTRADA-->
        <label for="data-de-saida">DATA DE SAÍDA:</label>
        <input type="date" id="data-de-saida" required><!--INSERIR DATA DE SAÍDA-->
        <label for="num-rooms">NÚMEROS DE PESSOAS:</label>
        <input type="number" class="qtd-pessoas" min="1" required>
        <button type="submit"><a href="reserva-concluida.html">CONCLUIR RESERVA</button></a> <!--QUARDAR RESERVAS-->
    </form>
</div>
</body>
</html>