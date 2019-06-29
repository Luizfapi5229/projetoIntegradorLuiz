-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Jun-2019 às 12:49
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsd_doces`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin_tb`
--

CREATE TABLE `admin_tb` (
  `id_a` int(5) NOT NULL,
  `nome_a` varchar(255) NOT NULL,
  `email_a` varchar(255) NOT NULL,
  `senha_a` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin_tb`
--

INSERT INTO `admin_tb` (`id_a`, `nome_a`, `email_a`, `senha_a`) VALUES
(9, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(11, 'admin2', 'admin2@admin.com', 'c84258e9c39059a89ab77d846ddab909');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_tb`
--

CREATE TABLE `produtos_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` text NOT NULL,
  `nome_imagem` varchar(255) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_tb`
--

INSERT INTO `produtos_tb` (`id`, `nome`, `preco`, `nome_imagem`, `data_cadastro`, `categoria_id`, `usuario_id`, `status`) VALUES
(1, 'Amoras Show', '10,00', 'morddidas.jpg', '2019-06-22 18:29:35', 2, 3, 0),
(2, 'Beijos FINI', 'R$ 29,88', 'Beijos.jpg', '2019-06-22 18:30:47', 2, 1, 0),
(3, 'chicle FINI', 'R$ 29,88', 'chicle.jpg', '2019-06-22 18:32:03', 1, 1, 0),
(4, 'Mordidas FINI', 'R$ 34,44', 'morddidas.jpg', '2019-06-22 18:32:59', 1, 1, 0),
(6, 'festa', 'R$ 9,99', 'festa.jpg', '2019-06-22 18:34:47', 1, 1, 0),
(82, 'a', '2', 'Beijos.jpg', '2019-06-24 19:13:46', 0, 0, 0),
(86, 'asdsad', '231', 'morddidas.jpg', '2019-06-24 19:24:45', 0, 0, 0),
(87, 'queisso', '10,00', '', '2019-06-24 19:26:19', 0, 0, 0),
(88, 'dasdas', '213', '0000ttt.gif', '2019-06-26 18:00:46', 0, 0, 0),
(89, 'eqwwqeqw', '213', '0000000000000000000000000000000.gif', '2019-06-26 18:01:27', 0, 0, 0),
(90, 'ssdfsd', '12', '0000000000000000000000000000000.gif', '2019-06-28 05:06:14', 0, 0, 0),
(91, 'teste', '19,99', '612af417cb0238f9484ee73fef2f860a_full.gif', '2019-06-28 05:33:15', 0, 0, 0),
(92, 'Tenis Adidas V1', '209,99', 'tenis-adidas-baseline-k-infantil-img.jpg', '2019-06-29 10:30:05', 0, 0, 1),
(93, 'Tenis Adidas XXV', '300,00', 'download3.jpg', '2019-06-29 10:30:52', 0, 0, 1),
(94, 'Adidas Blue', '20,,99', 'adidasblue.jpg', '2019-06-29 10:35:39', 0, 0, 1),
(95, 'Nike v1', '308,99', 'nike1.jpg', '2019-06-29 10:36:17', 0, 0, 1),
(96, 'Nike Air', '500,99', 'nikeair.jpg', '2019-06-29 10:36:53', 0, 0, 1),
(97, 'Nike Air Max', '560,99', 'NIKEAIRMAX.jpg', '2019-06-29 10:37:33', 0, 0, 1),
(98, 'Puma v2', '308,88', 'puma_1.jpg', '2019-06-29 10:38:06', 0, 0, 1),
(99, 'Puma Vol 2', '506,99', 'puma2.jpg', '2019-06-29 10:38:43', 0, 0, 1),
(100, 'Puma fem', '405,77', 'puma_fem.jpg', '2019-06-29 10:39:31', 0, 0, 1),
(101, 'Nike Air Max LW', '308,76', 'nike_air_max_lw.jpg', '2019-06-29 10:40:09', 0, 0, 1),
(102, 'Nike Zebra ', '700,99', 'nike_zebra.jpg', '2019-06-29 10:41:09', 0, 0, 1),
(103, 'Nike Mercurial', '309,78', 'nIKE_MERCURIAL.jpg', '2019-06-29 10:41:41', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_tb`
--

CREATE TABLE `usuarios_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nivel` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_tb`
--

INSERT INTO `usuarios_tb` (`id`, `nome`, `email`, `senha`, `data_cadastro`, `nivel`, `status`) VALUES
(16, 'j', 'j', '363b122c528f54df4a0446b6bab05515', '2019-06-21 22:27:40', 1, 0),
(17, 'j', 'j', '363b122c528f54df4a0446b6bab05515', '2019-06-21 22:27:52', 1, 0),
(18, 'Luiz', 'luiz@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-06-21 22:40:49', 1, 0),
(19, 'savio', 'savio@hotmailo.com', 'f6e794a75c5d51de081dbefa224304f9', '2019-06-21 22:46:37', 1, 0),
(20, 'Luiz', 'luiz@hotmail.com', '202cb962ac59075b964b07152d234b70', '2019-06-21 22:57:25', 1, 0),
(21, 'user', 'user1@user.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-06-21 22:57:58', 1, 0),
(22, 'Luiz', 'luiz@luiz.com', '202cb962ac59075b964b07152d234b70', '2019-06-21 23:00:53', 1, 0),
(23, 'lul', 'lul@lul.com', '202cb962ac59075b964b07152d234b70', '2019-06-22 17:18:06', 1, 0),
(24, '312', '2313', '9b04d152845ec0a378394003c96da594', '2019-06-22 17:23:02', 1, 0),
(25, 'Teste', 'teste@teste.com', '698dc19d489c4e4db73e28a713eab07b', '2019-06-22 18:05:30', 1, 0),
(26, 'Teste', 'teste@teste.com', '698dc19d489c4e4db73e28a713eab07b', '2019-06-22 18:05:38', 1, 0),
(27, 'teste', 'teste@email.com', 'teste1', '2019-06-22 18:06:53', 1, 0),
(28, 'teste1', 'teste@hotmail.com', '698dc19d489c4e4db73e28a713eab07b', '2019-06-22 18:54:13', 1, 0),
(29, 'a', 'a', 'sehloiro', '2019-06-22 18:58:40', 1, 0),
(30, 'teste', 'teste3@hotmail.com', 'teste2', '2019-06-24 16:59:30', 1, 0),
(31, 'sweqw', 'ewqeqw@admin.com', '21232f297a57a5a743894a0e4a801fc3', '2019-06-28 05:26:23', 1, 0),
(32, 'Teste sem coluna', 'coluna@coluna.com', 'dac919be224e0091922e93efd3ad17f7', '2019-06-28 05:32:43', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tb`
--
ALTER TABLE `admin_tb`
  ADD PRIMARY KEY (`id_a`);

--
-- Indexes for table `produtos_tb`
--
ALTER TABLE `produtos_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_tb`
--
ALTER TABLE `usuarios_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tb`
--
ALTER TABLE `admin_tb`
  MODIFY `id_a` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produtos_tb`
--
ALTER TABLE `produtos_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `usuarios_tb`
--
ALTER TABLE `usuarios_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
