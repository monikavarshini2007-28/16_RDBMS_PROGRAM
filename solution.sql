create database STUDENTINSERT;
use STUDENTINSERT;
create table student(studentID NUMBER PRIMARY KEY, studentname VARCHAR(30), departmentID NUMBER);
CREATE OR REPLACE PROCEDURE InsertStudent(
p_ID NUMBER,
p_Name VARCHAR2,
p_DepartmentID NUMBER
)
IS
BEGIN
INSERT INTO Student
VALUES (p_ID, p_Name, p_DepartmentID);

DBMS_OUTPUT.PUT_LINE('Student inserted successfully');
END;
/
SET SERVEROUTPUT ON;
BEGIN
     insertstudent(1001, 'arun', 101);
END;
/
SELECT * FROM student;
