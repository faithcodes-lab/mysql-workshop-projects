-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2025 at 05:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(24) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `c_name`) VALUES
(1, 'politics'),
(2, 'love'),
(3, 'humour'),
(4, 'science'),
(5, 'philosophical'),
(6, 'philosophy'),
(7, 'education');

-- --------------------------------------------------------

--
-- Table structure for table `category_quotes`
--

DROP TABLE IF EXISTS `category_quotes`;
CREATE TABLE IF NOT EXISTS `category_quotes` (
  `cid_fk` int(11) NOT NULL,
  `qid_fk` int(11) NOT NULL,
  PRIMARY KEY (`cid_fk`,`qid_fk`),
  KEY `fk_category_quotes_quote_idx` (`qid_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_quotes`
--

INSERT INTO `category_quotes` (`cid_fk`, `qid_fk`) VALUES
(1, 1),
(1, 2),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 15),
(1, 16),
(1, 20),
(1, 22),
(1, 24),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 19),
(4, 13),
(5, 17),
(6, 18),
(6, 21),
(7, 23);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE IF NOT EXISTS `quotes` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `quote_text` varchar(2048) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `sid_fk` int(11) NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `fk_quotes_source_idx` (`sid_fk`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`qid`, `quote_text`, `ts`, `sid_fk`) VALUES
(1, 'The old world is dying, and a new world struggles to be born; now is time of monsters.', '0000-00-00 00:00:00', 1),
(2, 'They\'ll say we\'re disturbing the peace, but there is no peace. What really bothers them is that we are disturbing the war.', '0000-00-00 00:00:00', 2),
(3, 'There is no remedy but to love more.', '0000-00-00 00:00:00', 3),
(4, 'There is always some madness in love. But there is also always some reason in madness.', '0000-00-00 00:00:00', 4),
(5, 'Love does not consist in gazing at each other, but in looking outward together in the same direction.', '0000-00-00 00:00:00', 5),
(6, 'Take away love and our earth is a tomb.', '0000-00-00 00:00:00', 6),
(7, 'Work is the curse of the drinking classes.', '0000-00-00 00:00:00', 7),
(8, 'A computer once beat me at chess, but it was no match for me at kick boxing.', '0000-00-00 00:00:00', 8),
(9, 'Women should be obscene and not heard.', '0000-00-00 00:00:00', 9),
(10, 'An ideal form of government is democracy tempered with assassination.', '0000-00-00 00:00:00', 10),
(11, 'People have only as much liberty as they have the intelligence to want and the courage to take.', '0000-00-00 00:00:00', 11),
(12, 'Religion is what keeps the poor from murdering the rich.', '0000-00-00 00:00:00', 12),
(13, 'My position is that we should not succubm to irrational belief.', '0000-00-00 00:00:00', 13),
(14, 'Isn\'t it ironic that the proprietary software developers call us communists? We are the ones who have provided for a free market, where they allow only monopoly. ... if the users chooses this proprietary software package, he then falls into this monopoly for support ... the only way to escape from monopoly is to escape from proprietary software, and that is what the free software movement is all about. We want you to escape and our work is to help you escape. We hope you will escape to the free world. The free world is the new continent in cyberspace that we have built so we can live here in freedom. It\'s impossible to live in freedom in the old world of cyberspace, where every program has its feudal lord that bullies and mistreats the users. So, to live in freedom we have to build a new continent. Because this is a virtual continent, it has room for everyone, and there are no immigration restrictions. And because there were never indigenous peoples in cyberspace, there is also no issue of taking away their land. So everyone is welcome in the free world, come to the free world, live with us in freedom. The free software movement aims for the liberation of cyberspace and everyone in it.', '0000-00-00 00:00:00', 14),
(15, 'Laws are created to be followed by the poor. Laws are made by the rich to bring some order to exploitation. The poor are the the only law-abders in history. When the poor make laws, the rich will be no more.', '0000-00-00 00:00:00', 15),
(16, 'The paradise of the rich is made out of the hell of the poor.', '0000-00-00 00:00:00', 16),
(17, 'The unexamined life is not worth living.', '0000-00-00 00:00:00', 17),
(18, 'Whereof one cannot speak, thereof one must be silent.', '0000-00-00 00:00:00', 18),
(19, 'I generally avoid temptation unless I can\'t resist it.', '0000-00-00 00:00:00', 19),
(20, 'A nation of sheep eventually breed a government of wolves!', '0000-00-00 00:00:00', 20),
(21, 'The highest form of knowledge is empathy, for it requires us to suspend our egos and live in another\'s world.', '0000-00-00 00:00:00', 21),
(22, 'We know they are lying. They know they are lying. They know that we know they are lying. They know that they know that we know they are lying.', '0000-00-00 00:00:00', 22),
(23, 'The mind, once stretched by a new idea, never returns to its original dimensions.', '0000-00-00 00:00:00', 23),
(24, 'The public as a mass does not think, will not defend what it believes, and will not analyze the propaganda which is constantly in circulation against any public man who refuses to play along with the gang.', '0000-00-00 00:00:00', 24);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
CREATE TABLE IF NOT EXISTS `source` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(48) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `dod` varchar(12) DEFAULT NULL,
  `wplink` varchar(256) NOT NULL,
  `wpimg` varchar(256) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`sid`, `s_name`, `dob`, `dod`, `wplink`, `wpimg`) VALUES
