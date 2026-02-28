-- Active: 1771877937860@@127.0.0.1@5432@datalendo_db@Rh_analytics
-- CREATION DE LA TABLE DEPARTEMENTS
CREATE TABLE IF NOT EXISTS "Rh_analytics".departements(
    id_departement INT PRIMARY KEY,
    nom_departement VARCHAR(100),
    manager VARCHAR(100),
    budget NUMERIC

);

-- CREATION DE LA TABLE EMPLOYES
CREATE TABLE IF NOT EXISTS "Rh_analytics".employes(
    id_employe INT PRIMARY KEY,
    nom_employe VARCHAR(100),
    prenom_employe VARCHAR(100),
    poste VARCHAR(50),
    id_departement INT,
    date_embauche DATE,
    date_depart DATE,
    salaire NUMERIC,
    FOREIGN KEY (id_departement) REFERENCES
    departements(id_departement)
);

-- Creation de la table performances

CREATE TABLE IF NOT EXISTS "Rh_analytics".performances(
    id_performance INT PRIMARY KEY,
    id_employe INT,
    date_evaluation DATE,
    score INT,
    objectif_atteints BOOLEAN,
    FOREIGN KEY (id_employe) REFERENCES employes(id_employe)

);

-- Création de la table turnover

CREATE TABLE IF NOT EXISTS "Rh_analytics".turnover(
    id_depart INT PRIMARY KEY,
    id_employe INT,
    date_depart DATE,
    type_depart VARCHAR(20),
    anciennete INT,
    FOREIGN KEY (id_employe) REFERENCES employes(id_employe)

);

SELECT * FROM  employes LIMIT 10;
