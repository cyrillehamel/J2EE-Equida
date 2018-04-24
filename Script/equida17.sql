-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 10 Novembre 2017 à 06:24
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `equida17`
--

-- --------------------------------------------------------

--
-- Structure de la table `acheteur`
--

CREATE TABLE IF NOT EXISTS `acheteur` (
  `codeIntervenant` int(11) NOT NULL,
  PRIMARY KEY (`codeIntervenant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `acheteur`
--

INSERT INTO `acheteur` (`codeIntervenant`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `categvente`
--

CREATE TABLE IF NOT EXISTS `categvente` (
  `code` varchar(5) NOT NULL,
  `libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categvente`
--

INSERT INTO `categvente` (`code`, `libelle`) VALUES
('AUT', 'Vente d''automne'),
('ELVG', 'Vente d''élevage'),
('ETE', 'Vente d''été'),
('XFEV', 'Vente mixte de février');

-- --------------------------------------------------------

--
-- Structure de la table `cheval`
--

CREATE TABLE IF NOT EXISTS `cheval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `codeTypeCheval` int(11) DEFAULT NULL,
  `mere` varchar(50) DEFAULT NULL,
  `pere` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CHEVAL_TYPECHEVAL` (`codeTypeCheval`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cheval`
--

INSERT INTO `cheval` (`id`, `nom`, `sexe`, `codeTypeCheval`, `mere`, `pere`) VALUES
(1, 'Superman', 'M', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `rue` varchar(60) NOT NULL,
  `copos` varchar(5) NOT NULL,
  `ville` varchar(40) NOT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `codePays` varchar(3) DEFAULT NULL,
  `titre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cli_pays` (`codePays`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `rue`, `copos`, `ville`, `mail`, `codePays`, `titre`) VALUES
(1, 'Deltour', 'Charles', '4 rue du Pont', '14680', 'Bretteville Sur Laize', 'cdeltour@hotmail.com', 'FRA', NULL),
(2, 'Fime', 'Nadia', '5 rue du Montparnasse', '14220', 'Boulon', '', 'ENG', NULL),
(3, 'Ertau', 'Frank', '4 Avenue du président Wilson', '14190', 'Urville', 'frank.ertau@laposte.net', 'FRA', NULL),
(4, 'Maneur', 'David', '6 rue Charles Péguy', '14220', 'Mutrécy', '', 'FRA', NULL),
(5, 'Berezovski', 'Sylvie', '18 rue du Château', '14680', 'Barbery', '', 'FRA', NULL),
(6, 'Finley', 'Pascale', '25 rue de Tolbiac', '14680', 'Caillouet', 'pascfinley@yahoo.fr', 'FRA', NULL),
(7, 'Vofur', 'Hector', '18 rue Deparcieux', '14190', 'Cauvicourt', 'hvofur@free.fr', 'ENG', NULL),
(8, 'Derzou', 'Fred', '230 avenue de la libert', '14220', 'Espins', 'ouzala@aol.com', 'FRA', NULL),
(9, 'Serty', 'Julie', '23 rue du Calvaire', '14220', 'Fresney le Vieux', '', 'FRA', NULL),
(10, 'Vofur', 'Victor', '18 rue Deparcieux', '14680', 'Bretteville Sur Laize', 'victor.vofur@laposte.net', 'FRA', NULL),
(11, 'Calende', 'Hugo', '22 rue des jardins', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(12, 'Jemba', 'Hubert', '10 rue du 8 mai 1945', '14680', 'Bretteville Sur Laize', 'jaimeba@yahoo.fr', 'FRA', NULL),
(13, 'Morin', 'S?verine', '4 rue du bac', '93000', 'Paris', 'morinsev@hotmail.com', 'FRA', NULL),
(14, 'Benrech', 'Tarek', '79 rue de Caen', '14320', 'May Sur Orne', '', 'FRA', NULL),
(15, 'Nguyen', 'Marc', '53 impasse Tourneur', '14320', 'Fontenay Le Marmion', 'nguyen774@wanadoo.fr', 'FRA', NULL),
(16, 'Louali', 'Karima', '89 avenue Poincar', '14320', 'Saint Martin de Fontenay', 'kloua@caramail.fr', 'FRA', NULL),
(17, 'Paolo', 'Marco', '14 rue du Caire', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(18, 'Map', 'Joanna', '120 boulevard Voltaire', '75012', 'Paris', '', 'FRA', NULL),
(19, 'Kound', 'Fatoumata', '4 Place Carr', '14190', 'Urville', '', 'FRA', NULL),
(20, 'Derissam', 'Bachir', '1 rue des Indes', '14190', 'Urville', '', 'FRA', NULL),
(21, 'Villechalane', 'Louis', '8 rue des Charmes', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(22, 'Andre', 'David', '1 rue Petit', '14220', 'Boulon', '', 'FRA', NULL),
(23, 'Bedos', 'Christian', '1 rue Peranud', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(24, 'Tusseau', 'Louis', '22 rue des Ternes', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(25, 'Bentot', 'Pascal', '11 allée des Cerises', '14220', 'Boulon', '', 'FRA', NULL),
(26, 'Bioret', 'Luc', '1 Avenue gambetta', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(27, 'Bunisset', 'Francis', '10 rue des Perles', '14220', 'Espins', '', 'FRA', NULL),
(28, 'Bunisset', 'Denise', '23 rue Manin', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(29, 'Cacheux', 'Bernard', '114 rue Blanche', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(30, 'Cadic', 'Eric', '123 avenue de la République', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(31, 'Charoze', 'Catherine', '100 rue Petit', '14220', 'Boulon', '', 'FRA', NULL),
(32, 'Clepkens', 'Christophe', '12 allée des Anges', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(33, 'Cottin', 'Vincenne', '36 rue Des Roches', '14220', 'Boulon', '', 'FRA', NULL),
(34, 'Daburon', 'François', '13 rue de Chanzy', '14220', 'Mutrécy', '', 'FRA', NULL),
(35, 'De', 'Philippe', '13 rue Barthes', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(36, 'Debelle', 'Michel', '181 avenue Barbusse', '14220', 'Espins', '', 'FRA', NULL),
(37, 'Debelle', 'Jeanne', '134 allée des Joncs', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(38, 'Debroise', 'Michel', '2 Bld Jourdain', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(39, 'Desmarquest', 'Nathalie', '14 Place d Arc', '14220', 'Boulon', '', 'FRA', NULL),
(40, 'Desnost', 'Pierre', '16 avenue des Cèdres', '14220', 'Mutrécy', '', 'FRA', NULL),
(41, 'Dudouit', 'Frédéric', '18 rue de l église', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(42, 'Duncombe', 'Claude', '19 rue de la tour', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(43, 'Enault-Pascreau', 'Céline', '25 place de la gare', '14680', 'Bretteville Sur Laize', '', 'FRA', NULL),
(44, 'Eynde', 'Valérie', '3 Grand Place', '14220', 'Mutrécy', '', 'FRA', NULL),
(45, 'Finck', 'Jacques', '10 avenue du Prado', '14320', 'Fontenay Le Marmion', '', 'FRA', NULL),
(46, 'Frémont', 'Fernande', '4 route de la mer', '14220', 'Espins', '', 'FRA', NULL),
(47, 'Gest', 'Alain', '30 avenue des terres', '14320', 'Saint Martin de Fontenay', '', 'FRA', NULL),
(48, 'Testemale', 'tarek', 'du trek', '14000', 'Tarascon', NULL, 'FRA', NULL),
(49, 'Trieste', 'Thierry', 'du tertre', '14000', 'Tologne', NULL, 'FRA', NULL),
(50, 'test04sept', 'luc', 'de ahjk', '121', 'jkjklj', NULL, 'FRA', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `clientcategvente`
--

CREATE TABLE IF NOT EXISTS `clientcategvente` (
  `codeClient` int(11) NOT NULL,
  `codeCategVente` varchar(5) NOT NULL,
  PRIMARY KEY (`codeClient`,`codeCategVente`),
  KEY `FK_cliCat_Categ` (`codeCategVente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clientcategvente`
--

INSERT INTO `clientcategvente` (`codeClient`, `codeCategVente`) VALUES
(6, 'AUT'),
(49, 'AUT'),
(1, 'ELVG'),
(1, 'ETE'),
(3, 'ETE'),
(6, 'ETE'),
(7, 'ETE'),
(16, 'ETE'),
(49, 'ETE'),
(50, 'ETE'),
(6, 'XFEV');

-- --------------------------------------------------------

--
-- Structure de la table `courriel`
--

CREATE TABLE IF NOT EXISTS `courriel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `objet` varchar(50) NOT NULL,
  `corps` varchar(200) NOT NULL,
  `codeVente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_COURRIEL_VENTE` (`codeVente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `courriel`
--

INSERT INTO `courriel` (`id`, `date`, `objet`, `corps`, `codeVente`) VALUES
(1, '2017-10-09', 'Achat cheval', 'ce cheval m''intéresse', 30917),
(2, '2017-10-08', 'Achat cheval', 'ce cheval m''intéresse', 30917);

-- --------------------------------------------------------

--
-- Structure de la table `courrielpiecejointe`
--

CREATE TABLE IF NOT EXISTS `courrielpiecejointe` (
  `codeCourriel` int(11) NOT NULL DEFAULT '0',
  `codePieceJointe` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codeCourriel`,`codePieceJointe`),
  KEY `FK_CPJ_PIECEJOINTE` (`codePieceJointe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `course`
--

INSERT INTO `course` (`id`, `nom`, `lieu`, `date`) VALUES
(1, 'Championnant d''europe d''équitation', 'Caen', '2017-10-12');

-- --------------------------------------------------------

--
-- Structure de la table `enchere`
--

CREATE TABLE IF NOT EXISTS `enchere` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `codeLot` int(11) NOT NULL,
  `codeVente` int(11) NOT NULL,
  `montant` int(11) NOT NULL,
  `codeAcheteur` int(11) NOT NULL,
  PRIMARY KEY (`num`,`codeLot`,`codeVente`),
  KEY `FK_ENC_ACH` (`codeAcheteur`),
  KEY `FK_ENC_LOT` (`codeLot`,`codeVente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `enchere`
--

INSERT INTO `enchere` (`num`, `codeLot`, `codeVente`, `montant`, `codeAcheteur`) VALUES
(2, 1, 30917, 65, 1);

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

CREATE TABLE IF NOT EXISTS `intervenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `intervenant`
--

INSERT INTO `intervenant` (`id`, `nom`, `prenom`, `mail`) VALUES
(1, 'Boss', 'Hugo', 'hugo.boss@gmail.com'),
(2, 'Boyd', 'Usain', 'Usain.boyd@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `id` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `nbBoxes` int(11) NOT NULL,
  `commentaires` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`id`, `ville`, `nbBoxes`, `commentaires`) VALUES
(1, 'Deauville', 3, 'Il y a 3 boxes à Deauville'),
(2, 'St Cloud', 5, 'Il y a 5 boxes a St Cloud');

-- --------------------------------------------------------

--
-- Structure de la table `lot`
--

CREATE TABLE IF NOT EXISTS `lot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prixDepart` int(11) NOT NULL,
  `codeVente` int(11) NOT NULL DEFAULT '0',
  `codeCheval` int(11) DEFAULT NULL,
  `codeVendeur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`codeVente`),
  KEY `FK_LOT_VENTE` (`codeVente`),
  KEY `FK_LOT_CHE` (`codeCheval`),
  KEY `FK_LOT_VEN` (`codeVendeur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `lot`
--

INSERT INTO `lot` (`id`, `prixDepart`, `codeVente`, `codeCheval`, `codeVendeur`) VALUES
(1, 50, 30917, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE IF NOT EXISTS `participer` (
  `codeCheval` int(11) NOT NULL,
  `codeCourse` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  PRIMARY KEY (`codeCheval`,`codeCourse`),
  KEY `FK_PAR_COU` (`codeCourse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `participer`
--

INSERT INTO `participer` (`codeCheval`, `codeCourse`, `place`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `code` varchar(3) NOT NULL,
  `nom` varchar(30) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`code`, `nom`) VALUES
('ENG', 'Angleterre'),
('FRA', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `piecejointe`
--

CREATE TABLE IF NOT EXISTS `piecejointe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chemin` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `piecejointe`
--

INSERT INTO `piecejointe` (`id`, `chemin`, `description`) VALUES
(1, 'C:\\Users\\Public\\Pictures\\Sample Pictures', 'image de koala');

-- --------------------------------------------------------

--
-- Structure de la table `typecheval`
--

CREATE TABLE IF NOT EXISTS `typecheval` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `typecheval`
--

INSERT INTO `typecheval` (`id`, `libelle`, `description`) VALUES
(1, 'Pur-sang anglais', 'C''est un cheval de course anglais'),
(2, 'Pur-sang arabe', 'C''est un cheval de course arabe');

-- --------------------------------------------------------

--
-- Structure de la table `vendeur`
--

CREATE TABLE IF NOT EXISTS `vendeur` (
  `codeIntervenant` int(11) NOT NULL,
  PRIMARY KEY (`codeIntervenant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vendeur`
--

INSERT INTO `vendeur` (`codeIntervenant`) VALUES
(2);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE IF NOT EXISTS `vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `dateDebut` date NOT NULL,
  `codeCategVente` varchar(5) NOT NULL,
  `codeLieu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `codeCategVente` (`codeCategVente`),
  KEY `FK_VENTE_LIEU` (`codeLieu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=250225 ;

--
-- Contenu de la table `vente`
--

INSERT INTO `vente` (`id`, `nom`, `dateDebut`, `codeCategVente`, `codeLieu`) VALUES
(30917, 'Garibaldi Princess', '2017-03-09', 'ELVG', 1),
(90217, 'Mixing brain', '2017-09-02', 'XFEV', 2),
(210717, 'Rapsberry Sailing', '2017-07-17', 'ETE', 1),
(210817, 'Jelly Bay', '2017-08-17', 'ETE', 2),
(250217, 'Djezair Star', '2017-02-25', 'XFEV', 1),
(250223, 'Vente express', '2017-10-10', 'ETE', 2),
(250224, 'Vente annuelle', '2017-10-10', 'ETE', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ventetypecheval`
--

CREATE TABLE IF NOT EXISTS `ventetypecheval` (
  `codeVente` int(11) NOT NULL DEFAULT '0',
  `codeTypeCheval` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codeVente`,`codeTypeCheval`),
  KEY `FK_VTC_TYPECHEVAL` (`codeTypeCheval`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ventetypecheval`
--

INSERT INTO `ventetypecheval` (`codeVente`, `codeTypeCheval`) VALUES
(30917, 1),
(210717, 1),
(250217, 1),
(90217, 2),
(210817, 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `acheteur`
--
ALTER TABLE `acheteur`
  ADD CONSTRAINT `FK_ACH_INT` FOREIGN KEY (`codeIntervenant`) REFERENCES `intervenant` (`id`);

--
-- Contraintes pour la table `cheval`
--
ALTER TABLE `cheval`
  ADD CONSTRAINT `FK_CHEVAL_TYPECHEVAL` FOREIGN KEY (`codeTypeCheval`) REFERENCES `typecheval` (`id`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_cli_pays` FOREIGN KEY (`codePays`) REFERENCES `pays` (`code`);

--
-- Contraintes pour la table `clientcategvente`
--
ALTER TABLE `clientcategvente`
  ADD CONSTRAINT `FK_cliCat_Categ` FOREIGN KEY (`codeCategVente`) REFERENCES `categvente` (`code`),
  ADD CONSTRAINT `FK_cliCat_client` FOREIGN KEY (`codeClient`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `courriel`
--
ALTER TABLE `courriel`
  ADD CONSTRAINT `FK_COURRIEL_VENTE` FOREIGN KEY (`codeVente`) REFERENCES `vente` (`id`);

--
-- Contraintes pour la table `courrielpiecejointe`
--
ALTER TABLE `courrielpiecejointe`
  ADD CONSTRAINT `FK_CPJ_COURRIEL` FOREIGN KEY (`codeCourriel`) REFERENCES `courriel` (`id`),
  ADD CONSTRAINT `FK_CPJ_PIECEJOINTE` FOREIGN KEY (`codePieceJointe`) REFERENCES `piecejointe` (`id`);

--
-- Contraintes pour la table `enchere`
--
ALTER TABLE `enchere`
  ADD CONSTRAINT `FK_ENC_ACH` FOREIGN KEY (`codeAcheteur`) REFERENCES `acheteur` (`codeIntervenant`),
  ADD CONSTRAINT `FK_ENC_LOT` FOREIGN KEY (`codeLot`, `codeVente`) REFERENCES `lot` (`id`, `codeVente`);

--
-- Contraintes pour la table `lot`
--
ALTER TABLE `lot`
  ADD CONSTRAINT `FK_LOT_CHE` FOREIGN KEY (`codeCheval`) REFERENCES `cheval` (`id`),
  ADD CONSTRAINT `FK_LOT_VEN` FOREIGN KEY (`codeVendeur`) REFERENCES `vendeur` (`codeIntervenant`),
  ADD CONSTRAINT `FK_LOT_VENTE` FOREIGN KEY (`codeVente`) REFERENCES `vente` (`id`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `FK_PAR_CHE` FOREIGN KEY (`codeCheval`) REFERENCES `cheval` (`id`),
  ADD CONSTRAINT `FK_PAR_COU` FOREIGN KEY (`codeCourse`) REFERENCES `course` (`id`);

--
-- Contraintes pour la table `vendeur`
--
ALTER TABLE `vendeur`
  ADD CONSTRAINT `FK_VEN_INT` FOREIGN KEY (`codeIntervenant`) REFERENCES `intervenant` (`id`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `FK_VENTE_LIEU` FOREIGN KEY (`codeLieu`) REFERENCES `lieu` (`id`),
  ADD CONSTRAINT `FK_Ven_Categ` FOREIGN KEY (`codeCategVente`) REFERENCES `categvente` (`code`);

--
-- Contraintes pour la table `ventetypecheval`
--
ALTER TABLE `ventetypecheval`
  ADD CONSTRAINT `FK_VTC_TYPECHEVAL` FOREIGN KEY (`codeTypeCheval`) REFERENCES `typecheval` (`id`),
  ADD CONSTRAINT `FK_VTC_VENTE` FOREIGN KEY (`codeVente`) REFERENCES `vente` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
