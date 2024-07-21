-- Write query to find the number of grade A's given by the teacher who has graded the most assignments

-- SELECT COUNT(*) AS num_a_grades
-- FROM assignments
-- WHERE grade = 'A'
--   AND teacher_id = (
--     SELECT teacher_id
--     FROM assignments
--     WHERE state = 'GRADED'
--     GROUP BY teacher_id
--     ORDER BY COUNT(*) DESC
--     LIMIT 1
--   );

  select count(*) as "count_a_grade"
  from assignments
  where grade = 'A'
  and teacher_id =(
    select teacher_id
    from assignments
    where state  ="GRADED"
    group by teacher_id
    order by count(*) DESC
    limit 1
  );