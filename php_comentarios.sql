-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.34-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para php_comentarios
CREATE DATABASE IF NOT EXISTS `php_comentarios` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_comentarios`;

-- Copiando estrutura para tabela php_comentarios.mensagens
CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_msg` datetime DEFAULT NULL,
  `nome` varchar(50) DEFAULT '0',
  `mensagem` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela php_comentarios.mensagens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` (`id`, `data_msg`, `nome`, `mensagem`) VALUES
	(2, '2018-10-25 13:48:25', 'Rodolfo', 'Teste de envio de mensagem para o banco de dados'),
	(3, '2018-10-25 13:51:09', 'Mussum', 'Mussum Ipsum, cacilds vidis litro abertis. In elementis mÃ© pra quem Ã© amistosis quis leo. Aenean aliquam molestie leo, vitae iaculis nisl. Sapien in monti palavris qui num significa nadis i pareci latim. Paisis, filhis, espiritis santis.');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
