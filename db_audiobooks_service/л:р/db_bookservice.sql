CREATE TABLE `User` (
  `user_id` INT,
  `username` VARCHAR,
  `email` VARCHAR,
  `password` VARCHAR,
  PRIMARY KEY (`user_id`)
);

CREATE TABLE `ListenHistory` (
  `history_id` INT,
  `user_id` INT,
  `audiobook_id` INT,
  `book_file_id` INT,
  `last_position_time` TIME,
  PRIMARY KEY (`history_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `User`(`email`)
);

CREATE TABLE `GenreAudiobook` (
  `genre_audiobook_id` INT,
  `genre_id` INT,
  `audiobook_id` INT,
  PRIMARY KEY (`genre_audiobook_id`)
);

CREATE TABLE `Audiobook` (
  `audiobook_id` INT,
  `title` VARCHAR,
  `description` TEXT,
  PRIMARY KEY (`audiobook_id`),
  FOREIGN KEY (`audiobook_id`) REFERENCES `GenreAudiobook`(`genre_audiobook_id`)
);

CREATE TABLE `BookFile` (
  `book_file_id` INT,
  `audiobook_id` INT,
  `book_file_name` VARCHAR,
  `book_file_type` VARCHAR,
  `booke_file_size` INT,
  `duration` INT,
  `sequence` INT,
  PRIMARY KEY (`book_file_id`),
  FOREIGN KEY (`book_file_name`) REFERENCES `Audiobook`(`description`),
  FOREIGN KEY (`book_file_name`) REFERENCES `ListenHistory`(`last_position_time`)
);

CREATE TABLE `AuthorAudiobook` (
  `author_audiobook_id` INT,
  `author_id` INT,
  `audiobook_id` INT,
  PRIMARY KEY (`author_audiobook_id`)
);

CREATE TABLE `Author` (
  `author_id` INT,
  `author_name` VARCHAR,
  `author_surname` VARCHAR,
  PRIMARY KEY (`author_id`),
  FOREIGN KEY (`author_id`) REFERENCES `AuthorAudiobook`(`author_audiobook_id`)
);

CREATE TABLE `Genre` (
  `genre_id` INT,
  `genre_name` VARCHAR,
  PRIMARY KEY (`genre_id`)
);

