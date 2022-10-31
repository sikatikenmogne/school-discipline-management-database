/*
	CONNAITRE PRECISEMENT(TRANCHE HORAIRE, MATIERE, PROFFESEUR) TOUTES LES ABSENCE DES ETUDIANT DANS UNE SEMAINE ICI 2021-02-01 ET 2021-02-06
*/

SELECT DISTINCT
      affectation.`NUMERO`, 
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      seance_cours.DATE_COURS AS `DATES`, 
	seance_cours.TRANCHE_HORAIRE,
	matiere.NOM_MATIERE AS MATIERES,
	enseignant.NOM_ENS AS ENSEIGNANTS,
	IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,JUSTIFICATION,"Non justifiée") AS JUSTIFICATION
FROM `absence` 
	INNER JOIN etudiant ON etudiant.MATRICULE = absence.MATRICULE 
	INNER JOIN seance_cours ON seance_cours.ID_SEANCE = absence.ID_SEANCE
      INNER JOIN dispenser ON seance_cours.CODE_DISP = dispenser.CODE_DISP 
	INNER JOIN enseignant ON enseignant.MAT_ENS = dispenser.MAT_ENS
      INNER JOIN matiere ON matiere.CODE_MATIERE = dispenser.CODE_MATIERE
	INNER JOIN affectation ON affectation.MATRICULE = etudiant.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE 
	affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C'
ORDER BY affectation.`NUMERO` 
ASC; 






/*
	LISTER DE MANIERE ANTE-CHRONODATÉ TOUTES LES ABSENCE DES ETUDIANT D'UNE CLASSE
      DANS UNE SEMAINE. 
      EXEMPLE: SEMAINE DU 2021-02-01 AU 2021-02-07
*/

SELECT DISTINCT
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      seance_cours.DATE_COURS AS `DATES`, 
	seance_cours.TRANCHE_HORAIRE,
	matiere.NOM_MATIERE AS MATIERES,
	enseignant.NOM_ENS AS ENSEIGNANTS,
	IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,JUSTIFICATION,"Non justifiée") AS JUSTIFICATION
FROM `absence` 
	INNER JOIN etudiant ON etudiant.MATRICULE = absence.MATRICULE 
	INNER JOIN seance_cours ON seance_cours.ID_SEANCE = absence.ID_SEANCE
      INNER JOIN dispenser ON seance_cours.CODE_DISP = dispenser.CODE_DISP 
	INNER JOIN enseignant ON enseignant.MAT_ENS = dispenser.MAT_ENS
      INNER JOIN matiere ON matiere.CODE_MATIERE = dispenser.CODE_MATIERE
	INNER JOIN affectation ON affectation.MATRICULE = etudiant.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE 
	affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      etudiant.MATRICULE = 'Mat119' AND
      absence.DEBUT_SEMAINE = '2021-02-01'
ORDER BY affectation.`NUMERO` 
ASC; 




/*
	LISTER DE MANIERE ANTE-CHRONODATÉ TOUTES LES ABSENCE D'UN ETUDIANT D'UNE CLASSE
      DURANT UN MOIS. 

      EXEMPLE: 
            ANNEE_SCOLAIRE 2020/2021 CLASSE L2C, MATRICULE = Mat119
*/
SELECT DISTINCT
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      seance_cours.DATE_COURS AS `DATES`, 
	seance_cours.TRANCHE_HORAIRE,
	matiere.NOM_MATIERE AS MATIERES,
	enseignant.NOM_ENS AS ENSEIGNANTS,
	IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,JUSTIFICATION,"Non justifiée") AS JUSTIFICATION
FROM `absence` 
	INNER JOIN etudiant ON etudiant.MATRICULE = absence.MATRICULE 
	INNER JOIN seance_cours ON seance_cours.ID_SEANCE = absence.ID_SEANCE
      INNER JOIN dispenser ON seance_cours.CODE_DISP = dispenser.CODE_DISP 
	INNER JOIN enseignant ON enseignant.MAT_ENS = dispenser.MAT_ENS
      INNER JOIN matiere ON matiere.CODE_MATIERE = dispenser.CODE_MATIERE
	INNER JOIN affectation ON affectation.MATRICULE = etudiant.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE 
	affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      etudiant.MATRICULE = 'Mat119' 
ORDER BY seance_cours.ID_SEANCE 
DESC; 








SELECT DISTINCT
      affectation.`NUMERO`, 
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      seance_cours.DATE_COURS AS `DATES`, 
	seance_cours.TRANCHE_HORAIRE,
	matiere.NOM_MATIERE AS MATIERES,
	enseignant.NOM_ENS AS ENSEIGNANTS,
	IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,"OUI","NON") AS JUSTIFIÉE
FROM `absence` 
	INNER JOIN etudiant ON etudiant.MATRICULE = absence.MATRICULE 
	INNER JOIN seance_cours ON seance_cours.ID_SEANCE = absence.ID_SEANCE
      INNER JOIN dispenser ON seance_cours.CODE_DISP = dispenser.CODE_DISP 
	INNER JOIN enseignant ON enseignant.MAT_ENS = dispenser.MAT_ENS
      INNER JOIN matiere ON matiere.CODE_MATIERE = dispenser.CODE_MATIERE
	INNER JOIN affectation ON affectation.MATRICULE = etudiant.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE 
	affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      seance_cours.DATE_COURS = '2021-02-08'
ORDER BY affectation.`NUMERO` 
ASC; 


