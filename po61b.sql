-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 09 2020 г., 17:31
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `po61b`
--

-- --------------------------------------------------------

--
-- Структура таблицы `po61_admin_logs`
--

CREATE TABLE IF NOT EXISTS `po61_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `po61_admin_logs`
--

INSERT INTO `po61_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES
(1, 'admin', 1586434386, '127.0.0.1', 91, ''),
(2, 'admin', 1586434415, '127.0.0.1', 91, ''),
(3, 'admin', 1586434424, '127.0.0.1', 91, ''),
(4, 'admin', 1586434440, '127.0.0.1', 86, 'http://test1.ru/'),
(5, 'admin', 1586434446, '127.0.0.1', 48, ''),
(6, 'admin', 1586437822, '127.0.0.1', 26, 'Добро пожаловать'),
(7, 'admin', 1586437822, '127.0.0.1', 26, 'Приобретение и оплата скрипта'),
(8, 'admin', 1586437822, '127.0.0.1', 26, 'Шаблоны для DataLife Engine'),
(9, 'admin', 1586437822, '127.0.0.1', 26, 'Осуществление технической поддержки скрипта'),
(10, 'admin', 1586437859, '127.0.0.1', 1, 'Задание по уголовно-правовым проблемам ПО'),
(11, 'admin', 1586437939, '127.0.0.1', 74, 'gi'),
(12, 'admin', 1586438382, '127.0.0.1', 60, 'dle-rules-page'),
(13, 'admin', 1586438415, '127.0.0.1', 82, ''),
(14, 'admin', 1586438573, '127.0.0.1', 60, 'dle-rules-page');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_admin_sections`
--

CREATE TABLE IF NOT EXISTS `po61_admin_sections` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_banned`
--

CREATE TABLE IF NOT EXISTS `po61_banned` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `users_id` mediumint(8) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_banners`
--

CREATE TABLE IF NOT EXISTS `po61_banners` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `fpage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_banners`
--

INSERT INTO `po61_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`, `fpage`) VALUES
(1, 'header', 'Верхний баннер', '<div align="center"><a href="http://dle-news.ru/" target="_blank"><img src="http://test1.ru/templates/Default/images/_banner_.gif" style="border: none;" alt="" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_category`
--

CREATE TABLE IF NOT EXISTS `po61_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) NOT NULL DEFAULT '0',
  `posi` smallint(5) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_category`
--

