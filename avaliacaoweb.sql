-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/11/2025 às 17:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avaliacaoweb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contato`
--

INSERT INTO `contato` (`codigo`, `nome`, `email`, `mensagem`) VALUES
(1, 'Marcos', 'marcos@gmail.com', 'Ótimos profissionais'),
(3, 'Marcos', 'marcos10@gmail.com', 'Teste'),
(4, 'diana', 'marcos10@gmail.com', 'teste'),
(5, 'diana', 'marcos10@gmail.com', 'teste'),
(6, 'Marcelo', 'marcelo@gmail.com', 'Poderia entrar em contato para conversarmos sobre os serviços?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamento`
--

CREATE TABLE `orcamento` (
  `codigo` int(11) NOT NULL,
  `nome` text NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(500) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `data` date NOT NULL,
  `observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamento`
--

INSERT INTO `orcamento` (`codigo`, `nome`, `telefone`, `email`, `endereco`, `cidade`, `data`, `observacao`) VALUES
(10, 'Marcos', '49923874598', 'marcos@gmail.com                    ', 'rua flores da cunha', 'xanxere-sc', '2025-11-27', 'Solicito orçamento.'),
(13, 'Marcos', '4355756756', 'marcos@gmail.com                    ', 'rua flores da cunha78', 'xanxere-sc', '2025-11-06', 'Solicito orçamento especializado'),
(14, 'Marcos', '4565656568', 'marcos@gmail.com                    ', 'rua flores da cunha89', 'xanxere-sc', '2025-11-27', 'Solicito orçamento.2'),
(15, 'Marcos', '4565656568', 'marcos@gmail.com                    ', 'rua flores da cunha89', 'xanxere-sc', '2025-11-27', 'Solicito orçamento.23'),
(16, 'Marcos', '4565656568', 'marcos@gmail.com                    ', 'rua flores da cunha89', 'xanxere-sc', '2025-11-27', 'Solicito orçamento.24'),
(17, 'Marcelo', '49898458745', 'marcelo@gmail.com                    ', 'Rua xaxim', 'Xhapeco-sc', '2025-11-26', 'Solicito orçamento.3'),
(18, 'Marcelo', '49898458745', 'marcelo@gmail.com                    ', 'Rua xaxim', 'Xhapeco-sc', '2025-11-26', 'Solicito orçamento.32'),
(19, 'Marcelo', '49898458745', 'marcelo@gmail.com                    ', 'Rua xaxim', 'Xhapeco-sc', '2025-11-26', 'Solicito orçamento.33');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `orcamento`
--
ALTER TABLE `orcamento`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `orcamento`
--
ALTER TABLE `orcamento`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