/*
	CONNAITRE PRECISEMENT(TRANCHE HORAIRE, MATIERE, PROFFESEUR) TOUTES LES ABSENCE DES ETUDIANT DANS UNE SEMAINE ICI 2021-02-01 ET 2021-02-06
*/


/*
SELECT DISTINCT
      affectation.`NUMERO` AS `NUMERO`,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
	seance_cours.CODE_HORAIRE AS TRANCHE_HORAIRES,
	seance_cours.CODE_MATIERE AS MATIERES,
	enseignant.NOM_ENS AS ENSEIGNANTS,
	IF(absence.JUSTIFIEE = 0,"NON","OUI") AS JUSTIFIÉE
FROM `absence` 
	INNER JOIN etudiant ON etudiant.MATRICULE = absence.MATRICULE 
	INNER JOIN seance_cours ON seance_cours.ID_SEANCE = absence.ID_SEANCE
	INNER JOIN enseignant ON enseignant.MAT_ENS = seance_cours.MAT_ENS
	INNER JOIN affectation ON affectation.MATRICULE = etudiant.MATRICULE
WHERE 
	affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' 
ORDER BY affectation.`NUMERO` 
ASC; 
*/





/*CONNAITRE LE NOMBRE D'HEURES D'ABSENCES JUSTIFIEE ET NO JUSTIFIEE DES ETUDIANT DANS UNE SEMAINE ICI 2021-02-01 ET 2021-02-06*/

SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      SUM(HOUR(seance_cours.DUREE)) AS `TOTAL H.A`,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE 
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      absence.DEBUT_SEMAINE = '2021-02-01'
GROUP BY 
      `NUMERO` 
ORDER BY 
      `NUMERO` 
ASC;






/*
	CONNAITRE LE NOMBRE D'HEURES ABSENCES JUSTIFIEE ET NO JUSTIFIEE DES ETUDIANT EN UNE DATE ICI 2021-02-08
*/


SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      SUM(HOUR(seance_cours.DUREE)) AS `TOTAL H.A`,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE 
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      seance_cours.DATE_COURS = '2021-02-08'
GROUP BY 
      etudiant.NOM 
ORDER BY 
      `NUMERO` 
ASC;


/*CONNAITRE LE NOMBRE D'HEURES D'ABSENCES JUSTIFIEE ET NO JUSTIFIEE DES ETUDIANT DANS UNE SEMAINE ICI 2021-02-01 ET 2021-02-06*/

SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      SUM(HOUR(seance_cours.DUREE)) AS `TOTAL H.A`,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE 
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      MONTH(seance_cours.DATE_COURS) = 2
GROUP BY 
      etudiant.NOM 
ORDER BY 
      `NUMERO` 
ASC;
      



/*
	RECAPITULER DE MANIERE QUANTITATIVR LE NOMBRE 
      D'HEURES ABSENCES JUSTIFIEE ET OU NON JUSTIFIEE DES ETUDIANTS 
      D'UNE CLASSE DURANT UNE ANNÉE SCOLAIRE
*/

SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      SUM(HOUR(seance_cours.DUREE)) AS `TOTAL H.A`,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE 
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C'
GROUP BY ETUDIANT.MATRICULE;





/*
LISTER PAR ORDRE DECROISSANT LES LE NOMBRE D'HEURES D'ABSENCE NON JUSTIFIEE ENTRE JANVIER ET MARS 
*/
SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      MONTH(seance_cours.DATE_COURS) BETWEEN 1 AND 3
GROUP BY 
      etudiant.NOM 
ORDER BY 
      `TOTAL N.J` 
DESC;
  


/*
LISTER PAR ORDRE DECROISSANT DE GRAVITE LES ETUDIANTS D'UNE CLASSE
 CONVOQUÉES EN CONSEIL DE DISCIPLINE AVEC LES SANCTIONS ENCOURUE
 DANS L'ANNÉE SCOLAIRE 
*/

SELECT 
      affectation.`NUMERO` AS NUMERO,
      etudiant.NOM AS NOMS,
      etudiant.PRENOM AS PRENOMS,
      etudiant.MATRICULE AS `MATR.`,
      SUM(IF(absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE,0,HOUR(seance_cours.DUREE)))  AS `TOTAL N.J`, 
      SANCTION.LIBELLE_SANCTION AS SANCTION,
      recevoir.MOTIF_SANCTION
FROM `absence` 
      INNER JOIN seance_cours on absence.ID_SEANCE = seance_cours.ID_SEANCE 
      INNER JOIN etudiant ON absence.MATRICULE = etudiant.MATRICULE
      INNER JOIN recevoir ON etudiant.MATRICULE = recevoir.MATRICULE
      INNER JOIN sanction ON recevoir.ID_SANCTION = SANCTION.ID_SANCTION
      INNER JOIN affectation ON etudiant.MATRICULE = affectation.MATRICULE
      LEFT JOIN absence_justifiee ON absence.ID_ABSENCE = absence_justifiee.ID_ABSENCE 
WHERE
      affectation.CODE_ANNEE = '2020/2021' AND
      affectation.CODE_CLASSE = 'L2C' AND
      (MONTH(seance_cours.DATE_COURS) BETWEEN 1 AND 3) AND
      SANCTION.ID_SANCTION = (SELECT DISTINCT MAX(ID_SANCTION) FROM RECEVOIR WHERE RECEVOIR.MATRICULE = ETUDIANT.MATRICULE)
GROUP BY 
      etudiant.NOM 
ORDER BY 
      `TOTAL N.J` 
DESC;
