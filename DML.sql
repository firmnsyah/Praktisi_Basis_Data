SELECT * FROM course
INSERT INTO course (id_course, NAME, duration)
VALUES (1, 'Analisis dan Perancangan Sistem', 100),
		 (2, 'Pendidikan Agama', 90),
		 (3, 'Struktur Data', 150),
		 (4, 'Struktur Diskrit', 150),
		 (5, 'Sistem Basis data I', 100);

SELECT * FROM jadwal
INSERT INTO jadwal (id_jadwal, id_course, tgl, jam)
VALUES (1, 1, '2022-10-03', '2022-10-03 07:30:00'),
		 (2, 2, '2022-10-04', '2022-10-04 16:20:00'),
		 (3, 3, '2022-10-05', '2022-10-05 07:30:00'),
		 (4, 4, '2022-10-05', '2022-10-05 10:10:00'),
		 (5, 5, '2022-10-06', '2022-10-06 10:10:00');

SELECT * FROM students
INSERT INTO students (id_students, full_name, address, major)
VALUES (1, 'Djulizah Bonita Lanini', 'Jl. Permata Indah', 'Sistem Informasi'),
		 (2, 'Dewa Rescue Virgiawansyah', 'Jl. Cempaka', 'Sistem Informasi'),
		 (3, 'Firmansyah', 'Jl. Delima No.7', 'Sistem Informasi'),
		 (4, 'Muhammad Dzacky ilham', 'Jl. Macan', 'Sistem Informasi'),
		 (5, 'Muhammad Faiz Fatwa Syarifuddin', 'Jl. Anggrek Blok B No.1', 'Sistem Informasi'),
		 (6, 'Muhammad Raihan aradhana', 'Jl. Pengayoman', 'Sistem Informasi'),
		 (7, 'Wd. Ananda Lesmono', 'Bukit Baruga', 'Sistem Informasi');

SELECT * FROM students_jadwal
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
		 