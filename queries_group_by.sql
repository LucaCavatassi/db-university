-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`students`.`enrolment_date`) AS `enrolment_year`, COUNT(`id`) AS `students_number`
FROM `students` 
GROUP BY YEAR(`students`.enrolment_date);

-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `teachers`.`office_address`, COUNT(`id`)
FROM `teachers`
WHERE `teachers`.`office_address` = `teachers`.`office_address`
GROUP BY `teachers`.`office_address`;

-- Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`exam_student`.`vote`),2) AS `average_vote`, `exams`.`date` AS `exams`
FROM `exam_student`
INNER JOIN `exams`
ON `exam_student`.`exam_id`= `exams`.`id`
GROUP BY `exams`.`date`;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `departments`.`name`, COUNT(`degrees`.`id`) AS `degrees_courses`
FROM `departments`
INNER JOIN `degrees`
ON `degrees`.`department_id` = `departments`.`id`
GROUP BY `departments`.`name`;