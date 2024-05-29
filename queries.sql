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