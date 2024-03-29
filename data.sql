
insert into ANNEE_SCOLAIRE(CODE_ANNEE, DATE_DEBUT, DATE_FIN) 
VALUES
('2019/2020','2019-10-18','2020-5-13'),
('2020/2021','2020-10-28','2021-6-12'),
('2021/2022','2021-10-28','2022-7-16');



INSERT INTO ENSEIGNANT(MAT_ENS, NOM_ENS, PRENOM_ENS) 
 VALUES 
('IAI_161','first_name_2','sur_name_2'),
('IAI_162','first_name_3','sur_name_3'),
('IAI_163','first_name_4','sur_name_4'),
('IAI_164','first_name_5','sur_name_5'),
('IAI_165','first_name_6','sur_name_6'),
('IAI_166','first_name_7','sur_name_7'),
('IAI_167','first_name_8','sur_name_8'),
('IAI_168','first_name_9','sur_name_9'),
('IAI_169','first_name_10','sur_name_10'),
('IAI_170','first_name_11','sur_name_11'),
('IAI_171','first_name_12','sur_name_12');


INSERT INTO MATIERE(CODE_MATIERE,NOM_MATIERE,TOTAL_H) 
 VALUES 
(1,"MATIERE_1",40),
(2,"MATIERE_2",40),
(3,"MATIERE_3",30),
(4,"MATIERE_4",30),
(5,"MATIERE_5",40),
(6,"MATIERE_6",40),
(7,"MATIERE_7",30),
(8,"MATIERE_8",30),
(9,"MATIERE_9",40),
(10,"MATIERE_10",40),
(11,"MATIERE_11",35),
(12,"MATIERE_12",20),
(13,"MATIERE_13",10),
(14,"MATIERE_14",20),
(15,"MATIERE_15",35),
(16,"MATIERE_16",30);

INSERT INTO dispenser(CODE_DISP, MAT_ENS, CODE_MATIERE) 
VALUES 
(1,'IAI_160',4),
(2,'IAI_161',1),
(3,'IAI_162',9),
(4,'IAI_163',5),
(5,'IAI_164',3),
(6,'IAI_165',10),
(7,'IAI_166',2),
(8,'IAI_167',11),
(9,'IAI_168',12),
(10,'IAI_169',13),
(11,'IAI_170',16),
(12,'IAI_171',8);

INSERT INTO ETUDIANT(MATRICULE, NOM,PRENOM, DATE_NAISS, SEXE) 
 VALUES 
('Mat110',"stu_first_name_2","stu_sur_name_2" ,'2001-03-03', 'M'),
('Mat111',"stu_first_name_3","stu_sur_name_3" ,'1994-04-22', 'F'),
('Mat112',"stu_first_name_4","stu_sur_name_4" ,'1998-03-14', 'M'),
('Mat113',"stu_first_name_5","stu_sur_name_5" ,'1994-12-17', 'M'),
('Mat114',"stu_first_name_6","stu_sur_name_6" ,'1996-11-02', 'F'),
('Mat115',"stu_first_name_7","stu_sur_name_7" ,'2000-12-07', 'F'),
('Mat116',"stu_first_name_8","stu_sur_name_8" ,'1995-12-02', 'M'),
('Mat117',"stu_first_name_9","stu_sur_name_9" ,'2002-02-28', 'M'),
('Mat118',"stu_first_name_10","stu_sur_name_10" ,'1996-01-14', 'F'),
('Mat119',"stu_first_name_11","stu_sur_name_11" ,'2002-02-19', 'F');

insert into CLASSE (CODE_CLASSE,CODE_ANNEE) 
values
('L1A','2020/2021'),
('L1B','2020/2021'),
('L1C','2020/2021'),
('L2A','2020/2021'),
('L2B','2020/2021'),
('L2C','2020/2021'),
('GL3A','2020/2021'),
('GL3B','2020/2021'),
('GL3C','2020/2021'),
('SR3A','2020/2021'),
('SR3B','2020/2021'),
('SR3C','2020/2021'),
('BA1','2020/2021'),
('BA2','2020/2021'),
('BA3','2020/2021');


