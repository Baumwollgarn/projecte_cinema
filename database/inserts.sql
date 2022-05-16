INSERT INTO city (name)
VALUES ('Manacor'),
		('Palma de Mallorca'),
        ('Marratxi'),
        ('Alcudia'),
        ('Valldemossa');
        
INSERT INTO cinema (idCity, name, address, phoneNumber, email, location)
VALUES (1,'Aficine Manacor','Carrer Bas 7','971 84 72 56','manacor@aficine.es','https://www.google.com/maps/place/Manacor+Aficine/@39.564743,3.2175197,15z/data=!4m2!3m1!1s0x0:0x821ba086da1a4697?sa=X&ved=2ahUKEwj8gviHqNf3AhUSyaQKHe1SA98Q_BJ6BAhIEAU'),
		(2,'Ocimax Palma', 'Carrer del Bisbe Pere de Puigdorfila 1', '971 75 06 73','palma@ocimax.es', 'https://www.google.com/maps/place/Cines+Ocimax/@39.5951261,2.646332,17z/data=!3m1!4b1!4m5!3m4!1s0x129792ef5f543867:0x1730d8284d097b85!8m2!3d39.595122!4d2.6485207'),
        (3,'Cinesa Festival Park','Autop. Palma-Inca Km. 7','971 82 12 12','festivalpark@cinesa.com','https://www.google.com/maps/place/CINESA+FESTIVAL+PARK+·+IMAX/@39.6339406,2.7296783,17z/data=!3m1!4b1!4m5!3m4!1s0x1297eb3aa7de96e7:0x179d8a9f2da71485!8m2!3d39.6339365!4d2.731867'),
        (4,'Auditorio de Alcudia','Plaça de la Porta de Mallorca','971 89 71 85','auditorialcudia@alcudia.cat','https://goo.gl/maps/HhKGXNv8P2rQvtuw9'),
        (5,'Auditorio de Valldemossa','Plaça de les vaques 2', '971 69 69 69','valldemossa@auditoris.cat', 'https://goo.gl/maps/bJJRwZYxTmqmvcRN8');
        
INSERT INTO room (idRoom, idCinema)
VALUES 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(1,2),
(2,2),
(3,2),
(4,2),
(1,3),
(2,3),
(3,3),
(4,3),
(5,3),
(6,3),
(1,4),
(2,4),
(1,5);

