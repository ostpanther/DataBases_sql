CREATE TABLE `audiobookService`.`User` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50),
  `email` VARCHAR(50),
  `password` VARCHAR(50),
  PRIMARY KEY (`user_id`)
);


CREATE TABLE `audiobookService`.`Audiobook` (
  `audiobook_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(126),
  `description` TEXT,
  PRIMARY KEY (`audiobook_id`)
 );

CREATE TABLE `audiobookService`.`BookFile` (
  `book_file_id` INT NOT NULL AUTO_INCREMENT,
  `audiobook_id` INT,
  `book_file_name` VARCHAR(146),
  `book_file_type` VARCHAR(50),
  `booke_file_size` INT,
  `duration` INT,
  `sequence` INT,
  PRIMARY KEY (`book_file_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook`(`audiobook_id`)
 );

CREATE TABLE `audiobookService`.`ListenHistory` (
  `history_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT,
  `audiobook_id` INT,
  `book_file_id` INT,
  `last_position_time` TIME,
  PRIMARY KEY (`history_id`),
  FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook`(`audiobook_id`),
  FOREIGN KEY (`book_file_id`) REFERENCES `BookFile`(`book_file_id`)
);

CREATE TABLE `audiobookService`.`Author` (
  `author_id` INT NOT NULL AUTO_INCREMENT,
  `author_name` VARCHAR(60),
  PRIMARY KEY (`author_id`)
);

CREATE TABLE `audiobookService`.`AuthorAudiobook` (
  `author_audiobook_id` INT NOT NULL AUTO_INCREMENT,
  `author_id` INT,
  `audiobook_id` INT,
  PRIMARY KEY (`author_audiobook_id`),
  FOREIGN KEY (`author_id`) REFERENCES `Author`(`author_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook`(`audiobook_id`)
 );

CREATE TABLE `audiobookService`.`Genre` (
  `genre_id` INT NOT NULL AUTO_INCREMENT,
  `genre_name` VARCHAR(50),
  PRIMARY KEY (`genre_id`)
);

CREATE TABLE `audiobookService`.`GenreAudiobook` (
  `genre_audiobook_id` INT NOT NULL AUTO_INCREMENT,
  `genre_id` INT,
  `audiobook_id` INT,
  PRIMARY KEY (`genre_audiobook_id`),
  FOREIGN KEY (`genre_id`) REFERENCES `Genre`(`genre_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `Audiobook`(`audiobook_id`)
);


INSERT INTO User(username, email,password)
VALUES 
	('Misha','moev.michail@mail.ru','misha123'),
	('Olga2001','ozerolga@mail.ru','olga22991'),
	('Gleb007', 'engineersql@gmail.com', '987654321Gleb'),
	('NastiaKolt', 'kolt1554@rambler.ru', 'cnsdnoND!1231'),
	('MaratCoolGuy','policemanMarat@mail.ru', 'QQQ123ooo'),
	('jamesOKINSON','okinator@hotmail.com', 'MIdcsmDW12dkq'),
	('WillSmithLegend',	'willofficailActor@gmail.com', 'iloverapXY1321'),
	('ObamaUSA', 'real.OG1961@whitehouse.com', 'loveMichelle1964'),
	('VasiaNEpupkin1998', 'pupkin.net@mail.ru',	'imnotpupkin123'),
	('BigBoss1', 'rurapper@mail.ru', 'jCEomc1dedid!!d2'),
	('Johnsmith00', 'smithjohn@gmail.com', 'wcIJ@ind3ow1111'),
	('JaneHot', 'icegirl1586@hotmail.com', 'wcaioH*3io2dmod'),
	('SarahKonnor', 'terminator@skynet.io', 'killallhuman22222'),
	('person12', Null, Null),
	('Hieronimous', 'coolatrist@rambler.ru', 'ckw3edmco2'),
	('Jojo123',	Null,'wecOIM(#Dccds'),
	('kinat0d',	Null, 'csdcmO(PX#asc'),
	('RemboReader', 'remboGuki@gmail.com', 'cwewewc311DQ@1!!QCXE'),
	('BIZZARDCOMP', 'gamesindustry@game.com', 'cwecwwm23mo9MDOIWX@Iod1NID#iqx'),
	('BOBO1', 'ccromw21@mail.ru' ,'AudiWEK91e3m'),
	('goblinKnight', 'killergoblin@gmail.com', 'ckcmmIO#oi3dcmw'),
	('UU123', Null, Null),
	('User2501', Null, 'cwwcw_)Kcw433'),
	;

ALTER TABLE Author
DROP COLUMN author_surname;

INSERT INTO Author(author_name)
VALUES

	('Пушкин А.С.'),
	('Толстой Л.Н.'),
	('Достоевский Ф.М.'),
	('Чехов А.П.'),
	('Гоголь Н.В.'),
	('Тургенев И.С.'),
	('Лермонтов М.Ю.'),
	('Булгаков М.А.'),
	('Солженицын А.И.'),
	('Акунин Б.А.'),
	('Dreiser T.'),
	('Hemingway E.'),
	('Austen J.'),
	('Hugo V.'),
	('Orwell G.')
	;

