-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 24 2019 г., 12:32
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

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
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category`, `slug`, `image`, `description`) VALUES
(1, 'Медведи', '', '', 'Просто медведи!'),
(2, 'Австралия', '', '', 'Животные из австралии'),
(3, 'Разное', '', '', 'разные животные');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `descr_min` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `title`, `category`, `descr_min`, `description`, `image`) VALUES
(30, 'Коала-жираф-1', 2, 'вид  сумчатых, обитающий в Австралии. Единственный современный представитель семейства коаловых (Phascolarctidae) из отряда двурезцовых сумчатых (Diprotodontia)', 'Слово 3коала (англ. koala) происходит от даракского[en] слова gulawan или его укороченной формы gula. Первоначально транскрибированное на латинский шрифт как cullawine, его постепенно вытеснил вариант koola. Хотя гласная /u/ была первоначально написана в английской орфографии как «оо», она, возможно по ошибке, было изменена на «oa»[2]. Ошибочно считалось, что это слово означало «не пьёт»', 'lion.png'),
(31, 'Кенгуру 1', 2, ' общеупотребительное 2 название группы животных из отряда двурезцовых сумчатых млекопитающих[1]. В широком смысле термин кенгуру относится ко всем представителям семейства кенгуровых.', 'Слово 3 «кенгуру» происходит от «kanguroo» или «gangurru» — названия этого животного на кууку-йимитирском языке аборигенов Австралии (язык пама-ньюнгской семьи), услышанного Джеймсом Куком от аборигенов во время его высадки на северо-восточном берегу Австралии в 1770 году', 'cat.png'),
(33, 'Броненосец', 3, 'семейство млекопитающих отряда броненосцев. Обитают в Центральной и Южной Америке', 'Панцирь составляют головной, плечевой и тазовый щиты и ряд обручевидных полос, опоясывающих тело сверху и с боков. Части панциря связаны между собой эластичной соединительной тканью, придающей подвижность всему панцирю. Поверх панциря лежат тонкие роговые пластинки квадратной или полигональной формы, образованные эпидермисом. Такие же щитки образуют броню на конечностях; хвост покрыт костяными кольцами. Живот и внутренние части лап у броненосца мягкие, незащищённые, покрытые жёсткими волосами. Волоски также растут между костными пластинками; иногда пронизывают и роговые чешуйки. Окраска панциря меняется от коричневой до розовой, волос — от серовато-коричневой до белой.', '413px-Dasypus_novemcinctus.jpg'),
(34, 'Кролик', 2, 'общее название нескольких родов млекопитающих из семейства зайцевых (в том числе и домашних кроликов).', 'Кролики чётко отличаются от зайцев альтрициальностью (термин восходит к лат. altrīx, īcis f. [altor] кормилица, воспитательница, также как термин «альтрициальный», англ. altricial — незрелорождающийся, — применяемый, в частности, к гнездовым птицам и к таким млекопитающим, как крысы, медведи и т. п.) — их детёныши рождаются слепыми, лишёнными мехового покрова, растут в норах. Зайцы, напротив, — прекоциалы: зайчата появляются на свет покрытыми шерстью, с открытыми глазами. Все кролики, за исключением американского кролика, живут в подземных норах, часто глубоких и сложных; тогда как зайцы живут в простых гнёздах, расположенных на земле (так же делают и американские кролики). Зайцы к тому же обычно не живут группами. Зайцы в целом больше, чем кролики, их уши длиннее, и они имеют на своём меху чёрные отметки. Зайцы до сих пор не приручены — кролики же часто выступают в качестве домашних питомцев.', '398px-Sylvilagus_audubonii.jpg'),
(38, 'Панда', 1, 'бамбуковый медведь, одно из редчайших животных, занесённых в международную Красную книгу; единственный современный представитель рода большие панды (Ailuropoda) и подсемейства Ailuropodinae', 'бамбуковый медведь, одно из редчайших животных, занесённых в международную Красную книгу; единственный современный представитель рода большие панды (Ailuropoda) и подсемейства Ailuropodinae', '360px-Giant_panda_(Ailuropoda_melanoleuca),_Giant_Panda_Habitat,_Ocean_Park_Hong_Kong_-_20130808-04.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `post` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `tag`, `post`) VALUES
(1, 'млекопитающее', 29),
(4, 'хвост', 33),
(5, 'прыгает', 34),
(6, 'шея', 29),
(7, 'панда', 38),
(8, 'медведь', 38),
(9, 'милота', 38),
(36, 'crest', 31),
(47, 'жираф', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hash` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `hash`) VALUES
(1, 'alex', 'a@ua', '827ccb0eea8a706c4c34a16891f84e7b', 'xZkiCbnyqDtlckPMjAaTb');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