INSERT INTO seat (idSeat, idRoomFK, rowNum)
VALUES
# Sala 1 Cine 1
(1,1,1),
(2,1,1),
(3,1,1),
(4,1,1),
(5,1,1),
(1,1,2),
(2,1,2),
(3,1,2),
(4,1,2),
(5,1,2),
(1,1,3),
(2,1,3),
(3,1,3),
(4,1,3),
(5,1,3),
# Sala 2 Cine 1
(1,2,1),
(2,2,1),
(3,2,1),
(4,2,1),
(5,2,1),
(1,2,2),
(2,2,2),
(3,2,2),
(4,2,2),
(5,2,2),
(1,2,3),
(2,2,3),
(3,2,3),
(4,2,3),
(5,2,3),
# Sala 3 Cine 1
(1,3,1),
(2,3,1),
(3,3,1),
(4,3,1),
(5,3,1),
(1,3,2),
(2,3,2),
(3,3,2),
(4,3,2),
(5,3,2),
(1,3,3),
(2,3,3),
(3,3,3),
(4,3,3),
(5,3,3),
# Sala 4 Cine 1
(1,4,1),
(2,4,1),
(3,4,1),
(4,4,1),
(1,4,2),
(2,4,2),
(3,4,2),
(4,4,2),
(1,4,3),
(2,4,3),
(3,4,3),
(4,4,3),
# Sala 5 Cine 1
(1,5,1),
(2,5,1),
(3,5,1),
(4,5,1),
(5,5,1),
(1,5,2),
(2,5,2),
(3,5,2),
(4,5,2),
(5,5,2),
(1,5,3),
(2,5,3),
(3,5,3),
(4,5,3),
(5,5,3),
# Sala 1 Cine 2
(1,6,1),
(2,6,1),
(3,6,1),
(4,6,1),
(5,6,1),
(1,6,2),
(2,6,2),
(3,6,2),
(4,6,2),
(5,6,2),
(1,6,3),
(2,6,3),
(3,6,3),
(4,6,3),
(5,6,3),
# Sala 2 Cine 2
(1,7,1),
(2,7,1),
(3,7,1),
(4,7,1),
(5,7,1),
(1,7,2),
(2,7,2),
(3,7,2),
(4,7,2),
(5,7,2),
(1,7,3),
(2,7,3),
(3,7,3),
(4,7,3),
(5,7,3),
# Sala 3 Cine 2
(1,8,1),
(2,8,1),
(3,8,1),
(4,8,1),
(5,8,1),
(1,8,2),
(2,8,2),
(3,8,2),
(4,8,2),
(5,8,2),
(1,8,3),
(2,8,3),
(3,8,3),
(4,8,3),
(5,8,3),
# Sala 4 Cine 2
(1,9,1),
(2,9,1),
(3,9,1),
(4,9,1),
(1,9,2),
(2,9,2),
(3,9,2),
(4,9,2),
(1,9,3),
(2,9,3),
(3,9,3),
(4,9,3),
# Sala 1 Cine 3
(1,10,1),
(2,10,1),
(3,10,1),
(4,10,1),
(5,10,1),
(1,10,2),
(2,10,2),
(3,10,2),
(4,10,2),
(5,10,2),
(1,10,3),
(2,10,3),
(3,10,3),
(4,10,3),
(5,10,3),
# Sala 2 Cine 3
(1,11,1),
(2,11,1),
(3,11,1),
(4,11,1),
(5,11,1),
(1,11,2),
(2,11,2),
(3,11,2),
(4,11,2),
(5,11,2),
(1,11,3),
(2,11,3),
(3,11,3),
(4,11,3),
(5,11,3),
# Sala 3 Cine 3
(1,12,1),
(2,12,1),
(3,12,1),
(4,12,1),
(5,12,1),
(1,12,2),
(2,12,2),
(3,12,2),
(4,12,2),
(5,12,2),
(1,12,3),
(2,12,3),
(3,12,3),
(4,12,3),
(5,12,3),
# Sala 4 Cine 3
(1,13,1),
(2,13,1),
(3,13,1),
(4,13,1),
(5,13,1),
(1,13,2),
(2,13,2),
(3,13,2),
(4,13,2),
(5,13,2),
(1,13,3),
(2,13,3),
(3,13,3),
(4,13,3),
(5,13,3),
# Sala 5 Cine 3
(1,14,1),
(2,14,1),
(3,14,1),
(4,14,1),
(5,14,1),
(1,14,2),
(2,14,2),
(3,14,2),
(4,14,2),
(5,14,2),
(1,14,3),
(2,14,3),
(3,14,3),
(4,14,3),
(5,14,3),
# Sala 6 Cine 3
(1,15,1),
(2,15,1),
(3,15,1),
(4,15,1),
(5,15,1),
(1,15,2),
(2,15,2),
(3,15,2),
(4,15,2),
(5,15,2),
(1,15,3),
(2,15,3),
(3,15,3),
(4,15,3),
(5,15,3),
# Sala 1 Cine 4
(1,16,1),
(2,16,1),
(3,16,1),
(4,16,1),
(5,16,1),
(1,16,2),
(2,16,2),
(3,16,2),
(4,16,2),
(5,16,2),
(1,16,3),
(2,16,3),
(3,16,3),
(4,16,3),
(5,16,3),
# Sala 2 Cine 4
(1,17,1),
(2,17,1),
(3,17,1),
(4,17,1),
(5,17,1),
(1,17,2),
(2,17,2),
(3,17,2),
(4,17,2),
(5,17,2),
(1,17,3),
(2,17,3),
(3,17,3),
(4,17,3),
(5,17,3),
# Sala 1 Cine 5
(1,18,1),
(2,18,1),
(3,18,1),
(4,18,1),
(5,18,1),
(1,18,2),
(2,18,2),
(3,18,2),
(4,18,2),
(5,18,2),
(1,18,3),
(2,18,3),
(3,18,3),
(4,18,3),
(5,18,3);

INSERT INTO person (firstName,lastName)
VALUES
#Directors
('Samuel Marshall','Raimi'), # -> Dr Strange 2
('Robert Neil','Eggers'), # -> The Northman
('Sean', 'Baker'), # -> Red Rocket
('Jeff', 'Fowler'), # -> Sonic 2: The Hedgeog
('Aaron','Nee'), # -> The Lost City
#Actors
('Benedict','Cumberbatch'), #Protagonist
('Alexander ','Skarsgard'), #Protagonist
('Simon Rex','Cutright'), #Protagonist
('Jim','Carrey'), #Antagonist
('Sandra Annette','Bullock'); #Protagonist

INSERT INTO actor (idActor)
VALUES
('6'), #Benedict Cumber..
('7'), #Alexander Skarsg..
('8'), #Simon Rex...
('9'), #Jim Carrey
('10'); #Sandra Annete


