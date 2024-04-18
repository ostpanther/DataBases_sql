USE audiobookService

/*	1	*/

SELECT * FROM audiobookService.`User`; 

UPDATE `User` 
SET email='mishstudentHSE@yandex.ru'
WHERE user_id=1;

UPDATE `User`
SET email ='personJAKE@rambler.ru'
WHERE user_id=14;

UPDATE `User` 
SET password='vcwm(13)21emqe32'
WHERE username='person12'; 

DELETE FROM `User` 
WHERE user_id=22;

ALTER TABLE BookFile CHANGE booke_file_size book_file_size INT;

/*	2	*/

/*	Выберите уникальные названия книг, имена авторов и жанр книг
 	(У одной книги может быть несколько авторов и жанров)	*/

SELECT DISTINCT title, author_name, genre_name 
FROM Audiobook ab, GenreAudiobook ga, AuthorAudiobook aa, Author a, Genre g  
WHERE ab.audiobook_id=aa.audiobook_id AND
a.author_id=aa.author_id AND 
ga.audiobook_id=ab.audiobook_id AND 
ga.genre_id=g.genre_id;

/*	3	*/

/*	3.1 Какой-то вложеный select 
	(скалярный подзапрос(1 строка 1 столбец))*/

SELECT (SELECT author_name FROM Author LIMIT 1 ) AS Author;

/*	Вытащите пользователей, которые прослушали более 3х книг*/

SELECT username FROM User 
WHERE user_id IN (
    SELECT user_id 
    FROM ListenHistory 
    GROUP BY user_id 
    HAVING COUNT(user_id) > 3
);

/*	3.2 Который нельзя переписать без вложенного запроса
	Найдите автора, у которого суммарный размер файлов больше чем у остальных */	
	
SELECT a.author_name, SUM(bf.book_file_size) AS total_size FROM Author a
JOIN audiobookService.AuthorAudiobook aa ON a.author_id = aa.author_id
JOIN audiobookService.BookFile bf ON aa.audiobook_id = bf.audiobook_id
GROUP BY a.author_name
HAVING total_size = (
	/*условие для ограничения получаемых данных*/
    SELECT MAX(sub.total_size) FROM (
        SELECT aa.author_id, SUM(bf.book_file_size) AS total_size
        FROM audiobookService.AuthorAudiobook aa
        JOIN audiobookService.BookFile bf ON aa.audiobook_id = bf.audiobook_id
        GROUP BY aa.author_id
    ) sub
);

/*	3.3c with (Обобщённое табличное выражение 'CTE')
	Найдите пользователей, которые прослушали Гюго.
  	Выведите Пользователя, автора, название книги и ее прослушанные части файла */

WITH UsersListenHugo AS
	(SELECT username, author_name, title, sequence FROM Author a
	JOIN AuthorAudiobook aa ON aa.author_id = a.author_id
	JOIN Audiobook ab ON ab.audiobook_id = aa.audiobook_id
	JOIN ListenHistory lh ON lh.audiobook_id = ab.audiobook_id
	JOIN BookFile bf ON bf.book_file_id = lh.book_file_id
	JOIN `User` u ON u.user_id = lh.user_id
	WHERE author_name='Hugo V.')
	
SELECT * FROM UsersListenHugo;

/*	4	*/

/*	4.1 Просто Join 
	Выведите все книги и их жанры. Отсортируйте по названию*/

SELECT title, genre_name FROM audiobookService.Audiobook a 
JOIN audiobookService.GenreAudiobook ga ON ga.audiobook_id = a.audiobook_id
JOIN audiobookService.Genre g ON g.genre_id = ga.genre_id 
ORDER BY title;

/*	4.2 left/right Join к месту 
	Выведите всех пользователей, их id и книги, которые они прослушали. 
	В результате также должны быть пользователи которые не прослушали ни одной книги*/

SELECT u.user_id, u.username, title FROM audiobookService.Audiobook a
RIGHT JOIN audiobookService.ListenHistory lh ON lh.audiobook_id = a.audiobook_id
RIGHT JOIN audiobookService.User u ON u.user_id = lh.user_id
ORDER BY title;

/*	5	*/

/*	Отберите аудиофайлы Толтого и Гоголя, 
	при условии что длина каждого файла должна превышать 150 мин.
	Выведите названия файлов, общий размер аудиокниги, и
	отсортируйте по убыванию размера файлов*/

