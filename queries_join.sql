-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`,`students`.`surname`,`students`.`registration_number`,`degrees`.`name`
FROM `degrees`
INNER JOIN `students`
ON `degrees`.`id`=`students`.`degree_id`
WHERE `degrees`.`name` = "corso di laurea in economia";

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`name`, `departments`.`name`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id`=`departments`.`id`
WHERE `degrees`.`level` = "magistrale"
AND `departments`.`name`= "Dipartimento di Neuroscienze";