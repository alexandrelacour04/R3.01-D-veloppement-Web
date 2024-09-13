
-- Insertion de personnes valides
INSERT INTO Personne (Nom, Prenom, Date_naissance, Sexe, Taille, Poids, Email, Mot_de_passe)
VALUES ('Dupont', 'Jean', '1990-05-15', 'Homme', 180, 75, 'jean.dupont@example.com', 'password123');

INSERT INTO Personne (Nom, Prenom, Date_naissance, Sexe, Taille, Poids, Email, Mot_de_passe)
VALUES ('Martin', 'Sophie', '1985-10-22', 'Femme', 165, 60, 'sophie.martin@example.com', 'password456');

-- Insertion de personnes non valides (pour tester les contraintes)
-- Email non valide (pas de domaine)
INSERT INTO Personne (Nom, Prenom, Date_naissance, Sexe, Taille, Poids, Email, Mot_de_passe)
VALUES ('Durand', 'Pierre', '1992-03-18', 'Homme', 175, 80, 'pierre.durand@example', 'password456');

-- Email en double (conflit avec jean.dupont@example.com)
INSERT INTO Personne (Nom, Prenom, Date_naissance, Sexe, Taille, Poids, Email, Mot_de_passe)
VALUES ('Dupont', 'Jeanne', '1990-05-15', 'Femme', 170, 65, 'jean.dupont@example.com', 'password789');

-- Insertion d'activités valides
INSERT INTO Activity (ID_Utilisateur, Description, Date)
VALUES (1, 'Course à pied', '2024-09-01');

INSERT INTO Activity (ID_Utilisateur, Description, Date)
VALUES (2, 'Cyclisme', '2024-09-02');

-- Insertion d'activités non valides
-- Utilisateur inexistant (ID_Utilisateur = 99)
INSERT INTO Activity (ID_Utilisateur, Description, Date)
VALUES (99, 'Natation', '2024-09-03');

-- Insertion de données valides pour une activité
INSERT INTO Data (ID_Activite, temps, cardio_frequence, latitude, longitude, altitude)
VALUES (1, '00:30:00', 120, 48.1234567, -2.1234567, 15.50);
