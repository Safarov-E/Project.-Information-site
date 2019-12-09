-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 09 2019 г., 16:31
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `animal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descr_min` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `title`, `descr_min`, `description`, `image`) VALUES
(6, 'Большая панда', 'Больша́я па́нда, или бамбу́ковый медве́дь[2] (лат. Ailuropoda melanoleuca) — вид всеядных млекопитающих из семейства медвежьих[3][4] (Ursidae) со своеобразной чёрно-белой окраской шерсти, обладающих некоторыми признаками енотов. ', 'Больша́я па́нда, или бамбу́ковый медве́дь[2] (лат. Ailuropoda melanoleuca) — вид всеядных млекопитающих из семейства медвежьих[3][4] (Ursidae) со своеобразной чёрно-белой окраской шерсти, обладающих некоторыми признаками енотов. Единственный современный вид рода Ailuropus подсемейства Ailuropodinae. Большие панды обитают в горных регионах центрального Китая: Сычуань и Тибет. Со второй половины XX века панда стала чем-то вроде национальной эмблемы Китая. Китайское название (кит. упр. 熊猫, пиньинь: xióngmāo) означает «медведь-кошка». Его западное имя происходит от малой панды. Раньше его также называли пятнистым медведем (Ailuropus melanoleucus). Известны случаи нападений больших панд на человека[5][6].\r\n\r\nВ подотряде псообразных существует семейство пандовых (Ailuridae), куда большая панда не входит.', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
