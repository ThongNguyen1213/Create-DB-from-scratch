-- Create Student Table

CREATE TABLE students(
  id integer PRIMARY KEY,
	first_name varchar(20),
  last_name varchar (20),
  age integer,
  gender varchar(10) check (gender in ('Female', 'Male')),
  grade integer
);

-- Create Teacher Table

CREATE TABLE teachers(
  id integer PRIMARY KEY,
	first_name varchar(20),
  last_name varchar (20),
  age integer,
  gender varchar(10) check (gender in ('Female', 'Male'))
);

-- Create student-teacher connection table
CREATE TABLE students_teachers(
  student_id integer REFERENCES students(id),
  teacher_id integer REFERENCES teachers(id)
);

-- Create class table
CREATE TABLE classes (
  id integer PRIMARY KEY,
  name varchar(20),
  credit integer,
  duration time,
  location varchar(30)
);

-- Create student-class connection table
CREATE TABLE students_classes (
  class_id integer REFERENCES classes(id),
  student_id integer REFERENCES students(id)
);