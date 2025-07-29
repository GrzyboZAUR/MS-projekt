-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 28, 2025 at 07:47 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gry_projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `database_games`
--

CREATE TABLE `database_games` (
  `nazwa` varchar(49) DEFAULT NULL,
  `właścicel` varchar(5) DEFAULT NULL,
  `typ` varchar(11) DEFAULT NULL,
  `trudność` varchar(8) DEFAULT NULL,
  `min_graczy` int(1) DEFAULT NULL,
  `max_graczy` int(2) DEFAULT NULL,
  `ocena` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `database_games`
--

INSERT INTO `database_games` (`nazwa`, `właścicel`, `typ`, `trudność`, `min_graczy`, `max_graczy`, `ocena`) VALUES
('Runewars', 'Mazur', 'rywalizacja', 'trudna', 2, 4, 80),
('Mezo', 'Mazur', 'rywalizacja', '', 2, 4, 0),
('Carcassonne', 'Mazur', 'rywalizacja', 'łatwa', 2, 5, 70),
('World of Warcraft: The Advanture Game', 'Mazur', 'rywalizacja', 'średnia', 2, 4, 60),
('World of Warcraft: Wrath of The Lich King', 'Mazur', 'kooperacja', 'łatwa', 1, 5, 60),
('Ubongo Junior', 'Mazur', 'rywalizacja', 'łatwa', 1, 4, 60),
('Gierki Małżeńskie', 'Mazur', 'towarzyska', 'łatwa', 2, 8, 40),
('Pandemia', 'Mazur', 'kooperacja', '', 2, 4, 0),
('Kupcy i żeglarze', 'Mazur', 'rywalizacja', 'średnia', 2, 4, 50),
('Diamenty', 'Mazur', 'rywalizacja', 'łatwa', 2, 8, 90),
('Honey Comb', 'Mazur', 'rywalizacja', 'łatwa', 2, 4, 60),
('Tak Mroczny władco', 'Mazur', 'towarzyska', 'łatwa', 4, 16, 70),
('Catan Szybka gra karciana', 'Mazur', 'rywalizacja', 'średnia', 2, 4, 60),
('Eksplodujące kotki', 'Mazur', 'towarzyska', 'łatwa', 2, 5, 50),
('Siedem', 'Mazur', 'rywalizacja', '', 2, 4, 0),
('Taboo', 'Mazur', 'towarzyska', 'średnia', 4, 12, 80),
('Bright Future', 'Mazur', 'kooperacja', 'średnia', 1, 4, 80),
('Bright Future', 'Mazur', 'rywalizacja', 'średnia', 2, 5, 0),
('Super Things Rivals of Kaboom', 'Mazur', 'dla dzieci', 'łatwa', 2, 4, 80),
('Fantastyczne światy', 'Mazur', 'rywalizacja', 'trudna', 2, 6, 80),
('Warhammer Quest Karciana gra przygodowa', 'Mazur', 'kooperacja', 'trudna', 1, 4, 0),
('Kalambury', 'Mazur', 'towarzyska', 'łatwa', 2, 20, 90),
('5 sekund', 'Mazur', 'towarzyska', '', 3, 6, 0),
('Carcassonne Junior', 'Mazur', 'rywalizacja', 'łatwa', 2, 4, 70),
('Karak', 'Mazur', 'rywalizacja', 'łatwa', 2, 5, 80),
('World of Warcraft Small World', 'Mazur', 'rywalizacja', 'średnia', 2, 5, 80),
('Cywilizacja Nowy Początek', 'Mazur', 'rywalizacja', 'trudna', 2, 4, 80),
('Abalone', 'Mazur', 'rywalizacja', 'średnia', 2, 2, 90),
('Pokémon Trading Card Game: Battle Academy', 'Mazur', 'rywalizacja', '', 2, 2, 0),
('Twisted Worms', 'Mazur', 'dla dzieci', 'łatwe', 2, 4, 20),
('51st State', 'Mazur', 'rywalizacja', 'średnie', 2, 4, 50),
('Wyprawa do El Dorado', 'Mazur', 'rywalizacja', 'łatwe', 2, 4, 100),
('Zaginiona wyspa Arnak', 'Mazur', 'rywalizacja', 'średnie', 1, 4, 100),
('Kroniki zamku Avel', 'Mazur', 'kooperacja', 'średnie', 1, 4, 90),
('La Cucaracha', 'Mazur', 'dla dzieci', 'łatwe', 2, 4, 70),
('Ramses II', 'Mazur', 'dla dzieci', 'łatwe', 1, 5, 60),
('Pokemon Labirynt', 'Mazur', 'dla dzieci', 'łatwe', 2, 4, 90),
('Brzdęk Katakumby', 'Mazur', 'rywalizacja', '', 2, 4, 0),
('Robinson Crusoe', 'Mazur', 'kooperacja', '', 1, 4, 0),
('Uno Minecraft', 'Mazur', 'dla dzieci', '', 2, 10, 0),
('Hero Realms', 'Mazur', 'rywalizacja', 'średnia', 2, 5, 100),
('Azul', 'Mazur', 'rywalizacja', 'średnia', 2, 4, 90),
('Survive the island', 'Mazur', 'rywalizacja', 'łatwa', 2, 5, 100),
('Małe Epickie Podziemia', 'Mazur', 'kooperacja', '', 1, 4, 0),
('Legendy Krainy Andor', 'Mazur', 'kooperacja', 'śrenida', 1, 4, 70),
('7 cudów świata', 'Mazur', 'rywalizacja', 'śrenida', 3, 7, 90),
('Catan', 'Krzyś', 'rywalizacja', 'średnia', 3, 4, 85),
('Talizman Magia i Miecz', 'Krzyś', 'rywalizacja', 'średnia', 2, 6, 75),
('Kroniki Zamku Avel', 'Krzyś', 'kooperacja', 'łatwa', 1, 4, 80),
('Party Time', 'Krzyś', 'towarzyska', 'łatwa', 4, 20, 70),
('Monopoly', 'Krzyś', 'rywalizacja', 'średnia', 2, 6, 65),
('Potwory do Szafy', 'Krzyś', 'dla dzieci', 'łatwa', 1, 6, 90),
('Kim jestem?', 'Krzyś', 'dla dzieci', 'łatwa', 2, 10, 75),
('Ślimaki to Mięczaki', 'Krzyś', 'rywalizacja', 'łatwa', 2, 4, 60),
('Złota Rybka', 'Krzyś', 'dla dzieci', 'łatwa', 2, 4, 65),
('Lama Ekspres', 'Krzyś', 'dla dzieci', 'łatwa', 2, 6, 70),
('Wsiąść do Pociągu', 'Rafał', 'rywalizacja', 'normalna', 2, 5, 0),
('Catan', 'Rafał', 'rywalizacja', 'normalna', 3, 4, 80),
('Potwory do szafy', 'Rafał', 'dla dzieci', 'łatwa', 2, 3, 0),
('Quarto', 'Rafał', 'rywalizacja', '', 2, 2, 0),
('La Cucaracha', 'Rafał', 'dla dzieci', 'łatwe', 2, 4, 60),
('Karak', 'Rafał', 'rywalizacja', 'łatwa', 2, 5, 60),
('Neuroshima Hex', 'Grzyb', 'rywalizacja', 'trudna', 2, 4, 100),
('Wielki mur', 'Grzyb', 'kooperacja', 'trudna', 1, 5, 100),
('List miłosny', 'Grzyb', 'towarzyska', 'łatwa', 2, 6, 75),
('Eye2Eye', 'Grzyb', 'rywalizacja', 'b.łatwa', 2, 2, 70),
('Story Cubs', 'Grzyb', 'towarzyska', 'b.łatwa', 2, 8, 80),
('Gwint', 'Grzyb', 'rywalizacja', 'normalna', 2, 2, 95),
('Koty', 'Grzyb', 'rywalizacja', 'b.łatwa', 2, 4, 70),
('Karty dżentelmenów', 'Grzyb', 'towarzyska', 'łatwa', 3, 8, 75),
('Memy', 'Grzyb', 'towarzyska', 'łatwa', 3, 8, 80),
('I Know', 'Grzyb', 'towarzyska', 'normalna', 2, 6, 85),
('Jungle Speed', 'Grzyb', 'rywalizacja', 'b.łatwa', 2, 6, 80),
('Monopoly Imperium', 'Grzyb', 'rywalizacja', 'normalna', 2, 6, 75),
('God of War', 'Grzyb', 'kooperacja', 'trudna', 1, 4, 90),
('Battle of Hogwart', 'Grzyb', 'kooperacja', 'trudna', 2, 4, 85),
('XCOM', 'Grzyb', 'kooperacja', 'trudna', 1, 4, 100),
('Wiedźmin', 'Grzyb', 'rywalizacja', 'trudna', 1, 5, 85),
('Tajemnicze domostwo', 'Grzyb', 'towarzyska', 'normalna', 2, 7, 90),
('Osadnicy: Narodziny Imperium', 'Grzyb', 'rywalizacja', 'normalna', 1, 4, 90),
('Plemiona wiatru', 'Grzyb', 'rywalizacja', 'normalna', 2, 5, 85),
('Paper Tales', 'Grzyb', 'rywalizacja', 'normalna', 2, 5, 80),
('Warcraft', 'Grzyb', 'rywalizacja', 'trudna', 1, 4, 90),
('Poprzez wieki', 'Grzyb', 'rywalizacja', 'trudna', 2, 4, 95),
('Konwój', 'Grzyb', 'rywalizacja', 'normalna', 2, 2, 75),
('Sushi Go', 'Grzyb', 'rywalizacja', 'łatwa', 2, 5, 80),
('Herbatka dla 2', 'Grzyb', 'rywalizacja', 'b.łatwa', 2, 2, 75),
('Martwa zima', 'Grzyb', 'kooperacja', 'trudna', 2, 5, 90),
('AI Space Puzzle', 'Grzyb', 'towarzyska', 'normalna', 1, 4, 85),
('Hitster', 'Grzyb', 'towarzyska', 'b.łatwa', 2, 8, 80),
('The Resistance', 'Grzyb', 'towarzyska', 'normalna', 5, 10, 85),
('Cytadela', 'Grzyb', 'rywalizacja', 'normalna', 2, 8, 90),
('Party Time', 'Grzyb', 'towarzyska', 'b.łatwa', 3, 10, 75),
('Czarne historie 5', 'Grzyb', 'towarzyska', 'łatwa', 2, 15, 75),
('51 Stan', 'Grzyb', 'rywalizacja', 'trudna', 1, 4, 85),
('Pandemia', 'Grzyb', 'kooperacja', 'normalna', 2, 4, 90),
('7 cudów świata: Architekci', 'Grzyb', 'rywalizacja', 'normalna', 2, 7, 95),
('Nie powinieneś', 'Grzyb', 'towarzyska', 'b.łatwa', 3, 8, 50),
('Guard of Atlantis', 'Grzyb', 'rywalizacja', 'trudna', 2, 10, 0),
('Crused Castle', 'Grzyb', 'solo', 'trudna', 1, 1, 70),
('Spy gay', 'Grzyb', 'dla dzieci', 'łatwa', 1, 4, 80),
('Kroniki przygody: Wypraswa po księżycowe kamienie', 'Grzyb', 'dla dzieci', 'normalna', 1, 4, 90),
('Kroniki przygody: Przepowienida starego dębu', 'Grzyb', 'dla dzieci', 'normalna', 1, 4, 70),
('Spy gay: Zimowa przygoda', 'Grzyb', 'dla dzieci', 'łatwa', 1, 4, 50),
('Klonowa dolina', 'Grzyb', 'rywalizacja', 'normalna', 1, 5, 0),
('Znajdź pluszaka', 'Grzyb', 'dla dzieci', 'łatwa', 1, 2, 50),
('Było sobie życie', 'Grzyb', 'rywalizacja', 'łatwa', 2, 5, 80),
('Opowieści z Pryncypii', 'Grzyb', 'kooperacja', 'trudna', 1, 4, 90),
('Boom Boom', 'Grzyb', 'dla dzieci', 'łatwa', 2, 4, 70),
('Feluś i Gucio grają w emocje', 'Grzyb', 'dla dzieci', 'łatwa', 1, 4, 100),
('Budowa zamku', 'Grzyb', 'dla dzieci', 'łatwa', 2, 4, 50),
('Potwory do Szafy', 'Grzyb', 'dla dzieci', 'łatwa', 2, 3, 80),
('Wirus', 'Grzyb', 'dla dzieci', 'łatwa', 2, 5, 100),
('Smart games: Grizzly', 'Grzyb', 'solo', 'trudna', 1, 1, 20),
('5 sekund junior', 'Grzyb', 'dla dzieci', 'łatwa', 2, 5, 80),
('Grzybobranie', 'Grzyb', 'dla dzieci', 'łatwa', 2, 4, 20),
('Ale pary', 'Grzyb', 'dla dzieci', 'łatwa', 2, 4, 40),
('Slot memory', 'Grzyb', 'dla dzieci', 'łatwa', 2, 4, 5),
('Agenci', 'Grzyb', 'dla dzieci', '', 2, 5, 0),
('Zakodowany zamek', 'Grzyb', 'dla dzieci', 'łatwa', 1, 2, 40),
('Hodowla zwierzątek', 'Grzyb', 'rywalizacja', 'łatwa', 2, 5, 50),
('Inkling', 'Grzyb', 'towarzyska', '', 3, 6, 0),
('Spółka zoo', 'Grzyb', 'rywalizacja', '', 1, 4, 0),
('Thorgal', 'Grzyb', 'kooperacja', 'trudna', 1, 4, 80),
('Catan', 'Grzyb', 'rywalizacja', 'normalna', 3, 4, 60),
('Catan: miasta i rycerze', 'Grzyb', 'rywalizacja', 'trudna', 3, 4, 70);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id_gry` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL,
  `typ` varchar(50) DEFAULT NULL,
  `trudnosc` varchar(20) DEFAULT NULL,
  `min_graczy` int(11) DEFAULT NULL,
  `max_graczy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gry`
--

INSERT INTO `gry` (`id_gry`, `nazwa`, `typ`, `trudnosc`, `min_graczy`, `max_graczy`) VALUES
(1, 'Runewars', 'rywalizacja', 'trudna', 2, 4),
(2, 'Mezo', 'rywalizacja', '', 2, 4),
(3, 'Carcassonne', 'rywalizacja', 'łatwa', 2, 5),
(4, 'World of Warcraft: The Advanture Game', 'rywalizacja', 'średnia', 2, 4),
(5, 'World of Warcraft: Wrath of The Lich King', 'kooperacja', 'łatwa', 1, 5),
(6, 'Ubongo Junior', 'rywalizacja', 'łatwa', 1, 4),
(7, 'Gierki Małżeńskie', 'towarzyska', 'łatwa', 2, 8),
(8, 'Pandemia', 'kooperacja', '', 2, 4),
(9, 'Kupcy i żeglarze', 'rywalizacja', 'średnia', 2, 4),
(10, 'Diamenty', 'rywalizacja', 'łatwa', 2, 8),
(11, 'Honey Comb', 'rywalizacja', 'łatwa', 2, 4),
(12, 'Tak, Mroczny władco', 'towarzyska', 'łatwa', 4, 16),
(13, 'Catan Szybka gra karciana', 'rywalizacja', 'średnia', 2, 4),
(14, 'Eksplodujące kotki', 'towarzyska', 'łatwa', 2, 5),
(15, 'Siedem', 'rywalizacja', '', 2, 4),
(16, 'Taboo', 'towarzyska', 'średnia', 4, 12),
(17, 'Bright Future', 'kooperacja', 'średnia', 1, 4),
(18, 'Bright Future', 'rywalizacja', 'średnia', 2, 5),
(19, 'Super Things Rivals of Kaboom', 'dla dzieci', 'łatwa', 2, 4),
(20, 'Fantastyczne światy', 'rywalizacja', 'trudna', 2, 6),
(21, 'Warhammer Quest Karciana gra przygodowa', 'kooperacja', 'trudna', 1, 4),
(22, 'Kalambury', 'towarzyska', 'łatwa', 2, 20),
(23, '5 sekund', 'towarzyska', '', 3, 6),
(24, 'Carcassonne Junior', 'rywalizacja', 'łatwa', 2, 4),
(25, 'Karak', 'rywalizacja', 'łatwa', 2, 5),
(26, 'World of Warcraft Small World', 'rywalizacja', 'średnia', 2, 5),
(27, 'Cywilizacja Nowy Początek', 'rywalizacja', 'trudna', 2, 4),
(28, 'Abalone', 'rywalizacja', 'średnia', 2, 2),
(29, 'Pokémon Trading Card Game: Battle Academy', 'rywalizacja', '', 2, 2),
(30, 'Twisted Worms', 'dla dzieci', 'łatwe', 2, 4),
(31, '51st State', 'rywalizacja', 'średnie', 2, 4),
(32, 'Wyprawa do El Dorado', 'rywalizacja', 'łatwe', 2, 4),
(33, 'Zaginiona wyspa Arnak', 'rywalizacja', 'średnie', 1, 4),
(34, 'Kroniki zamku Avel', 'kooperacja', 'średnie', 1, 4),
(35, 'La Cucaracha', 'dla dzieci', 'łatwe', 2, 4),
(36, 'Ramses II', 'dla dzieci', 'łatwe', 1, 5),
(37, 'Pokemon Labirynt', 'dla dzieci', 'łatwe', 2, 4),
(38, 'Brzdęk Katakumby', 'rywalizacja', '', 2, 4),
(39, 'Robinson Crusoe', 'kooperacja', '', 1, 4),
(40, 'Uno Minecraft', 'dla dzieci', '', 2, 10),
(41, 'Hero Realms', 'rywalizacja', 'średnia', 2, 5),
(42, 'Azul', 'rywalizacja', 'średnia', 2, 4),
(43, 'Survive the island', 'rywalizacja', 'łatwa', 2, 5),
(44, 'Małe Epickie Podziemia', 'kooperacja', '', 1, 4),
(45, 'Legendy Krainy Andor', 'kooperacja', 'śrenida', 1, 4),
(46, '7 cudów świata', 'rywalizacja', 'śrenida', 3, 7),
(47, 'Catan', 'rywalizacja', 'średnia', 3, 4),
(48, 'Talizman Magia i Miecz', 'rywalizacja', 'średnia', 2, 6),
(49, 'Kroniki Zamku Avel', 'kooperacja', 'łatwa', 1, 4),
(50, 'Party Time', 'towarzyska', 'łatwa', 4, 20),
(51, 'Monopoly', 'rywalizacja', 'średnia', 2, 6),
(52, 'Potwory do Szafy', 'dla dzieci', 'łatwa', 1, 6),
(53, 'Kim jestem?', 'dla dzieci', 'łatwa', 2, 10),
(54, 'Ślimaki to Mięczaki', 'rywalizacja', 'łatwa', 2, 4),
(55, 'Złota Rybka', 'dla dzieci', 'łatwa', 2, 4),
(56, 'Lama Ekspres', 'dla dzieci', 'łatwa', 2, 6),
(57, 'Wsiąść do Pociągu', 'rywalizacja', '', 2, 5),
(58, 'Catan', 'rywalizacja', '', 3, 4),
(59, 'Potwory do szafy', 'dla dzieci', '', 2, 3),
(60, 'Quarto', 'towarzyska', '', 2, 2),
(61, 'La Cucaracha', 'dla dzieci', '', 2, 4),
(62, 'Karak', 'rywalizacja', '', 2, 5),
(63, 'Neuroshima Hex', 'rywalizacja', 'trudna', 2, 4),
(64, 'Wielki mur', 'kooperacja', 'trudna', 1, 5),
(65, 'List miłosny', 'towarzyska', 'łatwa', 2, 6),
(66, 'Eye2Eye', 'rywalizacja', 'b.łatwa', 2, 2),
(67, 'Story Cubs', 'towarzyska', 'b.łatwa', 2, 8),
(68, 'Gwint', 'rywalizacja', 'normalna', 2, 2),
(69, 'Koty', 'rywalizacja', 'b.łatwa', 2, 4),
(70, 'Karty dżentelmenów', 'towarzyska', 'łatwa', 3, 8),
(71, 'Memy', 'towarzyska', 'łatwa', 3, 8),
(72, 'I Know', 'towarzyska', 'normalna', 2, 6),
(73, 'Jungle Speed', 'rywalizacja', 'b.łatwa', 2, 6),
(74, 'Monopoly Imperium', 'rywalizacja', 'normalna', 2, 6),
(75, 'God of War', 'kooperacja', 'trudna', 1, 4),
(76, 'Battle of Hogwart', 'kooperacja', 'trudna', 2, 4),
(77, 'XCOM', 'kooperacja', 'trudna', 1, 4),
(78, 'Wiedźmin', 'rywalizacja', 'trudna', 1, 5),
(79, 'Tajemnicze domostwo', 'towarzyska', 'normalna', 2, 7),
(80, 'Osadnicy: Narodziny Imperium', 'rywalizacja', 'normalna', 1, 4),
(81, 'Plemiona wiatru', 'rywalizacja', 'normalna', 2, 5),
(82, 'Paper Tales', 'rywalizacja', 'normalna', 2, 5),
(83, 'Warcraft', 'rywalizacja', 'trudna', 1, 4),
(84, 'Poprzez wieki', 'rywalizacja', 'trudna', 2, 4),
(85, 'Konwój', 'rywalizacja', 'trudna', 2, 2),
(86, 'Sushi Go', 'rywalizacja', 'łatwa', 2, 5),
(87, 'Herbatka dla 2', 'rywalizacja', 'b.łatwa', 2, 2),
(88, 'Martwa zima', 'kooperacja', 'trudna', 2, 5),
(89, 'AI Space Puzzle', 'towarzyska', 'normalna', 1, 4),
(90, 'Hitster', 'towarzyska', 'b.łatwa', 2, 8),
(91, 'The Resistance', 'towarzyska', 'normalna', 5, 10),
(92, 'Cytadela', 'rywalizacja', 'normalna', 2, 8),
(93, 'Party Time', 'towarzyska', 'b.łatwa', 3, 10),
(94, 'Czarne historie 5', 'towarzyska', 'łatwa', 2, 15),
(95, '51 Stan', 'rywalizacja', 'trudna', 1, 4),
(96, 'Pandemia', 'kooperacja', 'normalna', 2, 4),
(97, '7 cudów świata: Architekci', 'rywalizacja', 'normalna', 2, 7),
(98, 'Nie powinieneś', 'towarzyska', 'b.łatwa', 3, 8),
(99, 'Guard of Atlantis', 'rywalizacja', 'trudna', 2, 10),
(100, 'Crused Castle', 'solo', 'trudna', 1, 1),
(101, 'Spy gay', 'dla dzieci', 'łatwa', 1, 4),
(102, 'Kroniki przygody: Wypraswa po księżycowe kamienie', 'dla dzieci', 'normalna', 1, 4),
(103, 'Kroniki przygody: Przepowienida starego dębu', 'dla dzieci', 'normalna', 1, 4),
(104, 'Spy gay: Zimowa przygoda', 'dla dzieci', 'łatwa', 1, 4),
(105, 'Klonowa dolina', 'rywalizacja', 'normalna', 1, 5),
(106, 'Znajdź pluszaka', 'dla dzieci', 'łatwa', 1, 2),
(107, 'Było sobie życie', 'rywalizacja', 'łatwa', 2, 5),
(108, 'Opowieści z Pryncypii', 'kooperacja', 'trudna', 1, 4),
(109, 'Boom Boom', 'dla dzieci', 'łatwa', 2, 4),
(110, 'Feluś i Gucio grają w emocje', 'dla dzieci', 'łatwa', 1, 4),
(111, 'Budowa zamku', 'dla dzieci', 'łatwa', 2, 4),
(112, 'Potwory do Szafy', 'dla dzieci', 'łatwa', 2, 3),
(113, 'Wirus', 'dla dzieci', 'łatwa', 2, 5),
(114, 'Smart games: Grizzly', 'solo', 'trudna', 1, 1),
(115, '5 sekund junior', 'dla dzieci', 'łatwa', 2, 5),
(116, 'Grzybobranie', 'dla dzieci', 'łatwa', 2, 4),
(117, 'Ale pary', 'dla dzieci', 'łatwa', 2, 4),
(118, 'Slot memory', 'dla dzieci', 'łatwa', 2, 4),
(119, 'Agenci', 'dla dzieci', '', 2, 5),
(120, 'Zakodowany zamek', 'dla dzieci', 'łatwa', 1, 2),
(121, 'Hodowla zwierzątek', 'rywalizacja', 'łatwa', 2, 5),
(122, 'Inkling', 'towarzyska', '', 3, 6),
(123, 'Spółka zoo', 'rywalizacja', '', 1, 4),
(124, 'Thorgal', 'kooperacja', 'trudna', 1, 4);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `gry_z_ocenami`
-- (See below for the actual view)
--
CREATE TABLE `gry_z_ocenami` (
`id_gry` int(11)
,`nazwa` varchar(255)
,`typ` varchar(50)
,`trudnosc` varchar(20)
,`min_graczy` int(11)
,`max_graczy` int(11)
,`wlasciciel` varchar(50)
,`ocena` int(3)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny_1`
--

CREATE TABLE `oceny_1` (
  `id_gry` int(3) DEFAULT NULL,
  `id_osoby` int(1) DEFAULT NULL,
  `ocena` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oceny_1`
--

INSERT INTO `oceny_1` (`id_gry`, `id_osoby`, `ocena`) VALUES
(1, 2, 80),
(2, 2, 0),
(3, 2, 70),
(4, 2, 60),
(5, 2, 60),
(6, 2, 60),
(7, 2, 40),
(8, 2, 0),
(9, 2, 50),
(10, 2, 90),
(11, 2, 60),
(12, 2, 70),
(13, 2, 60),
(14, 2, 50),
(15, 2, 0),
(16, 2, 80),
(17, 2, 80),
(18, 2, 0),
(19, 2, 80),
(20, 2, 80),
(21, 2, 0),
(22, 2, 90),
(23, 2, 0),
(24, 2, 70),
(25, 2, 80),
(26, 2, 80),
(27, 2, 80),
(28, 2, 90),
(29, 2, 0),
(30, 2, 20),
(31, 2, 50),
(32, 2, 100),
(33, 2, 100),
(34, 2, 90),
(35, 2, 70),
(36, 2, 60),
(37, 2, 90),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 100),
(42, 2, 90),
(43, 2, 100),
(44, 2, 0),
(45, 2, 70),
(46, 2, 90),
(47, 4, 85),
(48, 4, 75),
(49, 4, 80),
(50, 4, 70),
(51, 4, 65),
(52, 4, 90),
(53, 4, 75),
(54, 4, 60),
(55, 4, 65),
(56, 4, 70),
(57, 3, 0),
(58, 3, 80),
(59, 3, 0),
(60, 3, 0),
(61, 3, 60),
(62, 3, 60),
(63, 1, 100),
(64, 1, 100),
(65, 1, 75),
(66, 1, 70),
(67, 1, 80),
(68, 1, 95),
(69, 1, 70),
(70, 1, 75),
(71, 1, 80),
(72, 1, 85),
(73, 1, 80),
(74, 1, 75),
(75, 1, 90),
(76, 1, 85),
(77, 1, 100),
(78, 1, 85),
(79, 1, 90),
(80, 1, 90),
(81, 1, 85),
(82, 1, 80),
(83, 1, 90),
(84, 1, 95),
(85, 1, 75),
(86, 1, 80),
(87, 1, 75),
(88, 1, 90),
(89, 1, 85),
(90, 1, 80),
(91, 1, 85),
(92, 1, 90),
(93, 1, 75),
(94, 1, 75),
(95, 1, 85),
(96, 1, 90),
(97, 1, 95),
(98, 1, 50),
(99, 1, 0),
(100, 1, 70),
(101, 1, 80),
(102, 1, 90),
(103, 1, 70),
(104, 1, 50),
(105, 1, 0),
(106, 1, 50),
(107, 1, 80),
(108, 1, 90),
(109, 1, 70),
(110, 1, 100),
(111, 1, 50),
(112, 1, 80),
(113, 1, 100),
(114, 1, 20),
(115, 1, 80),
(116, 1, 20),
(117, 1, 40),
(118, 1, 5),
(119, 1, 0),
(120, 1, 40),
(121, 1, 50),
(122, 1, 0),
(123, 1, 0),
(124, 1, 80);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id_osoby` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `osoby`
--

INSERT INTO `osoby` (`id_osoby`, `imie`) VALUES
(1, 'Grzyb'),
(2, 'Mazur'),
(3, 'Rafal'),
(4, 'Krzyś');

-- --------------------------------------------------------

--
-- Struktura widoku `gry_z_ocenami`
--
DROP TABLE IF EXISTS `gry_z_ocenami`;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id_gry`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id_osoby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gry`
--
ALTER TABLE `gry`
  MODIFY `id_gry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
