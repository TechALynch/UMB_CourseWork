use msis230;

delete from studentdept;
delete from coursedept;
delete from deptchair;
delete from enroll;
delete from advisor;
delete from class;
delete from course;
delete from student;
delete from professor;
delete from department;

INSERT INTO PROFESSOR
(ProfID, ProfSpecialty, ProfRank,ProfLname, ProfFname, ProfInitial, ProfEmail)
VALUES
('SJ001','Information Systems','Professor','Jones','Samuel','L','SJones@trinity.edu'),
('NS001','Data Analytics','Professor','Smith','Nancy','P','NSmith@trinity.edu'),
('RA001','Microbiology','Adjunct','Adams','Robert','R','RAdams@trinity.edu'),
('BB001','Thermodynamics','Professor','Brooks','Bradford','C','BBrooks@trinity.edu'),
('SM001','Discrete Math','Adjunct','McDonald','Susan','W','SMcDonald@trinity.edu'),
('SW001','Choreography','Professor','Winsor','Stephen','A','SWinsor@trinity.edu'),
('TA001','Macroeconomics','Professor','Anthony','Todd','T','TAnthony@trinity.edu'),
('JW001','Child Development','Professor','Walker','Joanne','L','JWalker@trinity.edu'),
('TH001','Statics','Professor','Hastings','Timothy','','THastings@trinity.edu'),
('MY001','Quantum Mechanics','Professor','Young','Margaret','J','MYoung@trinity.edu'),
('CM001','Software Engineering','Professor','MacNamara','Christine','F','CMacNamara@trinity.edu'),
('DW001','Voice Coaching','Professor','Winsor','Deborah','','DWinsor@trinity.edu'),
('HB001','Technology in Education','Professor','Brown','Harold','R','HBrown@trinity.edu'),
('CN001','Genetics','Professor','Noble','Charles','E','CNoble@trinity.edu'),
('FL001','Statistical Mechanics','Professor','Lawton','Francis','X','FLawton@trinity.edu'),
('PH001','Hydraulics and Hydrology','Adjunct','Hohl','Patrick','','PHohl@trinity.edu'),
('KY001','Aerodynamics','Professor','Yang','Kim','','KYang@trinity.edu'),
('JS001','Cosmology','Adjunct','Santiago','Jose','M','JSantiago@trinity.edu');

INSERT INTO STUDENT
(StudentID, StudentLName, StudentFName, StudentInitial,StudentEmail)
VALUES
('PP001','Pierce','Paul','A','ppierce@trinity.edu'),
('AA001','Adams','Abigail','W','aadams@trinity.edu'),
('WS001','Smithson','William','P','wsmithson@trinity.edu'),
('AB001','Bonner','Allison','W','abonner@trinity.edu'),
('MB001','Brady','Marcia','','mbrady@trinity.edu'),
('KN001','Nelson','Kenneth','A','knelson@trinity.edu'),
('CA001','Alexander','Constance','C','calexander@trinity.edu'),
('TN001','Nguyen','Trin','','tnguyen@trinity.edu'),
('SB001','Brandt','Stephen','R','sbrandt@trinity.edu'),
('JE001','Espanet','Jesse','',''),
('JE002','Espanet','Jordan','',''),
('EL001','Lawton','Eleanor','','elawton@trinity.edu'),
('RK001','King','Robert','L','rking@trinity.edu'),
('RK002','Kershaw','Rowena','C','rkershaw@trinity.edu'),
('RM001','McNamara','Richard','','rmcnamara@trinity.edu'),
('LC001','Chin','Lori','','lchin@trinity.edu'),
('JM001','Martinez','Jose','','jmartinez@trinity.edu'),
('MB002','Brown','Marcus','L','');

INSERT INTO DEPARTMENT
(DeptID,DeptNamE)
VALUES
('MSIS','MSIS'),
('BIO','Biology'),
('PHY','Physics'),
('MKT','Marketing'),
('ECO','Economics'),
('CHE','Chemistry'),
('DAN','Dance'),
('MUS','Music'),
('AER','Aerospace'),
('CE','Civil Engineering'),
('CS','Computer Science'),
('AM','Applied Mathematics'),
('EE','Elementary Education'),
('SE','Special Education');

