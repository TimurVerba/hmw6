SELECT students.fullname, AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.id = grades.student_id
GROUP BY students.id, students.fullname
ORDER BY average_grade DESC
LIMIT 5;

SELECT students.fullname, AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.id = grades.student_id
JOIN subjects on subject_id = grades.subject_id 
where subjects.name = 'focus'
GROUP BY students.id, students.fullname
ORDER BY average_grade DESC
LIMIT 1;

select groups.name, AVG(grades.grade) as average_grade
from groups
JOIN students ON groups.id = students.group_id
JOIN grades ON students.id = grades.student_id
JOIN subjects ON subjects.id = grades.subject_id
WHERE subjects.name = 'focus'
GROUP BY groups.id, groups.name;

select AVG(grade) as average_grade
from grades;

select subjects.name
from subjects 
where subjects.teacher_id  = (select id from teachers where fullname = 'Leah Santos');

select students.fullname 
from students 
where students.group_id = (select id from groups where name = 'add');

select distinct students.fullname, grades.grade 
from students 
join grades on student_id = grades.student_id 
join subjects on subject_id = grades.subject_id 
where students.group_id  = (select id from groups where name = 'add');


SELECT teachers.fullname, AVG(grades.grade) AS average_grade
FROM teachers
JOIN subjects ON teachers.id = subjects.teacher_id
JOIN grades ON subjects.id = grades.subject_id
where subjects.teacher_id  = (select id from teachers where fullname = 'Leah Santos')
group by teachers.fullname 
;

SELECT distinct subjects.name
FROM subjects
JOIN grades ON subjects.id = grades.subject_id
JOIN students ON grades.student_id = students.id
WHERE students.fullname = 'Michael Green';

select subjects.name
from subjects 
join grades on subject_id = grades.subject_id 
JOIN students ON grades.student_id = students.id
JOIN teachers ON subjects.teacher_id = teachers.id
where students.fullname = 'Michael Green' and teachers.fullname = 'Leah Santos'







