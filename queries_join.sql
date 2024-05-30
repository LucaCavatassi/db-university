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

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
SELECT `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `course_teacher` 
INNER JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id`= `teachers`.`id`
WHERE `teachers`.`id`= 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name` 
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `departments`.`id`=`degrees`.`department_id`
ORDER BY `students`.`name`,`students`.`surname`;