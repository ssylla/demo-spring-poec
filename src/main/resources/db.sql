DROP TABLE IF EXISTS COMPO;
DROP TABLE IF EXISTS BON;
DROP TABLE IF EXISTS ARTICLE;
DROP TABLE IF EXISTS FOURNISSEUR;
CREATE TABLE ARTICLE (ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, REF VARCHAR(13) NOT NULL, DESIGNATION VARCHAR(255) NOT NULL, PRIX DECIMAL(7,2) NOT NULL, ID_FOU INT NOT NULL);
CREATE TABLE FOURNISSEUR (ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, NOM VARCHAR(25) NOT NULL);
CREATE TABLE BON (ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, NUMERO INT, DATE_CMDE DATETIME DEFAULT CURRENT_TIMESTAMP ON
    UPDATE CURRENT_TIMESTAMP, DELAI INT, ID_FOU INT NOT NULL);
CREATE TABLE COMPO (ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, ID_ART INT, ID_BON INT, QTE INT);
INSERT INTO FOURNISSEUR (ID, NOM) VALUES (1, 'Française d’Imports') ;
INSERT INTO FOURNISSEUR (ID, NOM) VALUES (2, 'FDM SA') ;
INSERT INTO FOURNISSEUR (ID, NOM) VALUES (3, 'Dubois & Fils') ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (1, 'A01', 'Perceuse P1', 74.99, 1) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.4, 3) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (5, 'A02', 'Meuleuse 125mm', 37.85, 1) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.8, 3) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (7, 'A03', 'Perceuse à colonne', 185.25, 1) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (8, 'D04', 'Coffret mêches à bois', 12.25, 3) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (9, 'F03', 'Coffret mêches plates', 6.25, 2) ;
INSERT INTO ARTICLE (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (10, 'F04', 'Fraises d’encastrement', 8.14, 2) ;
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (1, 1, 3, 1, '2019-02-08 09:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (1, 1, 3);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (5, 1, 4);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (7, 1, 1);
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (2, 2, 5, 2, '2019-03-02 09:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (2, 2, 25);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (3, 2, 15);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (9, 2, 8);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (10, 2, 11);
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (3, 3, 2, 3, '2019-04-03 17:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (4, 3, 25);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (6, 3, 40);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (8, 3, 15);
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (4, 4, 2, 3, '2019-04-05 11:40:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (4, 4, 10);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (6, 4, 15);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (8, 4, 8);
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (5, 5, 7, 2, '2019-05-15 14:45:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (2, 5, 17);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (3, 5, 13);
INSERT INTO COMPO (ID_ART, ID_BON, QTE) VALUES (10, 5, 9);
INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (6, 6, 0, 1, '2019-06-24 18:55:00');