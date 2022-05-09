DROP DATABASE IF EXISTS apartament;
CREATE DATABASE apartament;
USE apartament;

CREATE TABLE agent_imobiliar(
	ID_Agent int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Agent), 
	Nume VARCHAR(255) ,
	Telefon VARCHAR(255));

CREATE TABLE apartament (
	ID_Apartament int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Apartament),
	ID_Agent INT ,
	FOREIGN KEY(ID_Agent) REFERENCES Agent_Imobiliar(ID_Agent),
	Situatie_Apartament VARCHAR(255),
	Suprafata INT,
	Cost_Chirie INT);

CREATE TABLE utilitate (
	ID_Utilitate int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Utilitate),
	ID_Apartament int ,
	FOREIGN KEY(ID_Apartament) REFERENCES Apartament(ID_Apartament),
	Tip_Utilitate VARCHAR(255));

CREATE TABLE camera (
	ID_Camera int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Camera),
	ID_Apartament INT,
	FOREIGN KEY(ID_Apartament) REFERENCES Apartament(ID_Apartament),
	Tip_Camera VARCHAR(255),
	Nr_Geamuri INT,
	Tip_Pardoseala VARCHAR(255));

CREATE TABLE mobila (
	ID_Mobila int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Mobila),
	ID_Camera INT ,
	FOREIGN KEY(ID_Camera) REFERENCES Camera(ID_Camera),
	Tip_Mobilier VARCHAR(255) ,
	Producator VARCHAR(255));

CREATE TABLE chirias (
	ID_Chirias int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Chirias),
	ID_Apartament INT ,
	FOREIGN KEY(ID_Apartament) REFERENCES Apartament(ID_Apartament),
	Nume VARCHAR(255),
	Nr_Tel VARCHAR(255));

CREATE TABLE istoric_chirie (
	ID_Chirie int NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(ID_Chirie),
	ID_Apartament INT ,
	FOREIGN KEY(ID_Apartament) REFERENCES Apartament(ID_Apartament),
	Pret_Anterior INT);
	
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Ciobanu Aurel", "0720111001");
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Popescu Florian", "0720223101");	
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Florescu Marian", "0723547212");
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Bonciu Florin", "0754354211");
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Manea Andrei", "0765432101");
INSERT INTO Agent_Imobiliar(Nume, Telefon)
VALUES ("Baltag Sorin", "0720185765");
SELECT * FROM Agent_Imobiliar;

INSERT INTO Apartament(ID_Agent,Situatie_Apartament, Suprafata, Cost_Chirie)
VALUES(2,"Inchiriat",35,800),
		(6,"Inchiriat",39,1000),
		(3,"Neinchiriat",50,1500),
		(2,"Inchiriat",70,2000),
		(5,"Neinchiriat",22,500),
		(6,"Inchiriat",60,1800);
SELECT * FROM Apartament;

INSERT INTO utilitate(ID_Apartament,Tip_Utilitate)
VALUES(1,"Apa"),
 		(1,"Gaze"),
 		(1,"Electricitate"),
		(2,"Apa"),
		(2,"Electricitate"),
		(3,"Apa"),
		(3,"Gaze"),
		(3,"Electricitate"),
		(4,"Apa"),
		(4,"Gaze"),
		(5,"Apa"),
		(5,"Gaze"),
		(5,"Electricitate"),
		(6,"Gaze"),
		(6,"Electricitate");
SELECT * FROM Utilitate;

INSERT INTO camera(ID_Apartament, Tip_Camera, Nr_Geamuri, Tip_Pardoseala)
VALUES(1,"Dormitor",2,"Parchet"),
		(1,"Baie",1,"Faianta"),
		(1,"Hol",0,"Gresie"),
		(2,"Dormitor",1,"Parchet"),
		(2,"Baie",1,"Faianta"),
		(2,"Hol",0,"Gresie"),
		(2,"Bucatarie",2,"Gresie"),
		(3,"Dormitor",1,"Parchet"),
		(3,"Baie",2,"Faianta"),
		(3,"Hol",0,"Gresie"),
		(4,"Dormitor",2,"Parchet"),
		(4,"Baie",1,"Faianta"),
		(4,"Bucatarie",1,"Gresie"),
		(5,"Dormitor",1,"Parchet"),
		(5,"Baie",1,"Faianta"),
		(6,"Dormitor",2,"Parchet"),
		(6,"Baie",1,"Faianta");
	SELECT * FROM camera;
	
INSERT INTO mobila(ID_Camera,Tip_Mobilier,Producator)
VALUES(1,"Dulap","IKEA"),
		(1,"Pat","DEDEMAN"),
		(1,"Noptiera","BRICOSTORE"),
		(2,"Chiuveta","DEDEMAN"),
		(2,"Cabina Dus","BRICODEPOT"),
		(2,"WC cu Bazin","LEROYMERLIN"),
		(3,"Cuier","MERLIN"),
		(4,"Dulap","DEDEMAN"),
		(4,"Pat","IKEA"),
		(4,"Noptiera","BRICOSTORE"),
		(5,"Chiuveta","DEDEMAN"),
		(5,"Cabina Dus","BRICODEPOT"),
		(5,"WC cu Bazin","LEROYMERLIN"),
		(6,"Cuier","MERLIN"),
		(6,"Dulap","IKEA"),
		(7,"Chiuveta","MERLIN"),
		(7,"Aragaz","PHILIPS"),
		(7,"Masa","LEM'S"),
		(8,"Pat","LEM'S"),
		(8,"Noptiera","LEM'S"),
		(9,"Chiuveta","BRICODEPOT"),
		(9,"Cabina Dus","BRICODEPOT"),
		(9,"WC cu Bazin","BRICODEPOT"),
		(10,"Cuier","BRICODEPOT"),
		(11,"Dulap","IKEA"),
		(11,"Pat","IKEA"),
		(11,"Noptiera","IKEA"),
		(12,"Chiuveta","DEDEMAN"),
		(12,"Cabina Dus","LEROYMERLIN"),
		(12,"WC cu Bazin","LEROYMERLIN"),
		(13,"Chiuveta","MERLIN"),
		(13,"Aragaz","PHILIPS"),
		(13,"Masa","LEM'S"),
		(14,"Dulap","MERLIN"),
		(14,"Pat","MERLIN"),
		(14,"Noptiera","MERLIN"),
		(15,"Chiuveta","DEDEMAN"),
		(15,"Cabina Dus","LEROYMERLIN"),
		(15,"WC cu Bazin","LEROYMERLIN"),
		(16,"Dulap","BRICOSTORE"),
		(16,"Pat","DEDEMAN"),
		(16,"Noptiera","BRICOSTORE"),
		(17,"Chiuveta","DEDEMAN"),
		(17,"Cabina Dus","BRICODEPOT"),
		(17,"WC cu Bazin","DEDEMAN");
SELECT * FROM mobila;

INSERT INTO chirias(ID_Apartament,Nume,Nr_Tel)
VALUES(1,"Florescu Daniel","0741568223"),
		(1,"Stoian Cornel","0734574252"),
		(2,"Gica Mihai","0755216632"),
		(4,"Barbu Stefan","0751211321"),
		(6,"Ghimbas Laurentiu","0763686866"),
		(6,"Bantoiu Cristian","0722765565");
SELECT * FROM chirias;
		
INSERT INTO istoric_chirie(ID_Apartament,Pret_Anterior)
VALUES(1,800),
		(1,870),
		(2,360),
		(3,700),
		(3,780),
		(4,1020),
		(5,1590),
		(5,1780),
		(6,1200),
		(6,1800);
SELECT * FROM istoric_chirie;


	