INSERT INTO director(idDirector)
VALUES
('1'), #Samuel Marshall Raimi
('2'), #Robert Neil Eggers
('3'), #Sean Baker
('4'), #Jeff Fowler
('5'); #Aaron Nee


INSERT INTO country (countryCode)
VALUES
('ESP'),
('GER'),
('FRA'),
('DEN'),
('ENG'),
('BRA'),
('ITA');



INSERT INTO movie (idCountry,releaseDate,duration)
VALUES
(2,"2022-02-10","02:44:19"), #The Northman
(4,"2021-09-23","01:53:49"), #Red Rocket
(5,"2019-12-23","02:12:07"), #Doctor Strange 2
(1,"2020-07-11","02:33:12"), #Sonic 
(6,"2021-01-02","01:35:25"); #Lost City

INSERT INTO directsin(idDirector, idMovie)
VALUES
(1,3), #Samuel Marshall Raimi - 3 Dr Strange
(3,2), #Sean Baker - 2 Red Rocket
(2,1), #Robert Neil Eggers - 1 The NorthMan
(4,4), #Jeff Fowler - 4 Sonic 2
(5,5); #Aaron Nee - 5 The lost city


INSERT INTO actsin(idActor, idMovie, paper)
VALUES

(6,3,'Protagonist'), #Benedict Cumber.. -Dr Strange
(7,1,'Protagonist'), #Alexander Skarsg.. - The NorthMan
(8,2,'Protagonist'), #Simon Rex... - Red Rocket
(9,4,'Antagonist'), #Jim Carrey - Sonic
(10,5,'Protagonist'); #Sandra Annete - The lost city


INSERT INTO genre (idGenre)
VALUES 
(1),
(2),
(3),
(4),
(5);


INSERT INTO moviegenre(idMovie, idGenre)
VALUES
(1,1),
(2,2),
(3,1),
(4,1),
(5,4);


INSERT INTO user(name, email, identityNumber, zipCode)
VALUES
('Miguel', 'miguel89@gmail.com', '41285235P', '07500'),
('Laura', 'laura_11@gmail.com', '98989898C', '07611'),
('Valentina', 'valrodriguez@gmail.com', '44444444P', '07006'),
('Müller', 'mulldtch@outlook.es', '11112222F', '07013'),
('Cristian','cr@yahoo.es', '98675632R', '07004');


INSERT INTO multimedia(idMovie, link, typeOf, priority)
VALUES
(1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/oMSdFM12hOw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Video', 1),
(2, '<iframe width="560" height="315" src="https://www.youtube.com/embed/Wfndmy-6e28" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Video',1),
(3, '<iframe width="560" height="315" src="https://www.youtube.com/embed/Rf8LAYJSOL8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Video',1),
(4, '<iframe width="560" height="315" src="https://www.youtube.com/embed/47r8FXYZWNU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Video',1),
(5, '<iframe width="560" height="315" src="https://www.youtube.com/embed/nfKO9rYDmE8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Video',1);



INSERT INTO paymentMethod(typeMethod, email, cardNumber, expireDate, CVV)
VALUES
('CreditCard', 'miguel189@gmail.com', '4000 9876 7384 5574','2024-01-01', 786 ),
('Paypal', 'laura_11@gmail.com', null, null, null),
('Paypal', 'valrodriguez@gmail.com',null, null, null),
('CreditCard', 'mulldtch@outlook.es', '6976 3758 3857 7772','2023-05-01', 888),
('Paypal', 'cr@yahoo.es',null, null, null);


INSERT INTO billboard (idMovie, idRoom, startTime, price)
VALUES
(1,1,'15:00:00','7.50'), #1 The North Man - In Room 1 
(2,2,'18:00:00','7.50'), #2 Red Rcoket - In Room 2
(3,3,'20:00:00','7.50'), #3 Dr Strange - In Room 3
(4,4,'15:00:00','7.50'), #4 Sonic 2 - Room 4
(5,5,'21:00:00','7.50'); #5 Lost City - Room 5



INSERT INTO purchase(idBillboard, idUser, idRoomFK, idPaymentMethod, purchaseDate, totalPrice)
VALUES
#Sample:
#1Purchase - #1(The North Man) - 1 Miguel - Room 1 - CreditCard ... ()
(1,1,1,1,'2022-05-13','7.50'), 
(2,2,2,2,'2022-05-12','7.50'),
(3,3,3,3,'2022-05-15','7.50'),
(4,4,4,4,'2022-05-11','7.50'),
(5,5,5,5,'2022-05-17','7.50');


INSERT INTO purchaseseat(idPurchase, idSeatFK)
VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1);

#LANGUAGE
INSERT INTO language(languageCode)
VALUES
('EN'),
('ES');