INSERT INTO AFFECTATION (CODE_CLASSE,MATRICULE,CODE_ANNEE,`NUMERO`) 
VALUES
('L2C','Mat109','2020/2021',1),
('L2C','Mat110','2020/2021',2),
('L2C','Mat111','2020/2021',3),
('L2C','Mat112','2020/2021',4),
('L2C','Mat113','2020/2021',5),
('L2C','Mat114','2020/2021',6),
('L2C','Mat115','2020/2021',7),
('L2C','Mat116','2020/2021',11),
('L2C','Mat117','2020/2021',8),
('L2C','Mat118','2020/2021',10),
('L2C','Mat119','2020/2021',9);


INSERT INTO SANCTION(ID_SANCTION,LIBELLE_SANCTION)
VALUES
(1,'1er avertissement �crit'),
(2,'2eme avertissement �crit'),
(3,'Bl�me'),
(4,'Exclusion temporaire 3 jours'),
(5,'Exclusion temporaire 8 jours'),
(6,'Exclusion d�finitive');

INSERT INTO SEANCE_COURS( ID_SEANCE, CODE_CLASSE, CODE_DISP, TRANCHE_HORAIRE,DUREE, DATE_COURS) 
VALUES 
(1,'L2C',7,'07h30-09h30','2:00:00','2020-02-01'),
(2,'L2C',6,'09h30-11h30','2:00:00','2021-02-01'),
(3,'L2C',1,'12h45-14h45','2:00:00','2021-02-01'),
(4,'L2C',7,'07h30-09h30','2:00:00','2021-02-02'),
(5,'L2C',4,'09h30-11h30','2:00:00','2020-02-02'),
(6,'L2C',9,'12h45-14h45','2:00:00','2021-02-02'),
(7,'L2C',7,'07h30-09h30','2:00:00','2020-02-03'),
(8,'L2C',2,'09h30-11h30','2:00:00','2021-02-03'),
(9,'L2C',4,'07h30-09h30','2:00:00','2021-02-04'),
(10,'L2C',6,'09h30-11h30','2:00:00','2021-02-04'),
(11,'L2C',10,'12h45-14h45','2:00:00','2021-02-04'),
(12,'L2C',7,'07h30-09h30','2:00:00','2022-02-05'),
(13,'L2C',1,'09h30-11h30','2:00:00','2022-02-05'),
(14,'L2C',7,'12h45-14h45','2:00:00','2021-02-05'),
(15,'L2C',6,'07h30-09h30','2:00:00','2021-02-06'),
(16,'L2C',1,'09h30-11h30','2:00:00','2022-02-06'),
(17,'L2C',3,'07h30-09h30','2:00:00','2021-02-08'),
(18,'L2C',8,'09h30-11h30','2:00:00','2021-02-08'),
(19,'L2C',1,'12h45-14h45','2:00:00','2021-02-08'),
(20,'L2C',3,'07h30-09h30','2:00:00','2021-03-01'),
(21,'L2C',8,'09h30-11h30','2:00:00','2021-03-01'),
(22,'L2C',1,'12h45-14h45','2:00:00','2021-03-01'),
(23,'L2C',8,'07h30-09h30','2:00:00','2021-03-02'),
(24,'L2C',4,'09h30-11h30','2:00:00','2021-03-02'),
(25,'L2C',9,'12h45-14h45','2:00:00','2021-03-02'),
(26,'L2C',9,'07h30-09h30','2:00:00','2021-03-03'),
(27,'L2C',8,'09h30-11h30','2:00:00','2021-03-03'),
(28,'L2C',null,'12h45-14h45','2:00:00','2021-03-03'),
(29,'L2C',4,'07h30-09h30','2:00:00','2021-03-04'),
(30,'L2C',8,'09h30-11h30','2:00:00','2021-03-04'),
(31,'L2C',10,'12h45-14h45','2:00:00','2021-03-04'),
(32,'L2C',4,'07h30-09h30','2:00:00','2021-03-05'),
(33,'L2C',1,'09h30-11h30','2:00:00','2021-03-05'),
(34,'L2C',8,'12h45-14h45','2:00:00','2021-03-05'),
(35,'L2C',8,'07h30-09h30','2:00:00','2021-03-06'),
(36,'L2C',3,'09h30-11h30','2:00:00','2021-03-06'),
(37,'L2C',NULL,'12h45-14h45','2:00:00','2021-03-06'),
(38,'L2C',11,'07h30-09h30','2:00:00','2021-03-08'),
(39,'L2C',8,'09h30-11h30','2:00:00','2021-03-08'),
(40,'L2C',4,'12h45-14h45','2:00:00','2021-03-08'),
(41,'L2C',12,'07h30-09h30','2:00:00','2021-03-09'),
(42,'L2C',4,'09h30-11h30','2:00:00','2021-03-09'),
(43,'L2C',9,'12h45-14h45','2:00:00','2021-03-09'),
(44,'L2C',9,'07h30-09h30','2:00:00','2021-03-10'),
(45,'L2C',8,'09h30-11h30','2:00:00','2021-03-10'),
(46,'L2C',null,'12h45-14h45','2:00:00','2021-03-10'),
(47,'L2C',4,'07h30-09h30','2:00:00','2021-03-11'),
(48,'L2C',8,'09h30-11h30','2:00:00','2021-03-11'),
(49,'L2C',10,'12h45-14h45','2:00:00','2021-03-11'),
(50,'L2C',4,'07h30-09h30','2:00:00','2021-03-12'),
(51,'L2C',8,'09h30-11h30','2:00:00','2021-03-12'),
(52,'L2C',NULL,'12h45-14h45','2:00:00','2021-03-12'),
(53,'L2C',9,'07h30-09h30','2:00:00','2021-03-13'),
(54,'L2C',5,'09h30-11h30','2:00:00','2021-03-13'),
(55,'L2C',NULL,'12h45-14h45','2:00:00','2021-03-13');



