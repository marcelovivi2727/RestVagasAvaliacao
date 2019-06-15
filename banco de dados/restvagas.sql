-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2019 às 08:37
-- Versão do servidor: 10.3.15-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restvagas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagastemp`
--

CREATE TABLE `vagastemp` (
  `id` int(11) NOT NULL,
  `resenha` varchar(5000) NOT NULL,
  `title` varchar(500) NOT NULL,
  `local` varchar(200) NOT NULL,
  `hora_trabalho` varchar(10) NOT NULL,
  `filial` varchar(200) NOT NULL,
  `datein` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vagastemp`
--

INSERT INTO `vagastemp` (`id`, `resenha`, `title`, `local`, `hora_trabalho`, `filial`, `datein`) VALUES
(1, 'Procurando por programadores Delph com experiencia, conhecimento em banco de dados gerais.', 'Programador legado', 'Santa Helena - GO', 'true', 'Amazon - aws', '2019-06-10'),
(2, 'Procura-se programador senior em java e conhecimento com webservice rest', 'Programador senior java', 'Jatai', 'false', 'UniRV', '2019-06-02');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `vagastemp`
--
ALTER TABLE `vagastemp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `vagastemp`
--
ALTER TABLE `vagastemp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
