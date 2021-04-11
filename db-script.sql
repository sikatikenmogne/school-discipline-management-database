/*
DROP DATABASE gestDiscipline;
CREATE DATABASE gestDiscipline;
*/

/*
      décommenté les lignes de codes ci dessus si vous
      voulez lancer le script plus facilement dans le shell
      sans la requête import. 
\
      Uncomment thes lines on top if you want to test the script
      in bash without the import query.
*/


USE gestDiscipline;

drop table if exists ABSENCE;

drop table if exists AFFECTATION;

drop table if exists ANNEE_SCOLAIRE;

drop table if exists CLASSE;

drop table if exists ENSEIGNANT;

drop table if exists ETUDIANT;

drop table if exists MATIERE;

drop table if exists DISPENSER;

drop table if exists MENTION_DISCIPLINAIRE;

drop table if exists ABSENCE_JUSTIFIEE;

drop table if exists RECEVOIR;

drop table if exists SANCTION;

drop table if exists SEANCE_COURS;

drop table if exists DESIGNATION;

drop table if exists LISTE_DE_PRESENCE;




/*==============================================================*/
/* Table : LISTE_DE_PRESENCE                                    */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table LISTE_DE_PRESENCE
(
   DEBUT_SEMAINE date primary key,
   FIN_SEMAINE date 
);

/*==============================================================*/


/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table ETUDIANT
(
   MATRICULE     varchar(12) primary key,
   NOM     varchar(34),
   PRENOM      varchar(30),
   DATE_NAISS     date,
   SEXE    enum('M','F')
);

/*==============================================================*/


/*==============================================================*/
/* Table : CLASSE                                               */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table CLASSE
(
   CODE_CLASSE     varchar(6),
   CODE_ANNEE     varchar(9),

   primary key(CODE_CLASSE,CODE_ANNEE),

   foreign key (CODE_ANNEE) 
      references ANNEE_SCOLAIRE(CODE_ANNEE) on update cascade on delete cascade
         
);

/*==============================================================*/

/*==============================================================*/
/* Table : ENSEIGNANT                                           */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table ENSEIGNANT
(
   MAT_ENS   varchar(24) primary key,
   NOM_ENS   varchar(40),
   PRENOM_ENS  varchar(30)
);

/*==============================================================*/


/*==============================================================*/
/* Table : ANNEE_SCOLAIRE                                       */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table ANNEE_SCOLAIRE
(
   CODE_ANNEE           varchar(9) primary key,
   DATE_DEBUT           date,
   DATE_FIN             date
);

/*==============================================================*/


/*==============================================================*/
/* Table : MATIERE                                              */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table MATIERE
(
   CODE_MATIERE         int primary key auto_increment,
   NOM_MATIERE         varchar(24) not null,
   TOTAL_H              int
);

/*==============================================================*/


/*==============================================================*/
/* Table : ABSENCE_JUSTIFIEE                                    */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table ABSENCE_JUSTIFIEE
(
   ID_ABSENCE           int,
   JUSTIFICATION        varchar(254),
   AUTEUR_JUST          varchar(254),
   DATE_JUST            datetime,

   primary key (ID_ABSENCE),

   foreign key (ID_ABSENCE) 
      REFERENCES ABSENCE(ID_ABSENCE) on update cascade on delete cascade
);

/*==============================================================*/


/*==============================================================*/
/* Table : SANCTION                                             */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table SANCTION
(
   ID_SANCTION        int primary key,
   LIBELLE_SANCTION     varchar(45)
);

/*==============================================================*/


/*==============================================================*/
/* Table : DISPENSER                                            */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table  DISPENSER
(
   CODE_DISP            int,
   CODE_MATIERE         varchar(24) not null,
   MAT_ENS              varchar(24) not null,

   primary key (CODE_DISP,CODE_MATIERE,MAT_ENS),
      
   foreign key (CODE_MATIERE)
         references MATIERE (CODE_MATIERE) on delete cascade on update cascade,

   foreign key (MAT_ENS)
         references ENSEIGNANT (MAT_ENS) on delete cascade on update cascade

);

/*==============================================================*/

/*==============================================================*/
/* Table : SEANCE_COURS                                         */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table SEANCE_COURS
(
   ID_SEANCE            int primary key auto_increment,
   CODE_CLASSE          varchar(6) not null,
   CODE_DISP            int not null,
   DATE_COURS           date not null,
   TRANCHE_HORAIRE      varchar(12),
   DUREE                time,
   
   foreign key (CODE_DISP)
         references dispenser (CODE_DISP) on delete cascade on update cascade,
   
   foreign key (CODE_CLASSE)
         references CLASSE (CODE_CLASSE) on delete cascade on update cascade
);

/*==============================================================*/


/*==============================================================*/
/* Table : ABSENCE                                              */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table ABSENCE
(
   ID_ABSENCE           int primary key auto_increment,
   MATRICULE            varchar(12) not null,
   ID_SEANCE            int not null,
   DEBUT_SEMAINE        date,
   AUTEUR               varchar(54),


   foreign key (ID_SEANCE)
         references SEANCE_COURS (ID_SEANCE) on delete cascade on update cascade,

   foreign key (MATRICULE)
         references ETUDIANT (MATRICULE) on delete cascade on update cascade,

   foreign key (DEBUT_SEMAINE)
         references LISTE_DE_PRESENCE (DEBUT_SEMAINE) on delete cascade on update cascade

);
/*==============================================================*/


/*==============================================================*/
/* Table : MENTION_DISCIPLINAIRE                                */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table MENTION_DISCIPLINAIRE
(
   ID_MENTION           int primary key auto_increment,
   MOTIF_MENTION        varchar(224)
);

/*==============================================================*/


/*==============================================================*/
/* Table : DESIGNATION                                          */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table DESIGNATION
(
   DATE_MENTION date not null,
   ID_MENTION int not null,
   MATRICULE varchar(12) not null,
   primary key(ID_MENTION, MATRICULE),
    
   foreign key (ID_MENTION)
         references MENTION_DISCIPLINAIRE (ID_MENTION) on delete cascade on update cascade,

   foreign key (MATRICULE)
         references ETUDIANT (MATRICULE) on delete cascade on update cascade

);

/*==============================================================*/


/*==============================================================*/
/* Table : RECEVOIR                                             */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table RECEVOIR
(
   ID_SANCTION        int not null,
   MOTIF_SANCTION       varchar(245) not null,
   MATRICULE            varchar(12) not null,
   DATE_SANCTION        datetime not null,

   primary key (DATE_SANCTION,ID_SANCTION, MATRICULE),
      
   foreign key (ID_SANCTION)
         references SANCTION (ID_SANCTION) on delete cascade on update cascade,

    foreign key (MATRICULE)
         references ETUDIANT (MATRICULE) on delete cascade on update cascade
);

/*==============================================================*/


/*==============================================================*/
/* Table : AFFECTATION                                          */
/*==============================================================*/
/*--------------------------------------------------------------*/

create table AFFECTATION
(
   `N°` int not null,
   MATRICULE            varchar(12) not null,
   CODE_CLASSE          varchar(6) not null,
   CODE_ANNEE           varchar(9) not null,
   
   primary key (`N°`,MATRICULE, CODE_CLASSE, CODE_ANNEE),

   foreign key (CODE_CLASSE)
            references CLASSE (CODE_CLASSE) on delete cascade on update cascade,

   foreign key (MATRICULE)
            references ETUDIANT (MATRICULE) on delete cascade on update cascade,

   foreign key (CODE_ANNEE)
         references CLASSE (CODE_ANNEE) on delete cascade on update cascade

);

/*==============================================================*/
