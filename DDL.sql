CREATE TABLE course (
	id_course INT, 
	NAME VARCHAR(255),
	duration INT,
	PRIMARY KEY (id_course)
)

CREATE TABLE students (
	id_students INT,
	full_name VARCHAR(255),
	address VARCHAR(255),
	major VARCHAR(255),
	PRIMARY KEY (id_students)
)

CREATE TABLE jadwal (
	id_jadwal INT,
	id_course INT,
	tgl DATE,
	jam TIMESTAMP,
	PRIMARY KEY(id_jadwal),
	FOREIGN KEY(id_course) REFERENCES course (id_course)
)

CREATE TABLE students_jadwal (
	id_students INT,
	id_jadwal INT,
	FOREIGN KEY (id_students) REFERENCES students (id_students),
	FOREIGN KEY (id_jadwal) REFERENCES jadwal (id_jadwal)
)