# test1.ru
Задание по уголовно-правовым проблемам ПО
Для развёртывания сайта требуется установка любого локального сервера (прим. Denwer http://www.denwer.ru/)
Распаковываем архив в ПапкаДенвера/home/test1.ru/www/ предварительно удалив оттуда всё. 
Cоздаём новую бд http://localhost/denwer/Tools/addmuser/index.php
Открываем её в phpmyadmin http://localhost/Tools/phpmyadmin/index.php
И импортируем в неё po61b.sql
Далее открываем \test1.ru\www\engine\data\dbconfig.php
и в файле меняем: 
 ("DBNAME", "имя бд");

define ("DBUSER", "имя пользователя");

define ("DBPASS", "ну и пароль"); 

Сайт развёрнут и готов к использованию по адресу test1.ru