SELECT bf.book_file_name, sum(book_file_size) as total_sum_file 
FROM audiobookService.BookFile bf 
JOIN audiobookService.AuthorAudiobook aa ON aa.audiobook_id = bf.audiobook_id 
JOIN audiobookService.Author a ON a.author_id = aa.author_id 
WHERE author_name = 'Гоголь Н.В.' OR author_name = 'Толстой Л.Н.' AND duration > 150
GROUP BY book_file_name, aa.audiobook_id 
HAVING sum(book_file_size) > 0
ORDER BY total_sum_file DESC;

/*	6	*/

/*	6.1 Тригер который будет добавлять author_id в таблицу AuthorAudiobook 
	после добавления нового author_name в таблицу Author*/

/*	1)
 
CREATE DEFINER=`root`@`%` TRIGGER `incr_author_id` AFTER INSERT ON `Author` FOR EACH ROW INSERT INTO audiobookService.AuthorAudiobook(author_id)
SELECT (NEW.author_id)*/

/*	проверка:	*/
--
INSERT INTO audiobookService.Author (author_name)
VALUES ('Бальзак О.');

INSERT INTO audiobookService.Author (author_name)
VALUES ('Талеб Н.Н.');

DELETE FROM audiobookService.Author 
WHERE author_name='Талеб Н.Н.'

[DROP TRIGGER audiobookService.adding_new_author];

--
/*	2) Это 2 триггера на вставку и удаление
 
CREATE TRIGGER audiobook_add_id_to_genre
AFTER INSERT
ON Audiobook FOR EACH ROW
INSERT INTO audiobookService.GenreAudiobook(audiobook_id)
SELECT (NEW.audiobook_id)
	
	3)
	
CREATE TRIGGER `del_id` 
BEFORE DELETE ON `Audiobook` 
FOR EACH ROW 
DELETE FROM audiobookService.GenreAudiobook 
WHERE GenreAudiobook.audiobook_id=OLD.audiobook_id
*/

/*	проверка	*/

INSERT INTO audiobookService.Audiobook (title, description)
VALUES ('Гобсек', Null);

DELETE FROM audiobookService.Audiobook 
WHERE audiobook_id=26


/*	6.2 Процедуры	*/

/*	процедура, которая выдает количество книг каждого автора
 
 CREATE PROCEDURE audiobookService.author_book_cnt()
BEGIN
    SELECT a.author_name, COUNT(aa.audiobook_id) AS audiobook_count
    FROM Author a
    JOIN audiobookService.AuthorAudiobook aa ON aa.author_id = a.author_id
    GROUP BY a.author_name
   	ORDER BY audiobook_count DESC ;
END  
*/

/*DROP PROCEDURE IF EXISTS author_book_cnt;*/

CALL author_book_cnt();

/*	2)
 
	Процедура с параметрами(можно закинуть айдишник автора и выдаст кол-во книг)
	
CREATE PROCEDURE audiobookService.cnt_by_author(IN cnt CHAR(3))
BEGIN
    SELECT a.author_id, a.author_name, COUNT(aa.audiobook_id) AS audiobook_count
    FROM Author a
    JOIN audiobookService.AuthorAudiobook aa ON aa.author_id = a.author_id
    WHERE a.author_id = cnt
    GROUP BY a.author_name, a.author_id
   	ORDER BY audiobook_count DESC;
END
*/

CALL cnt_by_author(3);

/*индексация*/
CREATE INDEX index_author
ON Author (author_name);



/*	11	*/
/*	оконная функция (агрегирующая)	*/

SELECT DISTINCT book_file_id, DISTINCT book_file_name,
	SUM(book_file_size) OVER (PARTITION BY book_file_name) AS book_total_size,
	AVG(book_file_size) OVER (PARTITION BY book_file_name) AS book_AVG_size,
	MIN(book_file_size) OVER (PARTITION BY book_file_name) AS book_MIN_size,
	MAX(book_file_size) OVER (PARTITION BY book_file_name) AS book_MAX_size
FROM BookFile 
ORDER BY book_file_id;



/*	запрос из л/р	*/
SELECT user_id, COUNT(DISTINCT audiobook_id) AS total_books_listened
FROM ListenHistory 
GROUP BY user_id
ORDER BY total_books_listened DESC
LIMIT 3;



