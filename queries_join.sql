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

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name` AS `degree_name`,`courses`.`name` AS `lessons_name`,`teachers`.`name` AS `teacher_name` , `teachers`.`surname`AS `teacher_surname`
FROM `degrees`
INNER JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id`= `teachers`.`id`
ORDER BY `degrees`.`name`;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT `teachers`.`name` AS `teacher_name` , `teachers`.`surname`AS `teacher_surname`, `departments`.`name` AS `department`
FROM `degrees`
INNER JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id`= `teachers`.`id`
INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = "Dipartimento di Matematica";

-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
SELECT `students`.`name`, `students`.`surname`, `courses`.`name` AS `course_name`, COUNT(`exams`.`id`) AS `exams_number`
,MAX(`exam_student`.`vote`) AS `max_vote`
FROM `students`
INNER JOIN `exam_student`
ON `exam_student`.`student_id` = `students`.`id`
INNER JOIN `exams`
ON `exam_student`.`exam_id` = `exams`.`id`
INNER JOIN `courses`
ON `exams`.`course_id` = `courses`.`id`
GROUP BY `students`.`id`, `courses`.`id`
HAVING `max_vote` >= 18;