CREATE DATABASE R301_SportTrack;
USE R301_SportTrack;
CREATE TABLE Personne (
    ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(100) NOT NULL,
    Prenom VARCHAR(100) NOT NULL,
    Date_naissance DATE NOT NULL,
    Sexe VARCHAR(10) NOT NULL,
    Taille INTEGER NOT NULL,
    Poids INTEGER NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE CHECK (Email LIKE '%_@__%.__%'),
    Mot_de_passe TEXT NOT NULL
);

CREATE TABLE Activity (
    ID_Activ INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_Utilisateur INTEGER NOT NULL,
    Description VARCHAR(255),
    Date DATE NOT NULL,
    FOREIGN KEY (ID_Utilisateur) REFERENCES Personne(ID)
);

CREATE TABLE Data (
    ID_Data INTEGER PRIMARY KEY AUTO_INCREMENT,
    ID_Activite INTEGER NOT NULL,
    temps VARCHAR(50) NOT NULL,
    cardio_frequence INTEGER NOT NULL,
    latitude DECIMAL(10, 7) NOT NULL,
    longitude DECIMAL(10, 7) NOT NULL,
    altitude DECIMAL(7, 2) NOT NULL,
    FOREIGN KEY (ID_Activite) REFERENCES Activity(ID_Activ)
);
