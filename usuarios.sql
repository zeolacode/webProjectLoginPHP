-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 14/12/2021 às 14:01
-- Versão do servidor: 10.1.48-MariaDB-0+deb9u1
-- Versão do PHP: 7.0.33-0+deb9u11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_login`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `RA` varchar(7) DEFAULT NULL,
  `Telefone` varchar(30) DEFAULT NULL,
  `Email` varchar(32) DEFAULT NULL,
  `Senha` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `Nome`, `RA`, `Telefone`, `Email`, `Senha`) VALUES
(1, 'ghjghj', 'ghjghjg', 'ghjghjghj', 'ghjghj@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'maria', '1589256', '4497856245', 'maria@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Julia', '1568975', '44997865623', 'julia@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'pedro', '1567856', '4497856245', 'pedro@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'pty', 'ghjghjg', 'ghjghjghj', 'maria1@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'pty', '1589256', '4497856245', 'ghjghjty@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, '1123', '123456', '123', 'uy@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'pty', 'ghjghjg', '4497856245', 'ghjghjfg@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'pty', '123456', '4497856245', 'ghjghssj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 'pty', '123456', '4497856245', 'ghjgh23j@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'pty', '123456', '123456', 'ghjrtghj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(12, 'pty', '123456', '4497856245', 'ghjgpphj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'pty', '123456', '4497856245', 'ghjhghj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(14, 'pty', '123456', '4497856245', 'ghggjghj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(15, 'pty', '123456', '4497856245', 'ghjgllhssj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(16, 'pty', '123456', '123456', 'ghjgjkhj@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(17, 'pedro', '1855649', '44958765', 'zlopes.pedro@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(18, 'tiago', '456789', '4456897856', 'ghjghj56@hotmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
