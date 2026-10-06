CREATE DATABASE tutedude_projects; 
USE tutedude_projects;
                
CREATE TABLE t_employees (
    emp_no      INT		        NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE t_departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

CREATE TABLE t_dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   PRIMARY KEY (emp_no,dept_no)
); 

CREATE TABLE t_dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE t_salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    PRIMARY KEY (emp_no, from_date)
) 
;

INSERT INTO t_employees(emp_no,birth_date,first_name,last_name,gender,hire_date) VALUES
(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),
(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),
(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27'),
(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03'),
(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30'),
(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26'),
(10022,'1952-07-08','Shahaf','Famili','M','1995-08-22'),
(10024,'1958-09-05','Suzette','Pettey','F','1997-05-19'),
(10026,'1953-04-03','Yongqiao','Berztiss','M','1995-03-20'),
(10028,'1963-11-26','Domenick','Tempesti','M','1991-10-22'),
(10030,'1958-07-14','Elvis','Demeyer','M','1994-02-17'),
(10031,'1959-01-27','Karsten','Joslin','M','1991-09-01'),
(10032,'1960-08-09','Jeong','Reistad','F','1990-06-20'),
(10036,'1959-08-10','Adamantios','Portugali','M','1992-01-03');