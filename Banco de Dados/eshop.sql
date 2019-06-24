-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Jun-2019 às 06:23
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `descricao`) VALUES
(3, 'Esportes', 'Categoria de esportes, produtos relacionados a esportes.'),
(5, 'InformÃ¡tica', 'Categoria de Informática x% de desconto'),
(7, 'MÃ³veis', 'Decore a sua casa com os nossos mÃ³veis');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` int(11) NOT NULL,
  `complemento` varchar(200) NOT NULL,
  `cep` varchar(200) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `telefone`, `senha`, `endereco`, `numero`, `complemento`, `cep`, `bairro`, `cidade`, `estado`, `isadmin`) VALUES
(1, 'Thiago Sales', 'thiago_salests@hotmail.com', '(22) 91234-5678', '123456', 'Rua da minha casa ', 100, 'Casa 10', '22775-154', 'Jacarepaguá', 'Rio de Janeiro', 'Rio de Janeiro', 1),
(2, 'Rafael Silva', 'rafael065@hotmail.com', '22 91111-0000', '123', '', 0, '', '', '', '', '', 0),
(3, 'Luis Santos', 'luiz2018@hotmail.com', '(21) 90000-1111', '123', 'Rua da minha cas', 33, 'Casa 10', '22775240', 'Barra', 'Rio de janeiro - RJ', 'Rio de janeiro', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_comprador` varchar(200) NOT NULL,
  `id_fatura` int(11) NOT NULL,
  `nome_produto` varchar(200) NOT NULL,
  `data_compra` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `detalhes` text NOT NULL,
  `external_reference` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `id_comprador`, `id_fatura`, `nome_produto`, `data_compra`, `status`, `detalhes`, `external_reference`) VALUES
(11, 'luiz2018@hotmail.com', 12, 'BOLA LIGA DOS CAMPEÃ•ES DA UFA', '22/06/2019', 0, '', 'ID: 26633');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faturas`
--

CREATE TABLE `faturas` (
  `id` int(11) NOT NULL,
  `id_cliente` varchar(200) NOT NULL,
  `preco` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `data` varchar(200) NOT NULL,
  `data_vencimento` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `faturas`
--

INSERT INTO `faturas` (`id`, `id_cliente`, `preco`, `status`, `data`, `data_vencimento`) VALUES
(12, 'luiz2018@hotmail.com', '1,99', 1, '22/06/2019', '27/06/2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `tipo_fatura` int(11) NOT NULL,
  `estoque` int(11) NOT NULL,
  `preco` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `detalhes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `foto`, `tipo_fatura`, `estoque`, `preco`, `categoria`, `detalhes`) VALUES
(7, 'BOLA LIGA DOS CAMPEÃ•ES DA UFA', 'images/uploads/COL-4347-024_zoom1.jpg', 0, 10, '79,99', '6', 'Tamanho: 5<br> \r\nLiga dos campeÃƒÂµes da UEFA <br>\r\netc...'),
(8, 'NOTEBOOK SAMSUNG I5', 'images/uploads/12074006642718.jpg', 1, 6, '1199,99', '7', 'i5 etc...');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `subcategoria` varchar(200) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `id_categoria`, `subcategoria`, `descricao`) VALUES
(6, 3, 'Bolas', 'Bolas Futebol'),
(7, 5, 'Notebooks', 'Melhores Notebooks'),
(8, 7, 'Guarda Roupas', 'Melhores roupeiros para a sua casa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faturas`
--
ALTER TABLE `faturas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faturas`
--
ALTER TABLE `faturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