INSERT INTO LISTE_DE_PRESENCE(DEBUT_SEMAINE,FIN_SEMAINE)
VALUES
('2020-02-01','2020-02-07'),
('2020-02-08','2020-02-14'),
('2020-03-01','2020-03-07'),
('2020-03-08','2020-03-14');

/*
INSERT INTO ABSENCE(MATRICULE, ID_SEANCE, DEBUT_SEMAINE, AUTEUR)
VALUES
('Mat109',40,'2020-03-08',CURRENT_USER());
*/

INSERT INTO ABSENCE(MATRICULE, ID_SEANCE, DEBUT_SEMAINE, AUTEUR)
VALUES
('Mat109',3,'2020-02-01',CURRENT_USER()),
('Mat109',5,'2020-02-01',CURRENT_USER()),
('Mat109',7,'2020-02-01',CURRENT_USER()),
('Mat109',9,'2021-02-01',CURRENT_USER()),
('Mat109',11,'2021-02-01',CURRENT_USER()),
('Mat111',11,'2021-02-01',CURRENT_USER()),
('Mat117',14,'2021-02-01',CURRENT_USER()),
('Mat111',13,'2020-02-01',CURRENT_USER()),
('Mat111',15,'2020-02-01',CURRENT_USER()),
('Mat113',16,'2021-02-01',CURRENT_USER()),
('Mat111',18,'2021-02-08',CURRENT_USER()),
('Mat113',19,'2021-02-08',CURRENT_USER()),
('Mat111',20,'2021-03-01',CURRENT_USER()),
('Mat115',21,'2021-03-01',CURRENT_USER()),
('Mat119',22,'2021-03-01',CURRENT_USER()),
('Mat111',13,'2021-02-01',CURRENT_USER()),
('Mat112',13,'2021-02-01',CURRENT_USER()),
('Mat113',24,'2021-03-01',CURRENT_USER()),
('Mat113',15,'2021-02-01',CURRENT_USER()),
('Mat112',18,'2021-02-08',CURRENT_USER()),
('Mat114',23,'2021-03-01',CURRENT_USER()),
('Mat114',24,'2021-03-01',CURRENT_USER()),
('Mat116',17,'2021-02-08',CURRENT_USER()),
('Mat115',06,'2021-02-01',CURRENT_USER()),
('Mat114',20,'2021-03-01',CURRENT_USER()),
('Mat117',19,'2021-02-08',CURRENT_USER()),
('Mat118',24,'2021-03-01',CURRENT_USER()),
('Mat113',8,'2021-02-01',CURRENT_USER()),
('Mat113',12,'2021-02-01',CURRENT_USER()),
('Mat119',14,'2021-02-01',CURRENT_USER()),
('Mat119',15,'2021-02-01',CURRENT_USER()),
('Mat119',16,'2021-02-01',CURRENT_USER()),
('Mat113',14,'2021-02-01',CURRENT_USER()),
('Mat116',17,'2021-02-08',CURRENT_USER()),
('Mat117',06,'2021-02-01',CURRENT_USER()),
('Mat114',20,'2021-03-01',CURRENT_USER()),
('Mat117',19,'2021-02-08',CURRENT_USER()),
('Mat118',24,'2021-03-01',CURRENT_USER()),
('Mat119',13,'2021-02-01',CURRENT_USER()),
('Mat116',17,'2021-02-08',CURRENT_USER()),
('Mat117',16,'2021-02-01',CURRENT_USER()),
('Mat114',22,'2021-03-01',CURRENT_USER()),
('Mat117',9,'2021-02-01',CURRENT_USER()),
('Mat118',13,'2021-02-01',CURRENT_USER()),
('Mat119',10,'2021-02-01',CURRENT_USER()),
('Mat119',11,'2021-02-01',CURRENT_USER()),
('Mat113',18,'2021-02-08',CURRENT_USER()),
('Mat119',19,'2021-02-08',CURRENT_USER()),
('Mat109',26,'2021-03-03',CURRENT_USER()),
('Mat119',26,'2021-03-03',CURRENT_USER()),
('Mat110',26,'2021-03-03',CURRENT_USER()),
('Mat117',26,'2021-03-03',CURRENT_USER()),
('Mat115',26,'2021-03-03',CURRENT_USER()),
('Mat110',26,'2021-03-03',CURRENT_USER()),
('Mat111',26,'2021-03-03',CURRENT_USER()),
('Mat110',26,'2021-03-03',CURRENT_USER()),
('Mat116',26,'2021-03-03',CURRENT_USER()),
('Mat114',26,'2021-03-03',CURRENT_USER()),
('Mat113',27,'2021-03-01',CURRENT_USER()),
('Mat115',27,'2021-03-01',CURRENT_USER()),
('Mat116',27,'2021-03-01',CURRENT_USER()),
('Mat111',27,'2021-03-01',CURRENT_USER()),
('Mat110',27,'2021-03-01',CURRENT_USER()),
('Mat109',29,'2021-03-01',CURRENT_USER()),
('Mat110',29,'2021-03-01',CURRENT_USER()),
('Mat115',29,'2021-03-01',CURRENT_USER()),
('Mat111',29,'2021-03-01',CURRENT_USER()),
('Mat116',29,'2021-03-01',CURRENT_USER()),
('Mat113',30,'2021-03-01',CURRENT_USER()),
('Mat117',30,'2021-03-01',CURRENT_USER()),
('Mat110',30,'2021-03-01',CURRENT_USER()),
('Mat114',30,'2021-03-01',CURRENT_USER()),
('Mat119',30,'2021-03-01',CURRENT_USER()),
('Mat110',30,'2021-03-01',CURRENT_USER()),
('Mat114',31,'2021-03-01',CURRENT_USER()),
('Mat113',31,'2021-03-01',CURRENT_USER()),
('Mat109',31,'2021-03-01',CURRENT_USER()),
('Mat110',31,'2021-03-01',CURRENT_USER()),
('Mat115',31,'2021-03-01',CURRENT_USER()),
('Mat111',31,'2021-03-01',CURRENT_USER()),
('Mat116',31,'2021-03-01',CURRENT_USER()),
('Mat118',31,'2021-03-01',CURRENT_USER()),
('Mat119',31,'2021-03-01',CURRENT_USER()),
('Mat117',31,'2021-03-01',CURRENT_USER()),
('Mat109',32,'2021-03-01',CURRENT_USER()),
('Mat113',32,'2021-03-01',CURRENT_USER()),
('Mat115',32,'2021-03-01',CURRENT_USER()),
('Mat116',32,'2021-03-01',CURRENT_USER()),
('Mat113',32,'2021-03-01',CURRENT_USER()),
('Mat119',32,'2021-03-01',CURRENT_USER()),
('Mat110',32,'2021-03-01',CURRENT_USER()),
('Mat112',32,'2021-03-01',CURRENT_USER()),
('Mat114',33,'2021-03-01',CURRENT_USER()),
('Mat113',33,'2021-03-01',CURRENT_USER()),
('Mat118',33,'2021-03-01',CURRENT_USER()),
('Mat119',33,'2021-03-01',CURRENT_USER()),
('Mat110',33,'2021-03-01',CURRENT_USER()),
('Mat112',33,'2021-03-01',CURRENT_USER()),
('Mat109',32,'2021-03-01',CURRENT_USER()),
('Mat110',32,'2021-03-01',CURRENT_USER()),
('Mat111',32,'2021-03-01',CURRENT_USER()),
('Mat112',32,'2021-03-01',CURRENT_USER()),
('Mat113',33,'2021-03-01',CURRENT_USER()),
('Mat114',33,'2021-03-01',CURRENT_USER()),
('Mat115',32,'2021-03-01',CURRENT_USER()),
('Mat116',32,'2021-03-01',CURRENT_USER()),
('Mat117',32,'2021-03-01',CURRENT_USER()),
('Mat118',32,'2021-03-01',CURRENT_USER()),
('Mat119',32,'2021-03-01',CURRENT_USER()),
('Mat118',33,'2021-03-01',CURRENT_USER()),
('Mat110',33,'2021-03-01',CURRENT_USER()),
('Mat113',33,'2021-03-01',CURRENT_USER()),
('Mat116',33,'2021-03-01',CURRENT_USER()),
('Mat109',34,'2021-03-01',CURRENT_USER()),
('Mat110',34,'2021-03-01',CURRENT_USER()),
('Mat112',34,'2021-03-01',CURRENT_USER()),
('Mat115',34,'2021-03-01',CURRENT_USER()),
('Mat118',34,'2021-03-01',CURRENT_USER()),
('Mat119',34,'2021-03-01',CURRENT_USER()),
('Mat109',35,'2021-03-01',CURRENT_USER()),
('Mat110',35,'2021-03-01',CURRENT_USER()),
('Mat111',35,'2021-03-01',CURRENT_USER()),
('Mat113',35,'2021-03-01',CURRENT_USER()),
('Mat114',35,'2021-03-01',CURRENT_USER()),
('Mat115',35,'2021-03-01',CURRENT_USER()),
('Mat118',35,'2021-03-01',CURRENT_USER()),
('Mat119',35,'2021-03-01',CURRENT_USER()),
('Mat109',36,'2021-03-01',CURRENT_USER()),
('Mat112',36,'2021-03-01',CURRENT_USER()),
('Mat113',36,'2021-03-01',CURRENT_USER()),
('Mat114',36,'2021-03-01',CURRENT_USER()),
('Mat115',36,'2021-03-01',CURRENT_USER()),
('Mat116',36,'2021-03-01',CURRENT_USER()),
('Mat118',36,'2021-03-01',CURRENT_USER()),
('Mat119',36,'2021-03-01',CURRENT_USER()),
('Mat113',38,'2021-03-08',CURRENT_USER()),
('Mat116',38,'2021-03-08',CURRENT_USER()),
('Mat111',38,'2021-03-08',CURRENT_USER()),
('Mat110',39,'2021-03-08',CURRENT_USER()),
('Mat112',39,'2021-03-08',CURRENT_USER()),
('Mat113',39,'2021-03-08',CURRENT_USER()),
('Mat115',39,'2021-03-08',CURRENT_USER()),
('Mat117',39,'2021-03-08',CURRENT_USER()),
('Mat118',39,'2021-03-08',CURRENT_USER()),
('Mat109',40,'2021-03-08',CURRENT_USER()),
('Mat111',40,'2021-03-08',CURRENT_USER()),
('Mat114',40,'2021-03-08',CURRENT_USER()),
('Mat116',40,'2021-03-08',CURRENT_USER()),
('Mat119',40,'2021-03-08',CURRENT_USER()),
('Mat114',40,'2021-03-08',CURRENT_USER()),
('Mat117',40,'2021-03-08',CURRENT_USER()),
('Mat110',41,'2021-03-08',CURRENT_USER()),
('Mat111',41,'2021-03-08',CURRENT_USER()),
('Mat113',41,'2021-03-08',CURRENT_USER()),
('Mat115',41,'2021-03-08',CURRENT_USER()),
('Mat119',41,'2021-03-08',CURRENT_USER()),
('Mat110',42,'2021-03-08',CURRENT_USER()),
('Mat111',42,'2021-03-08',CURRENT_USER()),
('Mat112',42,'2021-03-08',CURRENT_USER()),
('Mat115',42,'2021-03-08',CURRENT_USER()),
('Mat117',42,'2021-03-08',CURRENT_USER()),
('Mat109',43,'2021-03-08',CURRENT_USER()),
('Mat118',43,'2021-03-08',CURRENT_USER()),
('Mat119',43,'2021-03-08',CURRENT_USER()),
('Mat116',43,'2021-03-08',CURRENT_USER()),
('Mat113',43,'2021-03-08',CURRENT_USER()),
('Mat114',43,'2021-03-08',CURRENT_USER()),
('Mat118',44,'2021-03-08',CURRENT_USER()),
('Mat117',44,'2021-03-08',CURRENT_USER()),
('Mat111',45,'2021-03-08',CURRENT_USER()),
('Mat112',45,'2021-03-08',CURRENT_USER()),
('Mat109',45,'2021-03-08',CURRENT_USER()),
('Mat119',45,'2021-03-08',CURRENT_USER()),
('Mat113',47,'2021-03-08',CURRENT_USER()),
('Mat114',47,'2021-03-08',CURRENT_USER());

/*
      JUSTIFIER LES HEURES D'ABSENCES D'UN ETUDIANT
       IDENTIFIER PAR SON MATRICULE A UNE DATE ET UNE HEURE DONNEE   
*/

INSERT INTO ABSENCE_JUSTIFIEE(DATE_JUST,AUTEUR_JUST,JUSTIFICATION,ID_ABSENCE) 
      SELECT 
            NOW() AS DATE_JUST,
            CURRENT_USER() AS AUTEUR_JUST,
            'Hospitalisation' AS JUSTIFICATION,
            ID_ABSENCE
      FROM ABSENCE
      INNER JOIN SEANCE_COURS
            ON ABSENCE.ID_SEANCE = SEANCE_COURS.ID_SEANCE 
      WHERE
            MATRICULE = 'Mat113' AND
            DEBUT_SEMAINE = '2021-02-01' AND
            TRANCHE_HORAIRE is not null;
