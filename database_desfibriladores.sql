-- Evandro Júnior
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 19/10/2024 às 00:18
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Estrutura para tabela `desfribiladors`
--

CREATE TABLE `desfribiladors` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `fotoNome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fotoTamanho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fotoTipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `desfribiladors`
--

INSERT INTO `desfribiladors` (`id`, `nome`, `cidade`, `bairro`, `rua`, `numero`, `longitude`, `latitude`, `status`, `fotoNome`, `fotoTamanho`, `fotoTipo`, `createdAt`, `updatedAt`) VALUES
(1, 'ESF Centro', 'Montes Claros', 'Centro', 'Rua Gabriel Passos', '53', '-43.87047340348776', '-16.722384856963323', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '0000-00-00 00:00:00', '2023-09-12 15:29:06'),
(5, 'ESF Alcides Rabelo', 'Montes Claros', 'Alcides Rabelo', 'R. Geovane Fagundes de Souza', '199', '-43.84284344766387', '-16.706938344920705', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 14:51:05', '2023-09-12 14:53:33'),
(6, 'ESF Maracanã', 'Montes Claros', 'Maracanã', 'Av. Brasília', '724', ' -43.86547617793306', '-16.760797455264008', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 14:56:04', '0000-00-00 00:00:00'),
(7, 'ESF Acácias', 'Montes Claros', 'Acácias', 'Al. Quita Guimarães', '105', '-43.82205775931207', '-16.72393210858946', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 14:54:52', '0000-00-00 00:00:00'),
(8, 'ESF Marfim', 'Montes Claros', 'Morada do Parque', 'Professor João Câmara', '111', ' -43.88501041721061', '-16.76140062894282', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 14:57:02', '0000-00-00 00:00:00'),
(9, 'ESF Miralta', 'Montes Claros', 'Zona Rural', 'Capitão Eugênio', 'S/N', ' -43.90475654763429', '-16.53129220397155', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 14:58:36', '0000-00-00 00:00:00'),
(10, 'ESF Alto São João', 'Montes Claros', 'Alto São João', 'R. João Teixeira Bastos', '114', '-43.85688298999357', '-16.713220747592203', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 14:58:48', '0000-00-00 00:00:00'),
(11, 'ESF Monte Carmelo', 'Montes Claros', 'Monte Carmelo II', 'Platina', '22', ' -43.84073573079211', '-16.725150203885043', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 14:59:32', '0000-00-00 00:00:00'),
(12, 'ESF Antônio Pimenta', 'Montes Claros', 'Antônio Pimenta', 'R. Rosa Mendes Ferreira', '336', '-43.85489171453124', '-16.744154914330938', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:02:51', '0000-00-00 00:00:00'),
(13, 'ESF Monte Sião', 'Montes Claros', 'Monte Sião', 'Rua E', '29', ' -43.84009673402383', '-16.671276438328448', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:01:40', '0000-00-00 00:00:00'),
(14, 'ESF Morrinhos', 'Montes Claros', 'Morrinhos', 'Melo Viana', '550', ' -43.863956946841995', '-16.73286794580235', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:04:58', '0000-00-00 00:00:00'),
(15, 'ESF Aparecida do Mundo Novo', 'Montes Claros', 'Aparecida do Mundo Novo', 'R. Montes Claros', 'S/N', '-43.926549180203686', '-16.11521536002897', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:05:26', '0000-00-00 00:00:00'),
(16, 'ESF Nova Esperança', 'Montes Claros', 'Nova Esperança', 'Av. Joaquim de Abreu', '245', ' -43.937767513490996', '-16.5828196589527', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:06:30', '0000-00-00 00:00:00'),
(17, 'ESF Bela Paisagem', 'Montes Claros', 'Santos Reis', 'R. Geraldino Machado', '946', '-43.8724102611586', '-16.696439336454564', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:07:44', '0000-00-00 00:00:00'),
(18, 'ESF Nova Suíça', 'Montes Claros', 'Nova Suíça', 'Itália', '1055', ' -43.809578903331804', '-16.723771033411193', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:07:41', '0000-00-00 00:00:00'),
(19, 'ESF Novo Delfino', 'Montes Claros', 'Novo Delfino', 'Rua 35', '39', ' -43.83039357099879', '-16.738802382141493', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:08:45', '0000-00-00 00:00:00'),
(20, 'ESF Bela Vista', 'Montes Claros', 'Vila Atlantida', 'R. Quincas Souto', '1420', '-43.877786059312555', '-16.702672436811742', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:09:06', '0000-00-00 00:00:00'),
(21, 'ESF Pérola', 'Montes Claros', 'Todos os Santos', 'Santa Lúcia', '471', ' -43.87355983216842', '-16.719131028915378', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:09:45', '0000-00-00 00:00:00'),
(22, 'ESF Planalto', 'Montes Claros', 'Planalto', 'Divíno Espírito Santo', '389', ' -43.83578446751742', '-16.694885980124944', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:10:47', '0000-00-00 00:00:00'),
(23, 'ESF Planalto II', 'Montes Claros', 'Planalto', 'Rua Dois', '150B', ' -43.84029088799025', '-16.69564577669369', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:11:43', '0000-00-00 00:00:00'),
(24, 'ESF Recanto das Águas', 'Montes Claros', 'São Lucas', 'Rua H', '32', ' -43.83055208984213', '-16.670061137284932', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:16:55', '0000-00-00 00:00:00'),
(25, 'ESF Planalto Rural', 'Montes Claros', 'Zona Rural', 'BR 135, KM 384', '', '-43.8680347516512', '-16.89580092030823', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:21:51', '2023-09-12 16:13:47'),
(26, 'ESF Campos Eliseos', 'Montes Claros', 'Jardim Alegre (Facela)', 'Rua F', '590', '', '', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:21:59', '0000-00-00 00:00:00'),
(27, 'ESF Renascença', 'Montes Claros', 'Renascença', 'Av. Bio Lopes', '1272', ' -43.85164009962359', '-16.698506790906904', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:22:31', '0000-00-00 00:00:00'),
(28, 'ESF Canto do Engenho', 'Montes Claros', 'São Geraldo II', 'R. Eurico Leite Fonseca', '181', '-43.882811974651084', '-16.795475704946647', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:23:33', '0000-00-00 00:00:00'),
(29, 'ESF Carmelo', 'Montes Claros', 'Carmelo', 'R. Lagoa Carajás', '500', '-43.82848230341349', '-16.721646786784227', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:25:08', '0000-00-00 00:00:00'),
(30, 'ESF Carmelo II', 'Montes Claros', 'Carmelo', 'R. Lagoa do Abaeté', '101', '43.831545459533565', '-16.720204748641933', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:26:58', '0000-00-00 00:00:00'),
(31, 'ESF Samambaia', 'Montes Claros', 'Vila Nova de Minas', 'Av. Montes Claros', '58', '-43.84593837294826', '-16.77777014942447', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:23:37', '0000-00-00 00:00:00'),
(32, 'ESF Chiquinho Guimarães', 'Montes Claros', 'São Geraldo', 'R. Pirajuí', '118', '-43.87623341882792', '-16.75293044750174', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:30:23', '0000-00-00 00:00:00'),
(33, 'ESF Santa Bárbara', 'Montes Claros', 'Santa Bárbara', 'BR 365, KM 10', '', '', '', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:28:57', '0000-00-00 00:00:00'),
(34, 'ESF Santa Lúcia I', 'Montes Claros', 'Santa Lúcia', 'Olivina', '240', ' -43.810577119933264', '-16.60047222723481', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:32:15', '0000-00-00 00:00:00'),
(35, 'ESF Cidade Cristo Rei', 'Montes Claros', 'Alto São João', 'R. Juiz de Fora', '115', '-43.852073056249026', '-16.71670677542692', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:32:40', '0000-00-00 00:00:00'),
(36, 'ESF Santa Rafaela', 'Montes Claros', 'Santa Rafaela', 'Vicente Silva', '160', ' -43.851088516821875', '-16.766914502570145', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:33:27', '0000-00-00 00:00:00'),
(37, 'ESF Cidade Industrial', 'Montes Claros', 'Cidade Industrial', 'R. Quarenta e Três', '210', '-43.85433173232435', '-16.668997204251085', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:33:53', '0000-00-00 00:00:00'),
(38, 'ESF Cintra', 'Montes Claros', 'Santa Rita I', 'R. Monte Plano', '892', '-43.85263588486187', '-16.732857462253246', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:37:08', '0000-00-00 00:00:00'),
(39, 'ESF Santa Rosa de Lima', 'Montes Claros', 'Santa Rosa de Lima', 'Praça Bom Jesus', 'S/N', ' -43.94464183069067', '-16.29849980837512', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:34:41', '0000-00-00 00:00:00'),
(40, 'ESF Santo Antônio I', 'Montes Claros', 'Delfino Magalhães', 'Av. Olímpio Magalhães', '756', '-43.83871127449513', '-16.74236182158399', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:39:01', '0000-00-00 00:00:00'),
(41, 'ESF Cintra I e II', 'Montes Claros', 'Cintra', 'R. Cônego Marcos', '744', '-43.84773397688929', '-16.73105640228979', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:39:06', '0000-00-00 00:00:00'),
(42, 'ESF Conjunto Vitória', 'Montes Claros', 'Conjunto Vitória II', 'R. Dezessete', '350', '-43.83877774581695', '-16.751718066427514', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:40:57', '0000-00-00 00:00:00'),
(43, 'ESF Delfino Magalhães', 'Montes Claros', 'Delfino Magalhães', 'Av. Neco Delfino', '253', '-43.83834864228815', '-16.736946449292763', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:43:01', '0000-00-00 00:00:00'),
(44, 'ESF Santo Antônio II', 'Montes Claros', 'Santo Antônio II', 'Raimundo Wanderlei', '42', ' -43.843505568744824', '-16.746124673988383', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:40:09', '0000-00-00 00:00:00'),
(45, 'ESF Santos Reis', 'Montes Claros', 'Santos Reis', 'Marcos Ribeiro', '167', '-43.870143974495946', '-16.70082480613001', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:45:13', '0000-00-00 00:00:00'),
(46, 'ESF São Geraldo II', 'Montes Claros', 'São Geraldo II', 'Av. Aparecida Bispo', '30', '-43.884298342922605', '-16.79394277995399', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:45:58', '0000-00-00 00:00:00'),
(47, 'ESF São Judas', 'Montes Claros', 'São Judas', 'Padre Vieira', '620', ' -43.858809876349476', '-16.748972536839318', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:47:41', '0000-00-00 00:00:00'),
(48, 'ESF Tancredo Neves', 'Montes Claros', 'Tancredo Neves', 'Rua Dois', '206', '-43.85159900333236', '-16.69999543932125', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:49:54', '0000-00-00 00:00:00'),
(49, 'ESF Eldorado I', 'Montes Claros', 'Jardim Eldorado', 'R. N', '372 ', '-43.87866020336684', '-16.685507274657624', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:50:18', '0000-00-00 00:00:00'),
(50, 'ESF Topázio', 'Montes Claros', 'Santo Amaro', 'Rua 33', '191', ' -43.85022811511119', '-16.771393927774515', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:50:54', '0000-00-00 00:00:00'),
(51, 'ESF Vargem Grande', 'Montes Claros', 'Joaquim Costa', 'Rua Quinze', '71', ' -43.87143888003366', '-16.753325711145735', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:52:46', '0000-00-00 00:00:00'),
(52, 'ESF Eldorado II', 'Montes Claros', 'Eldorado', 'R. Antônio Moreno', '417', '43.87766239015704', '-16.689682529944434', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:52:00', '0000-00-00 00:00:00'),
(53, 'ESF Vera Cruz', 'Montes Claros', 'Vera Cruz', 'Eulidson Novais', 'S/N', ' -43.847197486508996', '-16.714959250047965', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:53:53', '0000-00-00 00:00:00'),
(54, 'ESF Vila Anália', 'Montes Claros', 'Vila Anália', 'Rua C', '474', '-43.82817210331898', '-16.74324814009564', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:54:55', '0000-00-00 00:00:00'),
(55, 'ESF Esplanada', 'Montes Claros', 'Esplanada', 'R. Cel. Coelho', '195', '-43.84168074273464', '-16.712769205884378', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:55:19', '0000-00-00 00:00:00'),
(56, 'ESF Vila Atlântida', 'Montes Claros', 'Vila Atlântida', 'Rua C', '90', ' -43.88152114751411', '-16.700551843050096', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:55:56', '0000-00-00 00:00:00'),
(57, 'ESF Esplanada III', 'Montes Claros', 'Santa Laura', 'Av. Etelvino Soares Almeida', '1080', '-43.83294215630091', '-16.714436791242033', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:56:37', '0000-00-00 00:00:00'),
(58, 'ESF Independência I', 'Montes Claros', 'Independência', 'R. Espanha', '150', '-43.812260489389445', '-16.71693950424', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:57:40', '0000-00-00 00:00:00'),
(59, 'ESF Independência II', 'Montes Claros', 'Independência', 'Av. Independência', '3260', '-43.82542817673742', '-16.71810055384619', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:58:43', '0000-00-00 00:00:00'),
(60, 'ESF Independência III', 'Montes Claros', 'Independência', 'R. Grenfel', '116', '-43.81705046446819', '-16.71279860651145', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 15:59:56', '0000-00-00 00:00:00'),
(61, 'ESF Jaraguá', 'Montes Claros', 'Jaraguá I', 'Av. Antônio de Freitas', '205', '-43.81984250837598', '-16.686307393371266', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:00:45', '0000-00-00 00:00:00'),
(62, 'ESF Vila Campos', 'Montes Claros', 'Vila Campos', 'Rua G', '246', '-43.86458637850591', '-16.75551394928949', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 15:57:10', '0000-00-00 00:00:00'),
(63, 'ESF Jardim Brasil', 'Montes Claros', 'Jardim Brasil', 'R. Teófilo A. Almeida', '250', '-43.869130921279634', '-16.697967423890187', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:02:09', '0000-00-00 00:00:00'),
(64, 'ESF Vila Oliveira', 'Montes Claros', 'Vila Mauricéia', 'Maria Conceição', '245', ' -43.88396963031417', '-16.71431447317112', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:02:41', '0000-00-00 00:00:00'),
(65, 'ESF Vila Sion', 'Montes Claros', 'Vila Sion', 'José Maria Silva', '131', ' -43.840440340767174', '-16.75972773375336', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:03:38', '0000-00-00 00:00:00'),
(66, 'ESF Jardim Olímpico', 'Montes Claros', 'Delfino Magalhães', 'R. Welington Moreira César Alves', '285', '-43.831001503487535', '-16.742182647418524', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:03:33', '0000-00-00 00:00:00'),
(67, 'ESF Jardim Palmeiras I', 'Montes Claros', 'Jardim Palmeiras', 'R. Natal', '318', '-43.84363850694973', '-16.734744121928113', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:04:42', '0000-00-00 00:00:00'),
(68, 'ESF Vilage do Lago', 'Montes Claros', 'Vilage do Lago II', 'Av. Perimetral', '2546', ' -43.82658336100539', '-16.680143100703802', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:05:11', '0000-00-00 00:00:00'),
(69, 'ESF Violeta', 'Montes Claros', 'Alice Maia', 'Praça Ernestina Ferreira Nunes', '34', '-43.855823289841325', '-16.70183510249211', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:05:46', '0000-00-00 00:00:00'),
(70, 'ESF Jardim Primavera', 'Montes Claros', 'Jardim Primavera', 'R. Três', '905', '-43.80870737465325', '-16.69762684317523', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:05:42', '0000-00-00 00:00:00'),
(71, 'ESF Walquiria Pereira', 'Montes Claros', 'Edgar Pereira', 'Av. Sidney Chaves', '1279', ' -43.85868618984139', '-16.704417110380273', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:07:20', '0000-00-00 00:00:00'),
(72, 'ESF Jardim Santo Inácio', 'Montes Claros', 'Santo Inácio', 'R. Monte Sinai', '116', '-43.854142545816785', '-16.757251624931385', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:07:32', '0000-00-00 00:00:00'),
(73, 'ESF Major Prates', 'Montes Claros', 'Major Prates', 'Av. Olímpio Prates', '773', ' -43.88067659354879', '-16.748965968488218', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:08:16', '0000-00-00 00:00:00'),
(74, 'ESF José Carlos de Lima', 'Montes Claros', 'José Carlos de Lima', 'R. Antônio Franco Amaral', '282', '-43.84740692920245', '-16.753534147258044', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:08:50', '0000-00-00 00:00:00'),
(75, 'ESF José Correa Machado', 'Montes Claros', 'José Correia Machado', 'R. K', '81', '-43.863012303486684', '-16.770667196421506', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:10:17', '0000-00-00 00:00:00'),
(76, 'ESF Mandaquaril', 'Montes Claros', 'Zona Rural', 'Estrada de Juramento', 'KM 20', '-43.75392274437407', '-16.761382716515886', 0, 'sem foto.jpg', NULL, NULL, '2023-09-12 16:09:40', '0000-00-00 00:00:00'),
(77, 'ESF Lourdes', 'Montes Claros', 'Lourdes', 'R. Andradita', '647', '-43.848045703487955', '-16.72505098457576', 0, '3a38d57d-242a-4812-88b1-2a268f933c51.jpg', NULL, NULL, '2023-09-12 16:11:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------


--
-- Estrutura para tabela `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------



--
-- AUTO_INCREMENT de tabela `desfribiladors`
--
ALTER TABLE `desfribiladors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
