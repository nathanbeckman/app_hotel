-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Nov-2023 às 17:50
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `reserva_de_hotel`
--
DROP DATABASE IF EXISTS `reserva_de_hotel`;
CREATE DATABASE IF NOT EXISTS `reserva_de_hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `reserva_de_hotel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(60) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `informaços_de_contato` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id_avaliaçao` int(60) NOT NULL,
  `classificaçao` int(5) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `data_de_postagem` date DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionarios` int(60) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cargo` varchar(60) DEFAULT NULL,
  `id_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hoteis`
--

CREATE TABLE `hoteis` (
  `id_hotel` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `endereço` varchar(60) DEFAULT NULL,
  `classificaçao` decimal(60,0) DEFAULT NULL,
  `descriçao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quartos`
--

CREATE TABLE `quartos` (
  `id_quarto` int(11) NOT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  `preco` decimal(60,0) DEFAULT NULL,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_hotel_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(60) NOT NULL,
  `data_de_ckeck-in` date DEFAULT NULL,
  `data_de_ckeck-out` date DEFAULT NULL,
  `preco` decimal(60,0) DEFAULT NULL,
  `id_cliente_fk` int(60) DEFAULT NULL,
  `id_quarto_fk` int(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_avaliaçao`),
  ADD KEY `id_hotel_fk1` (`id_hotel`),
  ADD KEY `id_cliente_fk1` (`id_cliente`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionarios`),
  ADD KEY `id_hotel_fk2` (`id_hotel`);

--
-- Índices para tabela `hoteis`
--
ALTER TABLE `hoteis`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Índices para tabela `quartos`
--
ALTER TABLE `quartos`
  ADD PRIMARY KEY (`id_quarto`),
  ADD KEY `id_hotel_fk` (`id_hotel_fk`);

--
-- Índices para tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente_fk` (`id_cliente_fk`),
  ADD KEY `id_quarto_fk` (`id_quarto_fk`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `id_cliente_fk1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_clientes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_hotel_fk1` FOREIGN KEY (`id_hotel`) REFERENCES `hoteis` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `id_hotel_fk2` FOREIGN KEY (`id_hotel`) REFERENCES `hoteis` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `quartos`
--
ALTER TABLE `quartos`
  ADD CONSTRAINT `id_hotel_fk` FOREIGN KEY (`id_hotel_fk`) REFERENCES `hoteis` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `id_cliente_fk` FOREIGN KEY (`id_cliente_fk`) REFERENCES `clientes` (`id_clientes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_quarto_fk` FOREIGN KEY (`id_quarto_fk`) REFERENCES `quartos` (`id_quarto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
