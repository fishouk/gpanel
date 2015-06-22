-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 18 2015 г., 19:38
-- Версия сервера: 5.5.43
-- Версия PHP: 5.3.10-1ubuntu3.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `gpanel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gp_accounts`
--

CREATE TABLE IF NOT EXISTS `gp_accounts` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Уникальный Идентификатор',
  `login` varchar(255) DEFAULT NULL COMMENT 'Логин',
  `password` varchar(255) DEFAULT NULL COMMENT 'Пароль',
  `email` varchar(255) DEFAULT NULL COMMENT 'Электронная почта',
  `verify` char(1) DEFAULT '0' COMMENT 'Подтверждение аккаунта',
  `role` char(1) DEFAULT '1' COMMENT 'Должность',
  `token` text COMMENT 'Токен API',
  `money` int(5) DEFAULT '0' COMMENT 'Монетки',
  `name` varchar(255) DEFAULT NULL COMMENT 'Имя',
  `last_name` varchar(255) DEFAULT NULL COMMENT 'Фамилия',
  `manager_id` int(5) DEFAULT NULL COMMENT 'УИ менеджера',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Телефон клиента',
  `uin` int(10) DEFAULT NULL COMMENT 'ICQ UIN',
  `code` int(5) DEFAULT NULL COMMENT 'Код',
  `date` varchar(255) DEFAULT NULL COMMENT 'Дата регистрации',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `gp_accounts`
--

INSERT INTO `gp_accounts` (`id`, `login`, `password`, `email`, `verify`, `role`, `token`, `money`, `name`, `last_name`, `manager_id`, `phone`, `uin`, `code`, `date`) VALUES
(1, 'aspect', '123123', 'spam@creativeweb.moscow', '1', '5', NULL, 0, 'Максим', 'Янин', 1, '+79163667805', 3704476, 25011, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gp_changelog`
--

CREATE TABLE IF NOT EXISTS `gp_changelog` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `gp_changelog`
--

INSERT INTO `gp_changelog` (`id`, `date`, `title`, `text`) VALUES
(1, '2015 06 17', 'v.0 ОППА ГОВНО-ХОСТ', 'Список правок:\r\nфыв\r\n фыва\r\nы вп\r\nфы вфы\r\nфыпфывп \r\nфыв\r\nп ф\r\nып \r\nфыв\r\nп \r\nыф\r\nп\r\nф\r\nывп вапфвапвфап фап фвап фап вфап '),
(2, '2015 06 18', 'v.0.0 ГОВНО-ХОСТ', 'Тут был я');

-- --------------------------------------------------------

--
-- Структура таблицы `gp_role`
--

CREATE TABLE IF NOT EXISTS `gp_role` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `gp_role`
--

INSERT INTO `gp_role` (`id`, `title`) VALUES
(1, 'Клиент'),
(2, 'Менеджер'),
(3, 'Ресселер'),
(4, 'Тех.специалист'),
(5, 'Администратор');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
