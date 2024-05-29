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