INSERT INTO COURSE
VALUES
('MGT105','Intro to Information Systems','Lecture',3),
('MGT475','Strategic Marketing','Lecture',4),
('ENG210','Engineering Mecahnics I','Lab',3),
('ENG320','Electric Circuits','Lab',4),
('EDU117','Educational Equity and the Law','Lecture',3),
('EDU256','Education and Religion','Lecture',3),
('MATH300','Statistics','Lecture',4),
('MATH325','Calculus II','Lecture',4),
('SCI110','Physics I','Lab',3),
('SCI415','Thermodynamics','Lab',4);

INSERT INTO CLASS
(Classid,ClassSection,ClassDays,ClassTime,CourseID,ProfID)
VALUES
('CL001','1','MWF','8:00 - 9:00','MGT105','SJ001'),
('CL002','2','TTh','1:30 - 3:00','MGT105','NS001'),
('CL003','1','MWF','1:00 - 2:00','MGT475','SJ001'),
('CL004','1','MWF','11:00 - 12:00','ENG210','KY001'),
('CL005','2','TTh','11:30 - 1:00','ENG210','KY001'),
('CL006','3','W','6:00 - 9:00','ENG210','BB001'),
('CL007','1','TTh','8:30 - 11:00','MATH300','SM001'),
('CL008','1','MWF','10:00 - 11:00','MATH325','MY001'),
('CL009','1','M','6:00 - 9:00','SCI110','FL001'),
('CL010','1','Th','6:00 - 9:00','SCI415','MY001');

INSERT INTO ENROLL
(CLASSID, STUDENTID, ENROLL_DATE,GRADE, COURSEID)
VALUES
('CL001','PP001','2020-03-09','','MGT105'),
('CL002','PP001','2020-01-04','','MGT105'),
('CL003','PP001','2020-01-21','','MGT475'),
('CL009','AA001','2020-03-12','','SCI110'),
('CL010','AA001','2020-02-29','','SCI415'),
('CL004','WS001','2020-02-15','','ENG210'),
('CL005','AB001','2020-01-17','','ENG210'),
('CL006','AB001','2020-03-31','','ENG210'),
('CL008','AB001','2020-02-02','','MATH325'),
('CL009','JE001','2020-01-20','','SCI110'),
('CL010','JE002','2020-03-31','','SCI415'),
('CL001','JE002','2020-01-15','','MGT105'),
('CL004','LC001','2020-01-05','','ENG210'),
('CL008','JM001','2020-03-17','','MATH325'),
('CL009','MB002','2020-03-15','','SCI110'),
('CL006','MB001','2020-04-01','','ENG210'),
('CL005','RK002','2020-02-12','','ENG210'),
('CL006','RK002','2020-04-05','','ENG210'),
('CL003','KN001','2020-03-03','','MGT475'),
('CL010','CA001','2020-02-12','','SCI415');

INSERT INTO DEPTCHAIR
(DEPTID, PROFESSORID)
VALUES
('MSIS','SJ001'),
('PHY','JS001'),
('MKT','NS001'),
('CHE','MY001'),
('DAN','SW001'),
('MUS','DW001'),
('AER','TH001'),
('CS','CM001'),
('AM','SM001'),
('EE','JW001'),
('SE','JW001');

INSERT INTO ADVISOR
(STUDENTID, PROFESSORID)
VALUES
('PP001','NS001'),
('AA001','CN001'),
('WS001','TA001'),
('MB001','JW001'),
('KN001','SJ001'),
('CA001','NS001'),
('TN001','CM001'),
('SB001','TH001'),
('JE002','SW001'),
('EL001','MY001'),
('RK002','CM001'),
('RM001','HB001'),
('JM001','HB001');

INSERT INTO STUDENTDEPT
VALUES
('PP001','MSIS'),
('AA001','BIO'),
('WS001','ECO'),
('AB001','CS'),
('MB001','SE'),
('CA001','MSIS'),
('TN001','CS'),
('JE001','PHY'),
('JE002','DAN'),
('RK001','PHY'),
('RK002','CS'),
('RM001','EE'),
('LC001','MUS'),
('JM001','EE'),
('MB002','MKT');

INSERT INTO COURSEDEPT
VALUES
('MGT105','MSIS'),
('MGT475','MKT'),
('ENG210','AER'),
('ENG320','CE'),
('EDU117','EE'),
('EDU256','EE'),
('MATH300','AM'),
('MATH325','AM'),
('SCI110','PHY'),
('SCI415','PHY');

