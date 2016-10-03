-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for sms.log
CREATE DATABASE IF NOT EXISTS `sms.log` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sms.log`;


-- Dumping structure for table sms.log.error
CREATE TABLE IF NOT EXISTS `error` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `groupName` varchar(50) DEFAULT NULL,
  `permanent` tinyint(4) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms.log.error: ~5 rows (approximately)
/*!40000 ALTER TABLE `error` DISABLE KEYS */;
INSERT INTO `error` (`id`, `groupId`, `groupName`, `permanent`, `name`, `description`) VALUES
	(0, 0, 'OK', 0, 'NO_ERROR', 'No Error'),
	(1, 1, 'HANDSET_ERRORS', 1, 'EC_UNKNOWN_SUBSCRIBER', 'Unknown Subscriber'),
	(27, 1, 'HANDSET_ERRORS', 0, 'EC_ABSENT_SUBSCRIBER', 'Absent Subscriber'),
	(256, 1, 'HANDSET_ERRORS', 0, 'EC_SM_DF_MEMORYCAPACITYEXCEEDED', 'SM DF Memory Capacity Exceeded'),
	(1157, 1, 'HANDSET_ERRORS', 0, 'EC_NNR_MTPFAILURE', 'MTP Failure');
/*!40000 ALTER TABLE `error` ENABLE KEYS */;


-- Dumping structure for table sms.log.mccmnc
CREATE TABLE IF NOT EXISTS `mccmnc` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms.log.mccmnc: ~0 rows (approximately)
/*!40000 ALTER TABLE `mccmnc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mccmnc` ENABLE KEYS */;


-- Dumping structure for table sms.log.smslog
CREATE TABLE IF NOT EXISTS `smslog` (
  `messageId` varchar(50) NOT NULL,
  `mccMnc` varchar(50) NOT NULL,
  `bulkId` varchar(50) DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `to` varchar(50) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `sentAt` timestamp NULL DEFAULT NULL,
  `pricePerLookup` decimal(10,0) DEFAULT NULL,
  `pricePerMessage` decimal(10,0) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `errorId` int(11) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms.log.smslog: ~68 rows (approximately)
/*!40000 ALTER TABLE `smslog` DISABLE KEYS */;
INSERT INTO `smslog` (`messageId`, `mccMnc`, `bulkId`, `from`, `to`, `text`, `sentAt`, `pricePerLookup`, `pricePerMessage`, `currency`, `errorId`, `statusId`, `created`, `modified`) VALUES
	('116100309562956655', '45606', NULL, 'AEON SPB', '85586493334', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 16:56:29', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('116100310122087334', '45601', NULL, 'AEON SPB', '85512600273', 'AEON Installment\nApproval Result\n\nC N: YOEM NARITH\nID: 010278526\nAgreement No: 103-00025006-4\n\nThank you', '2016-10-03 17:12:20', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:03'),
	('116100310125777767', '45601', NULL, 'AEON SPB', '85578494590', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090496-5\nPls keep this number\nThank you\n', '2016-10-03 17:12:57', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:02'),
	('116100310594520886', '45601', NULL, 'AEON SPB', '85517777071', 'AEON Credit Card\n        Your application has been approved.\n        We will send you another SMS once your card is available.\n        Thank you.\n        ', '2016-10-03 17:59:45', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:02', '2016-10-03 21:26:01'),
	('126100309163004699', '45601', NULL, 'AEON SPB', '85512360727', 'AEON Installment\nApproval Result\n\nC N: HUN PISETH\nID: 010651472\nAgreement No: 101-00090491-9\n\nThank you', '2016-10-03 16:16:30', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('126100309164938563', '45601', NULL, 'AEON SPB', '85512801906', 'AEON Installment\nApproval Result\n\nC N: EIM VANVIREAK\nID: 011148062\nAgreement No: 101-00090492-6\n\nThank you', '2016-10-03 16:16:49', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('126100309172879891', '45601', NULL, 'AEON SPB', '85512793794', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 103-00025005-7\nPls keep this number\nThank you\n', '2016-10-03 16:17:28', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('126100309570591424', '45601', NULL, 'AEON SPB', '85512360727', 'AEON Installment\nApproval Result\n\nC N: OUM BUMTHOEURN\nID: 011080624\nAgreement No: 101-00090493-3\n\nThank you', '2016-10-03 16:57:05', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('136100303174567900', '45606', NULL, 'AEON SPB', '85515215656', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090487-6\nPls keep this number\nThank you\n', '2016-10-03 10:17:45', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('136100309570485771', '45601', NULL, 'AEON SPB', '85512868326', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090493-3\nPls keep this number\nThank you\n', '2016-10-03 16:57:04', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('136100310114150554', '45606', NULL, 'AEON SPB', '85598282789', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090494-1\nPls keep this number\nThank you\n', '2016-10-03 17:11:41', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('136100310114352942', '45601', NULL, 'AEON SPB', '85595333754', 'AEON Installment\nApproval Result\n\nC N: KEO KUNTHEA\nID: 020877642\nAgreement No: 101-00090494-1\n\nThank you', '2016-10-03 17:11:43', NULL, 0, 'USD', 27, 3, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('136100310290163544', '45608', NULL, 'AEON SPB', '855976248005', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 17:29:01', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:02'),
	('146100309082044171', '45601', NULL, 'AEON SPB', '85577522922', 'AEON Credit Card\n        Your application has been approved.\n        We will send you another SMS once your card is available.\n        Thank you.\n        ', '2016-10-03 16:08:20', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('146100309082582427', '45601', NULL, 'AEON SPB', '85512666838', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090489-1\nPls keep this number\nThank you\n', '2016-10-03 16:08:25', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('146100309173077205', '45601', NULL, 'AEON SPB', '85512969933', 'AEON Installment\nApproval Result\n\nC N: DOUK VANTHA\nID: 010476025\nAgreement No: 103-00025005-7\n\nThank you', '2016-10-03 16:17:30', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('146100309563262760', '45601', NULL, 'AEON SPB', '85517751576', 'AEON Installment\nRejected Result\n\nC N: NIT LULU\nID: 011170572\n\nThank you', '2016-10-03 16:56:32', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('146100310011261256', '45606', NULL, 'AEON SPB', '855969624217', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 17:01:12', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('146100310132500446', '45601', NULL, 'AEON SPB', '85512316678', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090497-2\nPls keep this number\nThank you\n', '2016-10-03 17:13:24', NULL, 0, 'USD', 0, 5, '2016-10-03 21:17:59', '2016-10-03 21:26:02'),
	('146100310544296038', '45601', NULL, 'AEON SPB', '85577826464', 'AEON Installment\nRejected Result\n\nC N: SAM SAMAT\nID: 010423092\n\nThank you', '2016-10-03 17:54:42', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:01'),
	('156100303174766064', '45601', NULL, 'AEON SPB', '85517971767', 'AEON Installment\nApproval Result\n\nC N: SOEM SAY\nID: 190722498\nAgreement No: 101-00090487-6\n\nThank you', '2016-10-03 10:17:47', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('156100309080573002', '45601', NULL, 'AEON SPB', '85511243946', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090488-3\nPls keep this number\nThank you\n', '2016-10-03 16:08:05', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('156100309080783526', '45601', NULL, 'AEON SPB', '85517971767', 'AEON Installment\nApproval Result\n\nC N: TOY SOPHEAK\nID: 020554419\nAgreement No: 101-00090488-3\n\nThank you', '2016-10-03 16:08:07', NULL, 0, 'USD', 27, 3, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('156100309082781661', '45601', NULL, 'AEON SPB', '85517971767', 'AEON Installment\nApproval Result\n\nC N: HOK MEY\nID: 010695152\nAgreement No: 101-00090489-1\n\nThank you', '2016-10-03 16:08:27', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('156100309165034361', '45601', NULL, 'AEON SPB', '85517971767', 'AEON Installment\nApproval Result\n\nC N: EIM VANVIREAK\nID: 011148062\nAgreement No: 101-00090492-6\n\nThank you', '2016-10-03 16:16:50', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('156100309171061593', '45601', NULL, 'AEON SPB', '85578684782', 'AEON Installment\nYour Installment is approved!\nAgreement No: 102-00033441-4\nPls keep this number\nThank you', '2016-10-03 16:17:10', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:05'),
	('156100309563058195', '45606', NULL, 'AEON SPB', '85586493332', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 16:56:30', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('156100310124144546', '45601', NULL, 'AEON SPB', '85517971767', 'AEON Installment\nApproval Result\n\nC N: HY BUNNY\nID: 010224864\nAgreement No: 101-00090495-8\n\nThank you', '2016-10-03 17:12:41', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:02'),
	('156100310544191495', '45606', NULL, 'AEON SPB', '855969990082', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 17:54:41', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:01'),
	('166100303365843144', '45606', NULL, 'AEON SPB', '85593919918', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: \n101-00090344-3\nPls keep this number\nThank you\n', '2016-10-03 10:36:58', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('166100309080465529', '45606', NULL, 'AEON SPB', '85510244656', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090488-3\nPls keep this number\nThank you\n', '2016-10-03 16:08:04', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('166100309082476972', '45601', NULL, 'AEON SPB', '85512826768', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090489-1\nPls keep this number\nThank you\n', '2016-10-03 16:08:24', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('166100309084149884', '45606', NULL, 'AEON SPB', '85516999624', 'AEON Installment\nApproval Result\n\nC N: TO SITHA\nID: 180486129\nAgreement No: 101-00090490-1\n\nThank you', '2016-10-03 16:08:41', NULL, 0, 'USD', 27, 3, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('166100309163102247', '45601', NULL, 'AEON SPB', '85512685322', 'AEON Installment\nApproval Result\n\nC N: HUN PISETH\nID: 010651472\nAgreement No: 101-00090491-9\n\nThank you', '2016-10-03 16:16:31', NULL, 0, 'USD', 27, 3, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('166100309570689669', '45601', NULL, 'AEON SPB', '85512685322', 'AEON Installment\nApproval Result\n\nC N: OUM BUMTHOEURN\nID: 011080624\nAgreement No: 101-00090493-3\n\nThank you', '2016-10-03 16:57:06', NULL, 0, 'USD', 27, 3, '2016-10-03 21:18:01', '2016-10-03 21:26:04'),
	('166100311023286712', '45608', NULL, 'AEON SPB', '85588802888', '\n        We are sorry to inform you that your credit card application was declined.\n        We wish to serve you again next time.\n        Thank You.\n        ', '2016-10-03 18:02:32', NULL, 0, 'USD', 1, 4, '2016-10-03 21:15:02', '2016-10-03 21:26:01'),
	('176100303174667386', '45606', NULL, 'AEON SPB', '85569669996', 'AEON Installment\nApproval Result\n\nC N: SOEM SAY\nID: 190722498\nAgreement No: 101-00090487-6\n\nThank you', '2016-10-03 10:17:46', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('176100309080679533', '45606', NULL, 'AEON SPB', '85569669996', 'AEON Installment\nApproval Result\n\nC N: TOY SOPHEAK\nID: 020554419\nAgreement No: 101-00090488-3\n\nThank you', '2016-10-03 16:08:06', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('176100309082689979', '45606', NULL, 'AEON SPB', '85569669996', 'AEON Installment\nApproval Result\n\nC N: HOK MEY\nID: 010695152\nAgreement No: 101-00090489-1\n\nThank you', '2016-10-03 16:08:26', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('176100309164738727', '45608', NULL, 'AEON SPB', '855888938893', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090492-6\nPls keep this number\nThank you\n', '2016-10-03 16:16:47', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('176100310124043858', '45606', NULL, 'AEON SPB', '85569669996', 'AEON Installment\nApproval Result\n\nC N: HY BUNNY\nID: 010224864\nAgreement No: 101-00090495-8\n\nThank you', '2016-10-03 17:12:40', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:02'),
	('176100310290379816', '45601', NULL, 'AEON SPB', '85512242887', 'AEON Installment\nRejected Result\n\nC N: PHAT PHANNY\nID: 180834495\n\nThank you', '2016-10-03 17:29:03', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:01'),
	('176100311023174099', '45606', NULL, 'AEON SPB', '85510832888', '\n        We are sorry to inform you that your credit card application was declined.\n        We wish to serve you again next time.\n        Thank You.\n        ', '2016-10-03 18:02:31', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:02', '2016-10-03 21:26:01'),
	('186100302292383022', '45606', NULL, 'AEON SPB', '85587623959', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 09:29:23', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:06', '2016-10-03 21:26:07'),
	('186100302292568657', '45606', NULL, 'AEON SPB', '85593605605', 'AEON Installment\nRejected Result\n\nC N: CHHEM ROS\nID: 010360986\n\nThank you', '2016-10-03 09:29:25', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('186100309084047469', '45601', NULL, 'AEON SPB', '85592903069', 'AEON Installment\nApproval Result\n\nC N: TO SITHA\nID: 180486129\nAgreement No: 101-00090490-1\n\nThank you', '2016-10-03 16:08:40', NULL, 0, 'USD', 1, 9, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('186100309124411383', '45601', NULL, 'AEON SPB', '85592855766', 'AEON Credit Card\n        Your application has been approved.\n        We will send you another SMS once your card is available.\n        Thank you.\n        ', '2016-10-03 16:12:44', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('186100309164841429', '45608', NULL, 'AEON SPB', '855885473344', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090492-6\nPls keep this number\nThank you\n', '2016-10-03 16:16:48', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('186100310114048256', '45601', NULL, 'AEON SPB', '85517969642', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090494-1\nPls keep this number\nThank you\n', '2016-10-03 17:11:40', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('186100310132730985', '45606', NULL, 'AEON SPB', '85593605605', 'AEON Installment\nApproval Result\n\nC N: YIM PHALY\nID: 010363678\nAgreement No: 101-00090497-2\n\nThank you', '2016-10-03 17:13:27', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:02'),
	('196100309083943235', '45601', NULL, 'AEON SPB', '85512274351', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090490-1\nPls keep this number\nThank you\n', '2016-10-03 16:08:39', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:04', '2016-10-03 21:26:06'),
	('196100310290268122', '45606', NULL, 'AEON SPB', '85598952142', 'AEON Installment\nWe are sorry to inform you that your installment was declined. \nWe wish to serve you for the next time.\nThank you.', '2016-10-03 17:29:02', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:03', '2016-10-03 21:26:02'),
	('206100309160098061', '45606', NULL, 'AEON SPB', '85569772825', 'AEON Credit Card\n        Your application has been approved.\n        We will send you another SMS once your card is available.\n        Thank you.\n        ', '2016-10-03 16:16:00', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('206100309162884126', '45601', NULL, 'AEON SPB', '85577666657', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090491-9\nPls keep this number\nThank you\n', '2016-10-03 16:16:28', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:03', '2016-10-03 21:26:05'),
	('206100309172980750', '45601', NULL, 'AEON SPB', '85511969933', 'AEON Installment\nApproval Result\n\nC N: DOUK VANTHA\nID: 010476025\nAgreement No: 103-00025005-7\n\nThank you', '2016-10-03 16:17:29', NULL, 0, 'USD', 256, 3, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('206100309563166146', '45601', NULL, 'AEON SPB', '85512757746', 'AEON Installment\nRejected Result\n\nC N: NIT LULU\nID: 011170572\n\nThank you', '2016-10-03 16:56:31', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:02', '2016-10-03 21:26:04'),
	('206100309575404796', '45606', NULL, 'AEON SPB', '85586761688', 'AEON Installment\nYour Installment is approved!\nAgreement No: 102-00033442-1\nPls keep this number\nThank you', '2016-10-03 16:57:54', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('206100310114449729', '45601', NULL, 'AEON SPB', '85595333745', 'AEON Installment\nApproval Result\n\nC N: KEO KUNTHEA\nID: 020877642\nAgreement No: 101-00090494-1\n\nThank you', '2016-10-03 17:11:44', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('206100310121877721', '45606', NULL, 'AEON SPB', '85510841311', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 103-00025006-4\nPls keep this number\nThank you\n', '2016-10-03 17:12:18', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:01', '2016-10-03 21:26:03'),
	('206100310125985663', '45606', NULL, 'AEON SPB', '85516999873', 'AEON Installment\nApproval Result\n\nC N: HUON KANIKA\nID: 020793156\nAgreement No: 101-00090496-5\n\nThank you', '2016-10-03 17:12:59', NULL, 0, 'USD', 0, 5, '2016-10-03 21:17:59', '2016-10-03 21:26:02'),
	('216100302292474922', '45601', NULL, 'AEON SPB', '85512450084', 'AEON Installment\nRejected Result\n\nC N: CHHEM ROS\nID: 010360986\n\nThank you', '2016-10-03 09:29:24', NULL, 0, 'USD', 1, 9, '2016-10-03 21:18:06', '2016-10-03 21:26:07'),
	('216100302400243448', '45601', NULL, 'AEON SPB', '85517502552', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: \n101-00090380-1 \nPls keep this number\nThank you\n', '2016-10-03 09:40:02', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('216100303365843571', '45604', NULL, 'AEON SPB', '85513588888', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: \n101-00090344-3\nPls keep this number\nThank you\n', '2016-10-03 10:36:58', NULL, 0, 'USD', 1157, 3, '2016-10-03 21:18:05', '2016-10-03 21:26:07'),
	('216100310121989594', '45608', NULL, 'AEON SPB', '85566907070', 'AEON Installment\nApproval Result\n\nC N: YOEM NARITH\nID: 010278526\nAgreement No: 103-00025006-4\n\nThank you', '2016-10-03 17:12:19', NULL, 0, 'USD', 27, 7, '2016-10-03 21:18:00', '2016-10-03 21:26:03'),
	('216100310123935694', '45601', NULL, 'AEON SPB', '85512406462', 'AEON Installment\nYour Installment is approved! Please get your product at shop within 3 days\nAgreement No: 101-00090495-8\nPls keep this number\nThank you\n', '2016-10-03 17:12:39', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:03'),
	('216100310125880445', '45606', NULL, 'AEON SPB', '85516565050', 'AEON Installment\nApproval Result\n\nC N: HUON KANIKA\nID: 020793156\nAgreement No: 101-00090496-5\n\nThank you', '2016-10-03 17:12:58', NULL, 0, 'USD', 0, 5, '2016-10-03 21:18:00', '2016-10-03 21:26:02'),
	('216100310132623566', '45601', NULL, 'AEON SPB', '85512450084', 'AEON Installment\nApproval Result\n\nC N: YIM PHALY\nID: 010363678\nAgreement No: 101-00090497-2\n\nThank you', '2016-10-03 17:13:26', NULL, 0, 'USD', 1, 9, '2016-10-03 21:17:59', '2016-10-03 21:26:02'),
	('216100310544399358', '45606', NULL, 'AEON SPB', '85569826464', 'AEON Installment\nRejected Result\n\nC N: SAM SAMAT\nID: 010423092\n\nThank you', '2016-10-03 17:54:43', NULL, 0, 'USD', 0, 5, '2016-10-03 21:15:02', '2016-10-03 21:26:01');
/*!40000 ALTER TABLE `smslog` ENABLE KEYS */;


-- Dumping structure for table sms.log.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `groupName` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sms.log.status: ~5 rows (approximately)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `groupId`, `name`, `groupName`, `description`, `action`) VALUES
	(3, 1, 'PENDING_WAITING_DELIVERY', 'PENDING', 'Message sent, waiting for delivery report', NULL),
	(4, 2, 'UNDELIVERABLE_REJECTED_OPERATOR', 'UNDELIVERABLE', 'Message rejected by operator', NULL),
	(5, 3, 'DELIVERED_TO_HANDSET', 'DELIVERED', 'Message delivered to handset', NULL),
	(7, 1, 'PENDING_ENROUTE', 'PENDING', 'Message sent to next instance', NULL),
	(9, 2, 'UNDELIVERABLE_NOT_DELIVERED', 'UNDELIVERABLE', 'Message sent not delivered', NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
