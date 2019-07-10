-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 10 2019 г., 21:37
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wd04-filmoteka-mishin`
--
CREATE DATABASE IF NOT EXISTS `wd04-filmoteka-mishin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wd04-filmoteka-mishin`;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- ССЫЛКИ ТАБЛИЦЫ `films`:
--

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `year`, `description`, `photo`) VALUES
(1, 'Облачный атлас 2015', 'драма', 2015, '', '22079502.jpg'),
(2, 'Такси 4', 'боевик', 2000, 'Молодой таксист Даниэль помешан на быстрой езде. Как ураган, проносится он по извилистым улицам Марселя на своём мощном ревущем звере «Пежо», пугая пассажиров и прохожих. Неподкупный полицейский Эмильен вынуждает его помочь в поимке банды грабителей, ускользающих от полиции на своих неуловимых «Мерседесах». И до самого конца не ясно, кто же сможет удержаться на крутом вираже.', '95459200.jpg'),
(4, 'Элизиум часть 2', 'фантастика', 2018, '', '22008867.jpg'),
(10, 'Интерстеллар', 'фантастика', 2010, 'Когда засуха приводит человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину (которая предположительно соединяет области пространства-времени через большое расстояние) в путешествие, чтобы превзойти прежние ограничения для космических путешествий человека и переселить человечество на другую планету.', '69494499.jpg'),
(11, 'Властелин колец: Две крепости', 'фэнтези', 2002, 'Братство распалось, но Кольцо Всевластья должно быть уничтожено. Фродо и Сэм вынуждены доверить свои жизни Голлуму, который взялся провести их к вратам Мордора. Громадная Армия Сарумана приближается: члены братства и их союзники готовы принять бой. Битва за Средиземье продолжается.', '41668096.jpg'),
(12, 'Алита: Боевой Ангел', 'фэнтези', 2019, 'Действие фильма происходит через 300 лет после Великой войны в XXVI веке. Доктор Идо находит останки женщины-киборга. После починки киборг ничего не помнит, но обнаруживает, что в состоянии пользоваться боевыми приемами киборгов. Начинаются поиски утерянных воспоминаний.', '96085108.jpg'),
(17, '1', '1', 1, '1', ''),
(18, '1', '1', 1, '1', '87494703.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- ССЫЛКИ ТАБЛИЦЫ `users`:
--

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'admin', '123456');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
