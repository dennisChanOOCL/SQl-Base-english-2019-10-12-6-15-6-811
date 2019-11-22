CREATE TABLE student (
id INT(3) PRIMARY KEY,
name VARCHAR(30),
age INT(3),
sex VARCHAR(10),
) 

CREATE TABLE subject (
id INT(3) PRIMARY KEY,
subject VARCHAR(64),
teacher VARCHAR(64),
description VARCHAR(64),
) 

CREATE TABLE score (
id INT(3) PRIMARY KEY,
student_id INT(4),
subject_id INT(4),
score INT(4),
FOREIGN KEY (student_id) REFERENCES student(id),
FOREIGN KEY (subject_id) REFERENCES subject(id)
) 


INSERT INTO student (id, name, age, sex) VALUES (001, 'zhangsan', 18, 'male');
INSERT INTO student (id, name, age, sex) VALUES (002, 'lisi', 20, 'female');

INSERT INTO subject (id, subject, teacher, description) VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO subject (id, subject, teacher, description) VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO score (id, student_id, subject_id, score) VALUES (1, 001, 1001, 80);
INSERT INTO score (id, student_id, subject_id, score) VALUES (2, 002, 1002, 60);
INSERT INTO score (id, student_id, subject_id, score) VALUES (3, 001, 1001, 70);
INSERT INTO score (id, student_id, subject_id, score) VALUES (4, 002, 1002, 60.5);