INSERT Audiobook (title, description)
VALUES 
	('Онегин','Молодой дворянин, разочарованный и циничный, отвергает любовь искренней, чистой девушки. Позже он понимает, что совершил непростительную ошибку, но уже слишком поздно – его возлюбленная замужем за другим.'),
	('Война и мир','Это роман-эпопея, описывающий жизнь русского общества во времена войн с Наполеоном.'),
	('Преступление и наказание','Роман о студенте Раскольникове, который совершает убийство и сталкивается с своими моральными противоречиями.'),
	('Идиот','История о простом и невинном человеке, который выглядит как идиот в глазах общества, но на самом деле обладает глубоким внутренним миром.'),
	('Вишневый сад','Комедия в четырех действиях, в которой автор описывает жизнь замечательных, мечтательных людей в связи с уничтожением деревни Любимово.'),
	('Мертвые души','Роман о недобросовестном помещике, который покупает умерших крестьян для того чтобы списать их в списке крепостных.'),
	('Отцы и дети','Роман о столкновении различных поколений и мировоззрений в России 19 века.'),
	('Герой нашего времени','Лермонтов высмеивает современное русское общество, показывая нравственное упадок человечества.'),
	('Мастер и Маргарита','Сатирический роман о том, как дьявол приезжает в Москву и развлекается на людях, демонстрируя их бездушное лицемерие.'),
	('Один день Ивана Денисовича','Описывает жизнь заключенного Ивана Денисовича Шухова в лагере на Севере.'),
	('Азазель', 'Первая книга детективной серии о Эрасте Фандорине Транскрибировано.'),
	('Финансист', 'США, XIX век. Молодой самоуверенный финансист делает большие успехи, но волею случая становится банкротом. Любовь красивой женщины, чутьё и фортуна помогают ему вновь встать на ноги.'),
	('Прощай, оружие', 'Роман о любви военного и медсестры во время Первой мировой войны.'),
	('Гордость и предубеждение', 'Классическая история о семейных отношениях и любви в обществе начала 19 века.'),
	('Собор Парижской Богоматери', 'История о парижском бродяге, брале Клоде Фролло и красавицы Эсмеральде в средневековом Париже.'),
	('1984', 'Роман о тоталитарном обществе, в котором все контролируется правительством и жизнь граждан не имеет ценности.')
	;
	
INSERT Audiobook (title, description)
VALUES 
	('Анна Каренина', 'История трагической любви молодой замужней дворянки и блестящего офицера. Героиня не выдерживает внутреннего напряжения и решает покончить жизнь самоубийством, бросившись под поезд.'),
	('Детство', 'После смерти отца маленький Алёша переезжает жить к родителям матери. Здесь мальчик познаёт все тяготы взрослой жизни, в которой нет места любви, сочувствию и душевной близости.'),
	('Отрочество', '«Отрочество» – вторая повесть в трилогии Л. Н. Толстого, в которой рассказывается о взрослении подростка, впервые столкнувшегося с любовью, дружбой, предательством, подлостью.'),
	('Юность','Повесть «Юность» Толстого, написанная в 1857 году, стала завершением знаменитой трилогии Льва Николаевича («Детство», «Отрочество», «Юность»). Книга описывает студенческие годы жизни главного героя и его близкое окружение.'),
	('Les miserables','Les Misérables has been popularized through numerous adaptations for film, television and the stage, including a musical.'),
	("L'Homme qui rit", Null),
	('Смерть поэта', Null)
	;

INSERT Genre(genre_name)
VALUES
	('Роман в стихах'),
	('Роман-эпопея'),
	('Роман'),
	('Комедия'),
	('Поэма в прозе'),
	('Роман-детектив'),
	('Роман-биография'),
	('Роман-антиутопия')
	('Повесть'),
	('Поэма')
	;


INSERT Genre(genre_name)
VALUES
	('Учебное пособие')
;

INSERT AuthorAudiobook(author_id, audiobook_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(3, 4),
	(4, 5),
	(5, 6),
	(6, 7),
	(7, 8),
	(8, 9),
	(9, 10),
	(10, 11),
	(11, 12),
	(12, 13),
	(13, 14),
	(14, 15),
	(15, 16),
	(2, 17),
	(2, 18),
	(2, 19),
	(2, 20),
	(14, 21),
	(14, 22),
	(7, 23)
	;
	

/* оправдаем кросс-сущность, когда у одной книги много авторов */

INSERT Author(author_name)
VALUES
	('Клышинский Э.С.'),
	('Большакова Е.И.'),
	('Воронцов К.В.'),
	('Ефремова Н.Э.'),
	('Лукашевич Н.В.'),
	('Сапин А.С.')
	;

INSERT Audiobook(title, description)
VALUES
	('Автоматическая обработка текстов на естественном языке и анализ данных','В учебном пособии рассматриваются базовые вопросы компьютерной лингвистики')
	;

INSERT AuthorAudiobook(author_id, audiobook_id)
VALUES
	(16,24),
	(17,24),
	(18,24),
	(19,24),
	(20,24),
	(21,24)
	;

INSERT INTO GenreAudiobook(genre_id, audiobook_id)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(3,4),
	(4,5),
	(3,6),
	(10,6),
	(5,6),
	(3,7),
	(3,8),
	(3,9),
	(9,10),
	(3,11),
	(6,11),
	(2,12),
	(7,12),
	(3,13),
	(3,14),
	(3,15),
	(3,16),
	(8,16),
	(3,17),
	(9,18),
	(9,19),
	(9,20),
	(2,21),
	(3,22),
	(3,23),
	(11,24)
	;
	
/*--------*/



/*	Следующим шагом был импорт в таблицу BookFile данных из csv файла BookFile_data.csv*/

/*	Лучше изменить тип колонки тк в duration у нас INT*/
ALTER TABLE audiobookService.ListenHistory MODIFY last_position_time INT;

/*	Импорт в таблицу ListenHistory из csv файла ListenHistory.csv*/

LOAD DATA LOCAL INFILE '/Users/gleb/Desktop/DB/project/data/BookFile_data1.csv '
INTO TABLE ListenHistory
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(user_id, audiobook_id, book_file_id, last_position_time);


/*

Тут пришлось кое что менять из за своей невнимательности

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE audiobookService.BookFile;
SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE BookFile DROP COLUMN booke_file_size;
*/





	