-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 27, 2020 alle 16:42
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tss_2020`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `mossa` varchar(30) DEFAULT NULL,
  `altezza` decimal(3,1) DEFAULT NULL,
  `peso` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `pokemon`
--

INSERT INTO `pokemon` (`id`, `tipo_id`, `nome`, `categoria`, `mossa`, `altezza`, `peso`) VALUES
(1, 3, 'Bulbasaur', 'seme', 'foglielama', '0.7', '6.9'),
(2, 3, 'Ivysaur', 'seme', 'frustata', '1.0', '13.0'),
(3, 3, 'Venusaur', 'seme', 'velenpolvere', '2.0', '100.0'),
(4, 1, 'Charmender', 'lucertola', 'braciere', '0.6', '8.5'),
(5, 1, 'Charmeleon', 'fiamma', 'lanciafiamme', '1.1', '19.0'),
(6, 1, 'Charizard', 'fiamma', 'turbofuoco', '1.7', '90.5'),
(7, 2, 'Squirtle', 'tartaruga', 'bolla', '0.5', '9.0'),
(8, 2, 'Wartotle', 'tartaruga', 'pistolacqua', '1.0', '22.5'),
(9, 2, 'Blastoise', 'crostaceo', 'idropompa', '1.6', '85.5'),
(10, 14, 'Caterpie', 'baco', 'millebave', '0.3', '2.9'),
(11, 14, 'Metapod', 'baco', 'rafforzatore', '0.7', '9.9'),
(12, 14, 'Butterfree', 'farfalla', 'sonnifero', '1.1', '32.0'),
(13, 14, 'Weedle', 'millepiedi', 'velenospina', '0.3', '3.2'),
(14, 14, 'Kakuna', 'bozzolo', 'rafforzatore', '0.6', '10.0'),
(15, 14, 'Beedrill', 'velenape', 'furia', '1.0', '29.5'),
(16, 8, 'Pidgey', 'uccellino', 'raffica', '0.3', '1.8'),
(17, 8, 'Pidgeotto', 'uccello', 'turbine', '1.1', '30.0'),
(18, 8, 'Pidgeot', 'uccello', 'danzadipiume', '1.5', '39.5'),
(19, 7, 'Rattata', 'topo', 'morso', '0.3', '3.5'),
(20, 7, 'Raticate', 'topo', 'iperzanna', '0.7', '18.5'),
(21, 8, 'Spearow', 'uccellino', 'beccata', '0.3', '2.0'),
(22, 8, 'Fearow', 'becco', 'aeroassalto', '1.2', '38.0'),
(23, 11, 'Ekans', 'serpente', 'avvolgibotta', '2.0', '6.9'),
(24, 11, 'Arbok', 'cobra', 'acido', '3.5', '65.0'),
(25, 4, 'Pikachu', 'topo', 'fulmine', '0.4', '6.0'),
(26, 4, 'Raichu', 'topo', 'tuonoshock', '0.8', '30.0'),
(27, 15, 'Sandshrew', 'topo', 'rotolamento', '0.6', '12.0'),
(28, 15, 'Sandslash', 'topo', 'sabbiotomba', '1.0', '29.5'),
(29, 11, 'NidoranF', 'velenago', 'velenospina', '0.4', '7.0'),
(30, 11, 'Nidorina', 'velenago', 'fielepunte', '0.8', '20.0'),
(31, 11, 'Nidoqueen', 'trapano', 'velenodenti', '1.3', '60.0'),
(32, 11, 'NidoranM', 'velenago', 'velenospina', '0.5', '9.0'),
(33, 11, 'Nidorino', 'velenago', 'velenpuntura', '0.9', '19.5'),
(34, 11, 'Nidoking', 'trapano', 'perforcorno', '1.4', '62.0'),
(35, 16, 'Clefairy', 'fata', 'dolcebacio', '0.6', '7.5'),
(36, 16, 'Clefable', 'fata', 'lucelunare', '1.3', '40.0'),
(37, 1, 'Vulpix', 'volpe', 'bruciatutto', '0.6', '9.9'),
(38, 1, 'Ninetales', 'volpe', 'fuocobomba', '1.1', '19.9'),
(39, 16, 'Jigglypuff', 'pallone', 'canto', '0.5', '5.5'),
(40, 16, 'Wigglytuff', 'pallone', 'coro', '1.0', '12.0'),
(41, 8, 'Zubat', 'pipistrello', 'stordiraggio', '0.8', '7.5'),
(42, 8, 'Golbat', 'pipistrello', 'velenoshock', '1.6', '55.0'),
(43, 3, 'Oddish', 'malerba', 'assorbimento', '0.5', '5.4'),
(44, 3, 'Gloom', 'malerba', 'megaassorbimento', '0.8', '8.6'),
(45, 3, 'Vileplume', 'fiore', 'gigassorbimento', '1.2', '18.6'),
(46, 14, 'Paras', 'fungo', 'tagliofuria', '0.3', '5.4'),
(47, 14, 'Parasect', 'fungo', 'polverabbia', '1.0', '29.5'),
(48, 14, 'Venonat', 'insetto', 'confusione', '1.0', '30.0'),
(49, 14, 'Venomoth', 'velentarma', 'paralizzante', '1.5', '12.5'),
(50, 15, 'Diglett', 'talpa', 'fangosberla', '0.2', '0.8'),
(51, 15, 'Dugtrio', 'talpa', 'terremoto', '0.7', '33.3'),
(52, 7, 'Meowth', 'graffimiao', 'giornopaga', '0.4', '4.2'),
(53, 7, 'Persian', 'nobilgatto', 'fintoattacco', '1.0', '32.0'),
(54, 2, 'Psyduck', 'papero', 'confusione', '0.8', '19.6'),
(55, 2, 'Golduck', 'papero', 'idrondata', '1.7', '76.6'),
(56, 10, 'Mankey', 'suinpanze', 'mossa karate', '0.5', '28.0'),
(57, 10, 'Primeape', 'suinpanze', 'zuffa', '1.0', '32.0'),
(58, 1, 'Growlithe', 'cagnolino', 'ruotafuoco', '0.7', '19.0'),
(59, 1, 'Arcanine', 'leggenda', 'fuococarica', '1.9', '155.0'),
(60, 2, 'Poliwag', 'girino', 'bolla', '0.6', '12.4'),
(61, 2, 'Poliwhirl', 'girino', 'bollaraggio', '1.0', '20.0'),
(62, 2, 'Poliwrat', 'girino', 'idropompa', '1.3', '54.0'),
(63, 5, 'Abra', 'psico', 'teletrasporto', '0.9', '19.5'),
(64, 5, 'Kadabra', 'psico', 'psicoshock', '1.3', '56.5'),
(65, 5, 'Alakazam', 'psico', 'mangiasogni', '1.5', '48.0'),
(66, 10, 'Machop', 'megaforza', 'colpo basso', '0.8', '19.5'),
(67, 10, 'Machoke', 'megaforza', 'vitaltiro', '1.5', '70.5'),
(68, 10, 'Machamp', 'megaforza', 'dinamipugno', '1.6', '130.0'),
(69, 3, 'Bellsprout', 'fiore', 'frustata', '0.7', '4.0'),
(70, 3, 'Weepinbell', 'moschivoro', 'gastroacido', '1.0', '6.4'),
(71, 3, 'Victreebel', 'moschivoro', 'velenpuntura', '1.7', '15.5'),
(72, 2, 'Tentacool', 'medusa', 'acido', '0.9', '45.5'),
(73, 2, 'Tentacruel', 'medusa', 'acidobomba', '1.6', '55.5'),
(74, 12, 'Geodude', 'roccia', 'sassata', '0.4', '20.0'),
(75, 12, 'Graveler', 'roccia', 'cadutamassi', '1.0', '105.0'),
(76, 12, 'Golem', 'megatone', 'rotolamento', '1.4', '300.0'),
(77, 1, 'Ponyta', 'cavalfuoco', 'pestone', '1.0', '30.0'),
(78, 1, 'Rapydash', 'cavalfuoco', 'nitrocarica', '1.7', '95.0'),
(79, 2, 'Slowpoke', 'ronfone', 'sbadiglio', '1.2', '36.0'),
(80, 2, 'Slowbro', 'paguro', 'bottintesta', '1.6', '78.5'),
(81, 4, 'Magnemite', 'calamita', 'tuononda', '0.3', '6.0'),
(82, 4, 'Magneton', 'calamita', 'scarica', '1.0', '60.0'),
(83, 8, 'Farfetchd', 'selvanatra', 'taglio', '0.8', '15.0'),
(84, 7, 'Doduo', 'biuccello', 'lacerazione', '1.4', '39.2'),
(85, 7, 'Dodrio', 'triuccello', 'falsofinale', '1.8', '85.2'),
(86, 2, 'Seel', 'otaria', 'acquagetto', '1.1', '90.0'),
(87, 2, 'Dewgong', 'otaria', 'geloraggio', '1.7', '120.0'),
(88, 11, 'Grimer', 'melma', 'fango', '0.9', '30.0'),
(89, 11, 'Muk', 'melma', 'rutto', '1.2', '30.0'),
(90, 2, 'Shellder', 'bivalve', 'mulinello', '0.3', '4.0'),
(91, 2, 'Cloyster', 'bivalve', 'raggiaurora', '1.5', '132.5'),
(92, 6, 'Gastly', 'gas', 'leccata', '1.3', '0.1'),
(93, 6, 'Haunter', 'gas', 'dispetto', '1.6', '0.1'),
(94, 6, 'Gengar', 'ombra', 'palla ombra', '1.6', '40.5'),
(95, 12, 'Onix', 'serpesasso', 'fossa', '8.8', '210.0'),
(96, 5, 'Drowzee', 'ipnosi', 'mangia sogni', '1.0', '32.4'),
(97, 5, 'Hypno', 'ipnosi', 'divinazione', '1.6', '75.6'),
(98, 2, 'Krabby', 'granchio', 'bollaraggio', '0.4', '6.5'),
(99, 2, 'Kingler', 'chela', 'conchilama', '1.6', '60.0'),
(100, 4, 'Voltorb', 'ball', 'sottocarica', '0.5', '10.4'),
(101, 4, 'Electrode', 'ball', 'energisfera', '1.2', '66.6'),
(102, 3, 'Exeggcute', 'uovo', 'solaraggio', '0.4', '2.5'),
(103, 3, 'Exeggcutor', 'nocecocco', 'semitraglia', '2.0', '120.0'),
(104, 15, 'Cubone', 'solitario', 'ossoclava', '0.4', '6.5'),
(105, 15, 'Marowak', 'guardaossi', 'ossomerang', '1.0', '45.0'),
(106, 10, 'Hitmonlee', 'tiracalci', 'doppiocalcio', '1.5', '49.8'),
(107, 10, 'Hitmonchan', 'tirapugni', 'calcinvolo', '1.4', '50.2'),
(108, 7, 'Lickitung', 'linguaccia', 'avvolgibotta', '1.2', '65.5'),
(109, 11, 'Koffing', 'velenuvola', 'velenogas', '0.6', '1.0'),
(110, 11, 'Weezing', 'velenuvola', 'autodistruzione', '1.2', '9.5'),
(111, 15, 'Rhyhorn', 'punzoni', 'incornata', '1.0', '115.0'),
(112, 15, 'Rhydon', 'trapano', 'perforcorno', '1.9', '120.0'),
(113, 7, 'Chansey', 'uovo', 'uovobomba', '1.1', '34.6'),
(114, 3, 'Tangela', 'liana', 'legatutto', '1.0', '35.0'),
(115, 7, 'Kangaskhan', 'genitore', 'doppiosmash', '2.2', '80.0'),
(116, 2, 'Horsea', 'drago', 'pistolacqua', '0.4', '8.0'),
(117, 2, 'Seadra', 'drago', 'dragopulsar', '1.2', '25.0'),
(118, 2, 'Golden', 'pescerosso', 'cascata', '0.6', '15.0'),
(119, 2, 'Seaking', 'pescerosso', 'perforcorno', '1.3', '39.0'),
(120, 2, 'Staryu', 'stella', 'comete', '0.8', '34.5'),
(121, 2, 'Starmie', 'stella', 'cosmoforza', '1.1', '80.0'),
(122, 16, 'Mr Mime', 'barriera', 'riflesso', '1.3', '54.5'),
(123, 14, 'Scyther', 'mantide', 'tagliofuria', '1.5', '56.0'),
(124, 13, 'Jynx', 'umanoide', 'demonbacio', '1.4', '40.6'),
(125, 4, 'Electabuzz', 'elettrico', 'tuonopugno', '1.1', '30.0'),
(126, 1, 'Magmar', 'sputafuoco', 'lavasbuffo', '1.3', '44.5'),
(127, 14, 'Pinsir', 'cervolante', 'ghigliottina', '1.5', '55.0'),
(128, 7, 'Tauros', 'torobrado', 'ira', '1.4', '88.4'),
(129, 2, 'Magikarp', 'carpa koi', 'splash', '0.9', '10.0'),
(130, 2, 'Gyarados', 'atroce', 'idrondata', '6.5', '235.0'),
(131, 13, 'Lapras', 'trasporto', 'geloscheggia', '2.5', '220.0'),
(132, 7, 'Ditto', 'mutante', 'trasformazione', '20.3', '4.0'),
(133, 7, 'Eevee', 'evoluzione', 'azione', '0.3', '6.5'),
(134, 2, 'Vaporeon', 'bollajet', 'idropulsar', '1.0', '29.0'),
(135, 4, 'Jolteon', 'luminoso', 'fulmindenti', '0.8', '24.5'),
(136, 1, 'Flareon', 'fiamma', 'rogodenti', '0.9', '25.0'),
(137, 7, 'Porygon', 'virtuale', 'psicoraggio', '0.8', '36.5'),
(138, 12, 'Omanyte', 'spirale', 'forzantica', '0.4', '7.5'),
(139, 12, 'Omastar', 'spirale', 'acquadisale', '1.0', '35.0'),
(140, 12, 'Kabuto', 'crostaceo', 'acquagetto', '0.5', '11.5'),
(141, 12, 'Kabutops', 'crostaceo', 'lacerazione', '1.3', '40.5'),
(142, 8, 'Aerodactyl', 'fossile', 'cadutalibera', '1.8', '59.0'),
(143, 7, 'Snorlax', 'sonno', 'russare', '2.1', '460.0'),
(144, 13, 'Articuno', 'gelo', 'bora', '1.7', '55.4'),
(145, 4, 'Zapdos', 'elettrico', 'tuono', '1.6', '52.6'),
(146, 1, 'Moltres', 'fiamma', 'lanciafiamme', '2.0', '60.0'),
(147, 9, 'Dratini', 'drago', 'ira di drago', '1.8', '3.3'),
(148, 9, 'Dragonair', 'drago', 'iper raggio', '4.0', '16.5'),
(149, 9, 'Dragonite', 'drago', 'dragofuria', '2.2', '210.0'),
(150, 5, 'Mewtwo', 'genetico', 'psichico', '2.0', '122.0'),
(151, 5, 'Mew', 'novaspecie', 'amnesia', '0.4', '4.0');

-- --------------------------------------------------------

--
-- Struttura della tabella `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `tipo`
--

INSERT INTO `tipo` (`id`, `nome`) VALUES
(1, 'Fuoco'),
(2, 'Acqua'),
(3, 'Erba'),
(4, 'Elettro'),
(5, 'Psico'),
(6, 'Spettro'),
(7, 'Normale'),
(8, 'Volante'),
(9, 'Drago'),
(10, 'Lotta'),
(11, 'Veleno'),
(12, 'Roccia'),
(13, 'Ghiaccio'),
(14, 'Coleottero'),
(15, 'Terra'),
(16, 'Folletto');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- Indici per le tabelle `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT per la tabella `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