(1, 'Antonio Gramsci', '1891', '1937', 'https://en.wikipedia.org/wiki/Antonio_Gramsci', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Gramsci.png'),
(2, 'Howard Zinn', '1922', '2010', 'https://en.wikipedia.org/wiki/Howard_Zinn', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Howard_Zinn%2C_2009_%28cropped%29.jpg'),
(3, 'Henry David Thoreau', '1817', '1862', 'http://en.wikipedia.org/wiki/Henry_David_Thoreau', 'http://upload.wikimedia.org/wikipedia/commons/f/f0/Benjamin_D._Maxham_-_Henry_David_Thoreau_-_Restored.jpg'),
(4, 'Friedrich Nietzsche', '1844', '1900', 'http://en.wikipedia.org/wiki/Friedrich_Nietzsche', 'http://upload.wikimedia.org/wikipedia/commons/1/1b/Nietzsche187a.jpg'),
(5, 'Antoine de Saint-Exupery', '1900', '1944', 'http://en.wikipedia.org/wiki/Antoine_de_Saint-Exupery', 'http://upload.wikimedia.org/wikipedia/commons/7/7f/11exupery-inline1-500.jpg'),
(6, 'Robert Browning', '1812', '1889', 'http://en.wikipedia.org/wiki/Robert_Browning', 'http://upload.wikimedia.org/wikipedia/commons/5/58/Robert_Browning_by_Herbert_Rose_Barraud_c1888.jpg'),
(7, 'Oscar Wilde', '1854', '1900', 'http://en.wikipedia.org/wiki/Oscar_wilde', 'http://upload.wikimedia.org/wikipedia/commons/a/a7/Oscar_Wilde_Sarony.jpg'),
(8, 'Emo Philips', '1956', '', 'http://en.wikipedia.org/wiki/Emo_Philips', 'http://upload.wikimedia.org/wikipedia/commons/7/76/Emo_Philips_2002_cropped.jpg'),
(9, 'Groucho Marx', '1890', '1977', 'http://en.wikipedia.org/wiki/Groucho_Marx', 'http://upload.wikimedia.org/wikipedia/commons/6/68/Groucho_Marx_-_portrait.jpg'),
(10, 'Voltaire', '1694', '1778', 'http://en.wikipedia.org/wiki/Voltaire', 'http://upload.wikimedia.org/wikipedia/commons/c/c2/D%27apr%C3%A8s_Maurice_Quentin_de_La_Tour%2C_Portrait_de_Voltaire%2C_d%C3%A9tail_du_visage_%28ch%C3%A2teau_de_Ferney%29.jpg'),
(11, 'Emma Goldman', '1869', '1940', 'https://en.wikipedia.org/wiki/Emma_Goldman', 'https://upload.wikimedia.org/wikipedia/commons/0/03/Emma_Goldman_seated.jpg'),
(12, 'Napoleon Bonaparte', '1769', '1821', 'http://en.wikipedia.org/wiki/Napoleon', 'http://upload.wikimedia.org/wikipedia/commons/5/50/Jacques-Louis_David_-_The_Emperor_Napoleon_in_His_Study_at_the_Tuileries_-_Google_Art_Project.jpg'),
(13, 'Noam Chomsky', '1928', '', 'http://en.wikipedia.org/wiki/Noam_Chomsky', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Noam_Chomsky_portrait_2017.jpg'),
(14, 'Richard Stallman', '1953', '', 'http://en.wikipedia.org/wiki/Richard_Stallman', 'https://upload.wikimedia.org/wikipedia/commons/2/28/Richard_Stallman_at_LibrePlanet_2019.jpg'),
(15, 'Roque Dalton', '1935', '1975', 'https://en.wikipedia.org/wiki/Roque_Dalton', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Roque_Dalton_%281969%29.jpg'),
(16, 'Victor Hugo', '1802', '1885', 'https://en.wikipedia.org/wiki/Victor_Hugo', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg'),
(17, 'Socrates', 'c.469', '399 B.C.', 'https://en.wikipedia.org/wiki/Socrates', 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Socrate_du_Louvre.jpg'),
(18, 'Ludwig Wittgenstein', '1889', '1951', 'https://en.wikipedia.org/wiki/Ludwig_Wittgenstein', 'https://upload.wikimedia.org/wikipedia/commons/6/60/35._Portrait_of_Wittgenstein.jpg'),
(19, 'Mae West', '1893', '1980', 'https://en.wikipedia.org/wiki/Mae_West', 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Mae_West_LAT.jpg'),
(20, 'Agatha Christie', '1890', '1976', 'https://en.wikipedia.org/wiki/Agatha_Christie', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Agatha_Christie.png'),
(21, 'Plato', '428/427 or 4', '348/347 BC (', 'https://en.wikipedia.org/wiki/Plato', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Solon.jpg'),
(22, 'Aleksandr Solzhenitsyn', '1918', '2008', 'https://en.wikipedia.org/wiki/Aleksandr_Solzhenitsyn', 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Aleksandr_Solzhenitsyn_1974crop.jpg'),
(23, 'Ralph Waldo Emerson', '1803', '1882', 'https://en.wikipedia.org/wiki/Ralph_Waldo_Emerson', 'https://upload.wikimedia.org/wikipedia/commons/d/d5/Ralph_Waldo_Emerson_ca1857_retouched.jpg'),
(24, 'Manly P. Hall', '1901', '1990', 'https://en.wikipedia.org/wiki/Manly_P._Hall', 'https://upload.wikimedia.org/wikipedia/commons/0/05/Manly_P._Hall.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_quotes`
--
ALTER TABLE `category_quotes`
  ADD CONSTRAINT `fk_category_quotes_category` FOREIGN KEY (`cid_fk`) REFERENCES `category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_category_quotes_quote` FOREIGN KEY (`qid_fk`) REFERENCES `quotes` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `fk_quotes_source` FOREIGN KEY (`sid_fk`) REFERENCES `source` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
