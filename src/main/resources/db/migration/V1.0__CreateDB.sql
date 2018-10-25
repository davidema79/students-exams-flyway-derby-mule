CREATE TABLE students (
  id INTEGER NOT NULL ,
  name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE professors (
  id INTEGER NOT NULL CONSTRAINT professor_pk PRIMARY KEY,
  name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE subjects (
  id INTEGER NOT NULL  CONSTRAINT subject_pk PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE exams (
  id INTEGER NOT NULL CONSTRAINT exam_pk PRIMARY KEY,
  date_exam DATE,
  subject_id INTEGER,
  professor_id INTEGER
);

CREATE TABLE exams_students (
  student_id INTEGER,
  exam_id INTEGER,
  result VARCHAR(6)
);