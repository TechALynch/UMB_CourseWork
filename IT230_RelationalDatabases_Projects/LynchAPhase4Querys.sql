-- Question 1 --
select profid, proflname, proffname, profrank, profspecialty from professor
order by proflname asc;

-- Question 2 --
select studentid, studentlname, studentfname, studentemail from student
order by studentlname asc ;

-- Question 3 --
select studentid, studentlname, studentfname, studentemail 
from student
where (studentemail = '' or studentemail is null);

-- Question 4 --
select courseid, coursetitle, coursedescription, coursecredits from course
order by courseid;

-- Question 5 --
select course.courseid, coursetitle, coursecredits, classsection, classtime, CONCAT(proflname, ' ', proffname) AS "Professor Full Name"
from course, class, professor
where course.courseid = class.courseid
and professor.profid = class.profid
order by courseid;

-- Question 6 --
Select course.Courseid, coursetitle, classid
from course, class
where course.courseid = class.courseid
and (class.courseid = '');

-- Question 7 --
select coursedept.courseid, coursetitle, coursedept.deptid, deptname
from course, department, coursedept
where department.deptid = coursedept.deptid
and coursedept.courseid = course.courseid
order by deptname;

-- Question 8 --
select course.courseid, coursetitle, classsection, classdays, classtime
from course left join class on course.courseid = class.courseid;

-- Question 9 --
select student.studentlname, student.studentfname, course.courseid, coursetitle, classsection, classdays, classtime 
from student, course, class, enroll
where student.studentid = enroll.studentid 
and enroll.courseid = course.courseid 
and enroll.classid = class.classid 
order by student.studentlname asc;

-- Question 10 --
select studentid, studentlname, studentfname
from student
where studentid not in (select studentid from enroll);

-- Question 11 --
Select professor.profid, proflname, proffname 
from professor, class, course
where professor.profid = class.profid
and class.courseid = course.courseid
and (course.courseid is NULL or course.courseid = '');

-- Question 12 --
select deptname, proflname, proffname
from department, deptchair, professor, coursedept, course, class
where department.deptid = deptchair.deptid
and deptchair.deptid = coursedept.deptid
and coursedept.courseid = course.courseid
and class.courseid = course.courseid
and class.profid = professor.profid
order by department.deptname;

-- Question 13 --
select  student.studentid, studentlname, studentfname
from student
where studentid not in (select studentid from advisor);

-- Question 14 --
select CONCAT(studentlname, ' ', studentfname) AS "Student Full Name", CONCAT(proflname, ' ', proffname) AS "Professor Full Name", professorid  
from student, professor, advisor
where advisor.studentid = student.studentid 
and advisor.professorid = professor.profid
order by studentlname;

-- Question 15 --
select studentlname, studentfname, deptname
from student, studentdept, department
where studentdept.studentid = student.studentid 
and studentdept.deptid = department.deptid
order by studentlname;

-- Question 16 --
update enroll set grade = 'A ' where studentid = 'AA001';
update enroll set grade = 'B ' where studentid = 'AB001';
update enroll set grade = 'C ' where studentid = 'CA001';
update enroll set grade = 'D ' where studentid = 'JE001';
update enroll set grade = 'I ' where studentid = 'JE002';
update enroll set grade = 'F ' where studentid = 'JM001';
update enroll set grade = 'I ' where studentid = 'KN001';
update enroll set grade = 'A ' where studentid = 'LC001';
update enroll set grade = 'B ' where studentid = 'MB001';
update enroll set grade = 'C ' where studentid = 'MB002';
update enroll set grade = 'D ' where studentid = 'PP001';
update enroll set grade = 'E ' where studentid = 'RK002';
update enroll set grade = 'F ' where studentid = 'WS001';

-- Question 17 --
select grade, count(grade) from enroll group by grade;

-- Question 18 --
SELECT CONCAT(student.studentfname, ' ', student.studentlname) AS "Student Full Name", coursetitle, classsection, grade 
from student, course, class, enroll
where student.studentid = enroll.studentid 
and enroll.courseid = course.courseid 
and enroll.classid = class.classid 
order by student.studentlname;

-- Question 19 --
SELECT CONCAT(student.studentfname, ' ', student.studentlname) AS "Student Full Name", coursetitle, classsection, grade 
from student, course, class, enroll
where student.studentid = enroll.studentid 
and enroll.courseid = course.courseid 
and enroll.classid = class.classid
and (grade = 'F' or grade = 'D')
order by student.studentlname;

-- Question 20 --
delete from enroll where grade = "I";