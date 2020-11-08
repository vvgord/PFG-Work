-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 08 2020 г., 12:59
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pfg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `c_trieda`
--

CREATE TABLE `c_trieda` (
  `idc_trieda` int(11) NOT NULL,
  `nazovc_trieda` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `skupina` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Дамп данных таблицы `c_trieda`
--

INSERT INTO `c_trieda` (`idc_trieda`, `nazovc_trieda`, `skupina`) VALUES
(1, '1.A', 1),
(2, '2.C', 2),
(3, '3.B', 2),
(4, '3.A', 2),
(5, '4.B', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pohlavie`
--

CREATE TABLE `pohlavie` (
  `idpohlavie` int(9) NOT NULL,
  `pohlavie` varchar(50) CHARACTER SET utf8 COLLATE utf8_slovak_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_slovak_ci;

--
-- Дамп данных таблицы `pohlavie`
--

INSERT INTO `pohlavie` (`idpohlavie`, `pohlavie`) VALUES
(1, 'Muž'),
(2, 'Žena');

-- --------------------------------------------------------

--
-- Структура таблицы `preklad`
--

CREATE TABLE `preklad` (
  `idpreklad` int(9) NOT NULL,
  `jazyk` varchar(2) COLLATE utf8_slovak_ci NOT NULL,
  `retazec` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `preklad` text COLLATE utf8_slovak_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Дамп данных таблицы `preklad`
--

INSERT INTO `preklad` (`idpreklad`, `jazyk`, `retazec`, `preklad`) VALUES
(1, 'sk', 'pfg', 'Programovacie a interaktívne prostredia'),
(2, 'en', 'pfg', 'Programming and interactive environment'),
(3, 'sk', 'nadpis', 'Toto je rozvrh:'),
(4, 'en', 'nadpis', 'This is schedule:');

-- --------------------------------------------------------

--
-- Структура таблицы `rozvrh`
--

CREATE TABLE `rozvrh` (
  `idrozvrh` int(9) NOT NULL,
  `den` int(3) NOT NULL,
  `hodina` int(3) NOT NULL,
  `predmet` varchar(20) COLLATE utf8_slovak_ci NOT NULL,
  `trieda` varchar(2) COLLATE utf8_slovak_ci NOT NULL,
  `skupina` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Дамп данных таблицы `rozvrh`
--

INSERT INTO `rozvrh` (`idrozvrh`, `den`, `hodina`, `predmet`, `trieda`, `skupina`) VALUES
(1, 2, 2, 'pfg', '4b', 2),
(2, 2, 3, 'pfg', '4b', 2),
(3, 2, 1, 'irs', '4b', 2),
(4, 4, 0, 'pro', '3a', 1),
(5, 4, 5, 'tv', '1a', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uzivatelia`
--

CREATE TABLE `uzivatelia` (
  `iduzivatelia` int(9) NOT NULL,
  `meno` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `priezvisko` varchar(100) CHARACTER SET utf16 COLLATE utf16_slovak_ci NOT NULL,
  `id_pohlavie` int(2) NOT NULL,
  `datum_narodenia` date NOT NULL,
  `id_c_trieda` int(3) NOT NULL DEFAULT 0,
  `logname` varchar(150) COLLATE utf8_slovak_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_slovak_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci COMMENT='tabulka pouzivatela chornyi 14.10.2020';

--
-- Дамп данных таблицы `uzivatelia`
--

INSERT INTO `uzivatelia` (`iduzivatelia`, `meno`, `priezvisko`, `id_pohlavie`, `datum_narodenia`, `id_c_trieda`, `logname`, `password`) VALUES
(1, 'Gordii', 'Chornyi', 1, '2020-11-12', 3, 'vvgord', '8cb2237d0679ca88db6464eac60da96345513964'),
(2, 'Matej', 'Holarek', 1, '2002-01-01', 3, 'Cody', '8cb2237d0679ca88db6464eac60da96345513964'),
(3, 'David', 'Magyerka', 1, '2002-01-01', 3, 'G-G', '8cb2237d0679ca88db6464eac60da96345513964'),
(4, 'Eva', 'Burunova', 2, '2004-12-21', 1, 'Bismuth', '8cb2237d0679ca88db6464eac60da96345513964');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `c_trieda`
--
ALTER TABLE `c_trieda`
  ADD PRIMARY KEY (`idc_trieda`);

--
-- Индексы таблицы `pohlavie`
--
ALTER TABLE `pohlavie`
  ADD PRIMARY KEY (`idpohlavie`);

--
-- Индексы таблицы `preklad`
--
ALTER TABLE `preklad`
  ADD PRIMARY KEY (`idpreklad`);

--
-- Индексы таблицы `rozvrh`
--
ALTER TABLE `rozvrh`
  ADD PRIMARY KEY (`idrozvrh`);

--
-- Индексы таблицы `uzivatelia`
--
ALTER TABLE `uzivatelia`
  ADD PRIMARY KEY (`iduzivatelia`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `c_trieda`
--
ALTER TABLE `c_trieda`
  MODIFY `idc_trieda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `pohlavie`
--
ALTER TABLE `pohlavie`
  MODIFY `idpohlavie` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `preklad`
--
ALTER TABLE `preklad`
  MODIFY `idpreklad` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `rozvrh`
--
ALTER TABLE `rozvrh`
  MODIFY `idrozvrh` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `uzivatelia`
--
ALTER TABLE `uzivatelia`
  MODIFY `iduzivatelia` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
