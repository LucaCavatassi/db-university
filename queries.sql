-- Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM `students` 
WHERE `date_of_birth` LIKE "1990-%"
ORDER BY `date_of_birth` ASC;

-- Selezionare tutti i corsi che valgono più di 10 crediti
SELECT * 
FROM `courses` 
WHERE `cfu` > 10
ORDER BY `cfu` ASC;

-- Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR,`date_of_birth`, CURDATE()) > 30;

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di  laurea (286).
SELECT * 
FROM `courses`
WHERE `period` = "I semestre" 
AND `year` = 1;

-- ______________________
-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams`
WHERE `date` = "2020-06-20"
AND `hour`> "14:00:00";

-- Selezionare tutti i corsi di laurea magistrale
SELECT * 
FROM `degrees`
WHERE `level` = "magistrale";

-- Da quanti dipartimenti è composta l'università?
SELECT COUNT(`id`)
FROM `departments`;

-- Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT * 
FROM `teachers`
WHERE `phone` IS NULL;

-- Inserire nella tabella degli studenti un nuovo record con i propri dati (per il campo
-- degree_id, inserire un valore casuale)
INSERT INTO `students`(`degree_id`, `name`,`surname`,`date_of_birth`,`fiscal_code`,`enrolment_date`,`registration_number`,`email`)
VALUES(55, "LucaMaria", "Cavatassi", "1994-12-01", "CVTLMR94T01I348H","2024-05-29", 625033, "lucamariacavatassi@gmail.com")

-- Cambiare il numero dell’ufficio del professor Pietro Rizzo in 126
UPDATE `teachers`
SET `office_number` = 126
WHERE `name`= "Pietro" AND `surname` = "Rizzo";

-- Eliminare dalla tabella studenti il record creato precedentemente al punto 9
DELETE FROM `students`
WHERE `id` = 5001;