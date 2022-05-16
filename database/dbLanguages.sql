/*TRANSLATION*/

CREATE TABLE language (
languageCode VARCHAR(3) PRIMARY KEY NOT NULL
);

CREATE TABLE translateMovie(
idMovie INT,
languageCode VARCHAR(3),
title VARCHAR(100) NOT NULL,
description VARCHAR(255) NULL,
/*RESTRICTIONS*/
PRIMARY KEY(idMovie,languageCode),
FOREIGN KEY translateMovie(idMovie) REFERENCES movie(idMovie) ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY translateMovie(languageCode) REFERENCES language(languageCode) ON UPDATE CASCADE
ON DELETE CASCADE
);

CREATE TABLE translatePerson(
idPerson INT,
languageCode VARCHAR(3),
biography VARCHAR(255) NULL,
/*RESTRICTIONS*/
PRIMARY KEY(idPerson, languageCode),
FOREIGN KEY (idPerson) REFERENCES person(idPerson) ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY (languageCode) REFERENCES language(languageCode) ON UPDATE CASCADE
ON DELETE CASCADE
);


CREATE TABLE translateGenre(
idGenre INT,
languageCode VARCHAR(3),
name VARCHAR(50) NOT NULL,
/*RESTRICTIONS*/
PRIMARY KEY(idGenre,languageCode),
FOREIGN KEY translateGenre(idGenre) REFERENCES genre(idGenre) ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY translateGenre(languageCode) REFERENCES language(languageCode) ON UPDATE CASCADE
ON DELETE CASCADE
);


CREATE TABLE translateCountry(
idCountry INT,
languageCode VARCHAR(3),
name VARCHAR(20) NOT NULL,
/*RESTRICTIONS*/
PRIMARY KEY(idCountry,languageCode),
FOREIGN KEY translateGenre(idCountry) REFERENCES country(idCountry) ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY translateCountry(languageCode) REFERENCES language(languageCode) ON UPDATE CASCADE
ON DELETE CASCADE
);

