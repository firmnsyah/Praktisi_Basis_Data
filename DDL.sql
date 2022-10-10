CREATE USER 'Kel_Vb'@'localhost'; 
CREATE DATABASE Kelompok_VB;
USE Kelompok_VB;

CREATE TABLE course (
	id_course INT NOT NULL AUTO_INCREMENT, 
	NAME VARCHAR(255) NOT NULL,
	duration INT NOT NULL,
	PRIMARY KEY (id_course)
);

CREATE TABLE students (
	id_students INT NOT NULL AUTO_INCREMENT,
	full_name VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	major VARCHAR(255) NOT NULL,
	PRIMARY KEY (id_students)
);

CREATE TABLE jadwal (
	id_jadwal INT NOT NULL AUTO_INCREMENT,
	id_course INT NOT NULL,
	tgl DATE NOT NULL,
	jam TIMESTAMP NOT NULL,
	PRIMARY KEY(id_jadwal),
	FOREIGN KEY(id_course) REFERENCES course (id_course)
);

CREATE TABLE students_jadwal (
	id_students INT NOT NULL,
	id_jadwal INT NOT NULL,
	FOREIGN KEY (id_students) REFERENCES students (id_students),
	FOREIGN KEY (id_jadwal) REFERENCES jadwal (id_jadwal)
);