INSERT INTO translategenre (idGenre, languageCode, name)
VALUES
('1', 'EN','Action'),
('1', 'ES', 'Accion'),
('2', 'EN', 'Comedy'),
('2', 'ES', 'Comedia'),
('3', 'EN', 'Dramma'),
('3', 'ES', 'Drama'),
('4', 'EN', 'Adventure'),
('4', 'ES', 'Aventura'),
('5', 'EN', 'Science Fiction'),
('5', 'ES', 'Ciencia Ficcion');


INSERT INTO translatemovie(idMovie, languageCode, title, description)
VALUES
('1', 'EN', 'The Northman','The Northman is an American-British epic historical drama thriller film directed by Robert Eggers, with a screenplay co-written by Icelandic poet and novelist Sjón.'),
('1', 'ES', 'El hombre del norte','El hombre del norte es una película de suspenso y drama histórico épico estadounidense-británica dirigida por Robert Eggers, con un guion coescrito por el poeta y novelista islandés Sjón.'),
('2', 'EN', 'Red Rocket','Mikey Saber, a charismatic con artist, plots his return to the big leagues in a small Texas town.'),
('2', 'ES', 'Red Rocket','Mikey Saber, un carismático estafador, planea su regreso a las grandes ligas en un pequeño pueblo de Texas.'),
('3', 'EN', 'Doctor Strange in the multiverse of madness','The adventures of Dr. Stephen Strange and his superpowers continue in the Marvel sequel "Dr. Strange."'),
('3', 'ES', 'Doctor Strange en el multiverso de la locura','Continúan las aventuras del Dr. Stephen Strange y sus superpoderes en la secuela de Marvel "Dr. Strange'),
('4', 'EN', 'Sonic: The movie 2','Sonic 2. The Movie is an action-adventure comedy film based on the video game franchise published by Sega.'),
('4', 'ES', 'Sonic: La pelicula 2','Sonic 2. La película es una película de comedia de acción y aventuras basada en la franquicia de videojuegos publicada por Sega.'),
('5', 'EN', 'The lost city','The Lost City is a 2022 American comedy-action-adventure film directed by the Nee brothers.'),
('5', 'ES', 'La ciudad perdida','La ciudad perdida es una película de comedia, acción y aventuras estadounidense de 2022 dirigida por los hermanos Nee');


INSERT INTO translatecountry(idCountry, languageCode, name)
VALUES
('1', 'EN', 'Spain'),
('1', 'ES', 'Espana'),
('2', 'EN', 'Germany'),
('2', 'ES', 'Alemania'),
('3', 'EN', 'France'),
('3', 'ES', 'Francia'),
('4', 'EN', 'England'),
('4', 'ES', 'Inglaterra'),
('5', 'EN', 'Brasil'),
('5', 'ES', 'Brasil'),
('6', 'EN', 'Italy'),
('6', 'ES', 'Italia');


INSERT INTO translateperson(idPerson, languageCode, biography)
VALUES
('1','EN','https://en.wikipedia.org/wiki/Sam_Raimi'),
('1','ES','https://es.wikipedia.org/wiki/Sam_Raimi'),
('2','EN','https://en.wikipedia.org/wiki/Robert_Eggers'),
('2','ES','https://es.wikipedia.org/wiki/Robert_Eggers'),
('3','EN','https://en.wikipedia.org/wiki/Sean_Baker'),
('3','ES','https://es.wikipedia.org/wiki/Sean_Baker'),
('4','EN','https://en.wikipedia.org/wiki/Jeff_Fowler'),
('4','ES','https://es.wikipedia.org/wiki/Jeff_Fowler'),
('5','EN','https://en.wikipedia.org/wiki/Aaron_and_Adam_Nee'),
('5','ES','https://es.wikipedia.org/wiki/Aaron_and_Adam_Nee'),
('6','EN','https://en.wikipedia.org/wiki/Benedict_Cumberbatch'),
('6','ES','https://es.wikipedia.org/wiki/Benedict_Cumberbatch'),
('7','EN','https://en.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd'),
('7','ES','https://es.wikipedia.org/wiki/Alexander_Skarsg%C3%A5rd'),
('8','EN','https://en.wikipedia.org/wiki/Simon_Rex'),
('8','ES','https://es.wikipedia.org/wiki/Simon_Rex'),
('9','EN','https://en.wikipedia.org/wiki/Jim_Carrey'),
('9','ES','https://es.wikipedia.org/wiki/Jim_Carrey'),
('10','EN','https://en.wikipedia.org/wiki/Sandra_Bullock'),
('10','ES','https://es.wikipedia.org/wiki/Sandra_Bullock');



