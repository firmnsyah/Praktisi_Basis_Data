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
		 