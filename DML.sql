INSERT INTO course (NAME, duration)
VALUES ('Analisis dan Perancangan Sistem', 100),
		 ('Pendidikan Agama', 90),
		 ('Struktur Data', 150),
		 ('Struktur Diskrit', 150),
		 ('Sistem Basis data I', 100);
SELECT * FROM course;

INSERT INTO jadwal (id_course, tgl, jam)
VALUES (1, '2022-10-03', '2022-10-03 07:30:00'),
		 (2, '2022-10-04', '2022-10-04 16:20:00'),
		 (3, '2022-10-05', '2022-10-05 07:30:00'),
		 (4, '2022-10-05', '2022-10-05 10:10:00'),
		 (5, '2022-10-06', '2022-10-06 10:10:00');
SELECT * FROM jadwal;

INSERT INTO students (full_name, address, major)
VALUES ('Djulizah Bonita Lanini', 'Jl. Permata Indah', 'Sistem Informasi'),
		 ('Dewa Rescue Virgiawansyah', 'Jl. Cempaka', 'Sistem Informasi'),
		 ('Firmansyah', 'Jl. Delima No.7', 'Sistem Informasi'),
		 ('Muhammad Dzacky ilham', 'Jl. Macan', 'Sistem Informasi'),
		 ('Muhammad Faiz Fatwa Syarifuddin', 'Jl. Anggrek Blok B No.1', 'Sistem Informasi'),
		 ('Muhammad Raihan aradhana', 'Jl. Pengayoman', 'Sistem Informasi'),
		 ('Wd. Ananda Lesmono', 'Bukit Baruga', 'Sistem Informasi');
SELECT * FROM students;

SELECT * FROM students_jadwal;
INSERT INTO students_jadwal (id_students, id_jadwal)
VALUES (1, 1),
		 (1, 2),
		 (1, 5),
		 (2, 1),
		 (2, 2),
		 (2, 3),
		 (3, 2),
		 (3, 3),
		 (3, 4),
		 (3, 5),
		 (4, 1),
		 (4, 2),
		 (4, 4),
		 (5, 2),
		 (5, 4),
		 (5, 5),
		 (6, 1),
		 (6, 2),
		 (6, 3),
		 (7, 2),
		 (7, 4),
		 (7, 5);

-- Create New Student info record
INSERT INTO students
VALUES (NULL,"","","");

-- List Student
SELECT * FROM students;
SELECT * FROM jadwal;
SELECT * FROM course;

-- Update student info record
UPDATE students
SET full_name = "",address = "", major = ""
WHERE id_students = 8;

-- list of schedule on specifi student
SELECT students.full_name,course.Name, course.duration, jadwal.tgl, jadwal.jam
FROM students  
INNER JOIN students_jadwal 
on students.id_students = students_jadwal.id_students
INNER JOIN jadwal
on students_jadwal.id_jadwal = jadwal.id_jadwal
INNER JOIN course
ON jadwal.id_course = course.id_course
WHERE students.id_students = 5;

-- list of course
SELECT * FROM course;

-- input new schedule for specific student
INSERT INTO course (NAME, duration)
Values ('Pemrograman web', '100');
INSERT INTO Jadwal (id_course,tgl, jam)
Values ('6', '2022-10-02', '2022-10-02 10:10:00');
INSERT INTO students_jadwal
Values (5,6);

-- update schedule for specific student
update course
INNER JOIN jadwal
ON course.id_course = jadwal.id_course 
INNER JOIN students_jadwal
on jadwal.id_jadwal = students_jadwal.id_jadwal 
INNER JOIN students
on  students_jadwal.id_students = students.id_students 
Set jadwal.tgl = '2022-10-03', jam ='2022-10-03 13:10:00'
WHERE course.id_course = '6' AND students.id_students ='5';


		 