INSERT INTO `po61_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`) VALUES
(1, 0, 1, 'Информация', 'main', '', '', '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_comments`
--

CREATE TABLE IF NOT EXISTS `po61_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `approve` (`approve`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_complaint`
--

CREATE TABLE IF NOT EXISTS `po61_complaint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `c_id` int(11) NOT NULL DEFAULT '0',
  `n_id` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `p_id` (`p_id`),
  KEY `n_id` (`n_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_email`
--

CREATE TABLE IF NOT EXISTS `po61_email` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `po61_email`
--

INSERT INTO `po61_email` (`id`, `name`, `template`) VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://test1.ru/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/.'),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://test1.ru/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/'),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://test1.ru/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/'),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://test1.ru/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/'),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://test1.ru/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/'),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://test1.ru/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://test1.ru/');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_files`
--

CREATE TABLE IF NOT EXISTS `po61_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_flood`
--

CREATE TABLE IF NOT EXISTS `po61_flood` (
  `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`),
  KEY `ip` (`ip`),
  KEY `id` (`id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_ignore_list`
--

CREATE TABLE IF NOT EXISTS `po61_ignore_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_images`
--

CREATE TABLE IF NOT EXISTS `po61_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_login_log`
--

CREATE TABLE IF NOT EXISTS `po61_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_logs`
--

CREATE TABLE IF NOT EXISTS `po61_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_lostdb`
--

CREATE TABLE IF NOT EXISTS `po61_lostdb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lostid` (`lostid`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_mail_log`
--

CREATE TABLE IF NOT EXISTS `po61_mail_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_notice`
--

CREATE TABLE IF NOT EXISTS `po61_notice` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_pm`
--

CREATE TABLE IF NOT EXISTS `po61_pm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `pm_read` tinyint(1) NOT NULL DEFAULT '0',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  `sendid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`),
  KEY `pm_read` (`pm_read`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_poll`
--

CREATE TABLE IF NOT EXISTS `po61_poll` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_poll_log`
--

CREATE TABLE IF NOT EXISTS `po61_poll_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_post`
--

CREATE TABLE IF NOT EXISTS `po61_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `short_story` text NOT NULL,
  `full_story` text NOT NULL,
  `xfields` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(200) NOT NULL DEFAULT '0',
  `alt_name` varchar(200) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`),
  KEY `alt_name` (`alt_name`),
  KEY `category` (`category`),
  KEY `approve` (`approve`),
  KEY `allow_main` (`allow_main`),
  KEY `date` (`date`),
  KEY `symbol` (`symbol`),
  KEY `comm_num` (`comm_num`),
  KEY `tags` (`tags`),
  KEY `fixed` (`fixed`),
  FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `po61_post`
--

INSERT INTO `po61_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `approve`, `fixed`, `allow_br`, `symbol`, `tags`, `metatitle`) VALUES
(5, 'admin', '2020-04-09 17:10:59', 'Задание выполнили студенты группы ПО-61б Перекрёстов Вадим и Трепаков Михаил', 'Задание выполнили студенты группы ПО-61б Перекрёстов Вадим и Трепаков Михаил', '', 'Задание по уголовно-правовым проблемам ПО', 'Задание выполнили студенты группы ПО-61б Перекрёстов Вадим и Трепаков МихаилЗадание выполнили студенты группы ПО-61б Перекрёстов Вадим и Трепаков Михаил', 'Вадим, Трепаков, группы, Перекрёстов, студенты, выполнили, Михаил, МихаилЗадание, Задание', '0', 'zadanie-po-ugolovno-pravovym-problemam-po', 0, 1, 1, 1, 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_post_extras`
--

CREATE TABLE IF NOT EXISTS `po61_post_extras` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `news_read` mediumint(8) NOT NULL DEFAULT '0',
  `allow_rate` tinyint(1) NOT NULL DEFAULT '1',
  `rating` mediumint(8) NOT NULL DEFAULT '0',
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  `related_ids` varchar(255) NOT NULL DEFAULT '',
  `access` varchar(150) NOT NULL DEFAULT '',
  `editdate` int(11) NOT NULL DEFAULT '0',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `po61_post_extras`
--

INSERT INTO `po61_post_extras` (`eid`, `news_id`, `news_read`, `allow_rate`, `rating`, `vote_num`, `votes`, `view_edit`, `disable_index`, `related_ids`, `access`, `editdate`, `editor`, `reason`, `user_id`) VALUES
(5, 5, 0, 1, 0, 0, 0, 0, 0, '', '', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_post_log`
--

CREATE TABLE IF NOT EXISTS `po61_post_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_question`
--

CREATE TABLE IF NOT EXISTS `po61_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_read_log`
--

CREATE TABLE IF NOT EXISTS `po61_read_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_rss`
--

CREATE TABLE IF NOT EXISTS `po61_rss` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_rss`
--

INSERT INTO `po61_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES
(1, 'http://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<td align="left" valign="top" class="news">{get}<br /><br /></td>', 5, '', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_rssinform`
--

CREATE TABLE IF NOT EXISTS `po61_rssinform` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_rssinform`
--

INSERT INTO `po61_rssinform` (`id`, `tag`, `descr`, `category`, `url`, `template`, `news_max`, `tmax`, `dmax`, `approve`, `rss_date_format`) VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'http://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_sendlog`
--

CREATE TABLE IF NOT EXISTS `po61_sendlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `date` (`date`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_spam_log`
--

CREATE TABLE IF NOT EXISTS `po61_spam_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `is_spammer` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `is_spammer` (`is_spammer`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_spam_log`
--

INSERT INTO `po61_spam_log` (`id`, `ip`, `is_spammer`, `email`, `date`) VALUES
(1, '127.0.0.1', 0, '', 1586438390);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_static`
--

CREATE TABLE IF NOT EXISTS `po61_static` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(200) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap` tinyint(1) NOT NULL DEFAULT '1',
  `disable_index` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  FULLTEXT KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_static`
--

INSERT INTO `po61_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`, `sitemap`, `disable_index`) VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br />Нажимая на кнопку \\"ПРИНИМАЮ\\", вы принимаете правила, описанные выше и даёте согласие на обработку данных в соответствии с <a href="http://www.consultant.ru/cons/cgi/online.cgi?req=doc&amp;base=LAW&amp;n=286959&amp;fld=134&amp;dst=1000000001,0&amp;rnd=0.21050761970264387#019597009181987213" target="_blank">федеральным законом №152-ФЗ «О персональных данных»</a>. Продолжая использовать сайт, вы соглашаетесь на сбор файлов cookie.<br /><div style="text-align:center;">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила', 'Общие правила', 2, '', 1586434274, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_static_files`
--

CREATE TABLE IF NOT EXISTS `po61_static_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `static_id` mediumint(8) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `onserver` varchar(255) NOT NULL DEFAULT '',
  `dcount` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `static_id` (`static_id`),
  KEY `onserver` (`onserver`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_subscribe`
--

CREATE TABLE IF NOT EXISTS `po61_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_tags`
--

CREATE TABLE IF NOT EXISTS `po61_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_usergroups`
--

CREATE TABLE IF NOT EXISTS `po61_usergroups` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  `max_comment_day` smallint(6) NOT NULL DEFAULT '0',
  `max_images` smallint(6) NOT NULL DEFAULT '0',
  `max_files` smallint(6) NOT NULL DEFAULT '0',
  `disable_news_captcha` smallint(6) NOT NULL DEFAULT '0',
  `disable_comments_captcha` smallint(6) NOT NULL DEFAULT '0',
  `pm_question` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_feedback` tinyint(1) NOT NULL DEFAULT '1',
  `feedback_question` tinyint(1) NOT NULL DEFAULT '0',
  `files_type` varchar(255) NOT NULL DEFAULT '',
  `max_file_size` mediumint(9) NOT NULL DEFAULT '0',
  `files_max_speed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `po61_usergroups`
--

INSERT INTO `po61_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`, `max_comment_day`, `max_images`, `max_files`, `disable_news_captcha`, `disable_comments_captcha`, `pm_question`, `captcha_feedback`, `feedback_question`, `files_type`, `max_file_size`, `files_max_speed`) VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style="color:red">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'zip,rar,exe,doc,pdf,swf', 4096, 0),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `po61_users`
--

CREATE TABLE IF NOT EXISTS `po61_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_num` mediumint(8) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) DEFAULT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `icq` varchar(20) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(16) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_users`
--

INSERT INTO `po61_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `icq`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`) VALUES
('st2010.phlatline@yandex.ru', '897c8fde25c5cc5270cda61425eed3c8', 'admin', 1, 1, 0, 1, '1586438415', '1586434274', '', 1, '', '', '', '', '', '', '', 0, 0, '', '', '', '', '127.0.0.1', 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_views`
--

CREATE TABLE IF NOT EXISTS `po61_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `po61_vote`
--

CREATE TABLE IF NOT EXISTS `po61_vote` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  `grouplevel` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `po61_vote`
--

INSERT INTO `po61_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`, `grouplevel`) VALUES
(1, 'all', 0, '2020-04-09 16:11:14', 'Оцените работу движка', 'Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился', 1, '', '', 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `po61_vote_result`
--

CREATE TABLE IF NOT EXISTS `po61_vote_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer` (`answer`),
  KEY `vote_id` (`vote_id`),
  KEY `ip` (`ip`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
