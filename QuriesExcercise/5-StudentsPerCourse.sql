-- All the students per course

use `privateschool`;

SELECT 
    `courses`.`Cid` AS `Course_ID`,
    `courses`.`title` AS `Title`,
    `courses`.`stream` AS `Sream`,
    `courses`.`type` AS `Type`,
    `students`.`firstname` AS `Srudents_First_Name`,
    `students`.`lastname` AS `Students_Last_Name`
FROM
    `studentspercourse`
        INNER JOIN
    `students` ON `students`.`Sid` = `studentspercourse`.`id_student`
        INNER JOIN
    `courses` ON `courses`.`Cid` = `studentspercourse`.`id_course`
ORDER BY `courses`.`Cid`;