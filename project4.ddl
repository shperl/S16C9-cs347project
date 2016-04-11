drop view S16_employee_view ;
drop view S16_previous_emp_view ;
drop view S16_manager_view ;
drop view S16_interim_man_view ;
drop view S16_president_view ;
drop view S16_current_proj_view ;
drop view S16_previous_proj_view ;
drop view S16_department_view ;

create view S16_employee_view as
SELECT 
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    person_id1,
    employee_id,
    salary,
    salary_exception,
    person_id3
FROM Person where type = 'Employee' ;

create or replace TRIGGER S16_employee_trigger
     INSTEAD OF insert ON S16_employee_view
     FOR EACH ROW
BEGIN
    insert into Person( 
            person_id,
            type,
            first_name,
            last_name,
            home_address,
            zipcode,
            home_phone,
            us_citizen,
            person_id1,
            employee_id,
            salary,
            salary_exception,
            person_id3)
         VALUES ( 
            :NEW.person_id,
            'Employee',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.person_id1,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.person_id3
            ) ;
END;
/

create view S16_previous_emp_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    person_id1,
    isFired,
    salary
FROM Person WHERE type = 'Previous_Employee' ;

create or replace TRIGGER S16_previous_emp_trigger
     INSTEAD OF insert ON S16_previous_emp_view
     FOR EACH ROW
BEGIN
    insert into Person( 
        person_id,
        type,
        first_name,
        last_name,
        home_address,
        zipcode,
        home_phone,
        us_citizen,
        person_id1,
        isFired,
        salary)
    VALUES ( 
            :NEW.person_id,
            'Previous_Employee',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.person_id1,
            :NEW.isFired,
            :NEW.salary) ;
END;
/


create view s16_manager_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    person_id1,
    employee_id,
    salary,
    salary_exception,
    person_id3,
    bonus,
    dept_no
FROM Person WHERE type = 'Manager' ;

create or replace TRIGGER s16_manager_trigger
     INSTEAD OF insert ON s16_manager_view
     FOR EACH ROW
BEGIN
    insert into Person( 
        person_id,
        type,
        first_name,
        last_name,
        home_address,
        zipcode,
        home_phone,
        us_citizen,
        person_id1,
        employee_id,
        salary,
        salary_exception,
        person_id3,
        bonus,
        dept_no)
    VALUES ( 
            :NEW.person_id,
            'Manager',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.person_id1,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.person_id3,
            :NEW.bonus,
            :NEW.dept_no) ;
END;
/


create view S16_interim_man_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    person_id1,
    employee_id,
    salary,
    salary_exception,
    person_id3,
    bonus,
    dept_no
FROM Person WHERE type = 'Interim_Manager' ;

create or replace TRIGGER S16_interim_man_trigger
     INSTEAD OF insert ON S16_interim_man_view
     FOR EACH ROW
BEGIN
    insert into Person( 
        person_id,
        type,
        first_name,
        last_name,
        home_address,
        zipcode,
        home_phone,
        us_citizen,
        person_id1,
        employee_id,
        salary,
        salary_exception,
        person_id3,
        bonus,
        dept_no)
    VALUES ( 
            :NEW.person_id,
            'Interim_Manager',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.person_id1,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.person_id3,
            :NEW.bonus,
            :NEW.dept_no) ;
END;
/

create view s16_president_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    person_id1,
    employee_id,
    salary,
    salary_exception,
    person_id3,
    bonus,
    dept_no
FROM Person WHERE type = 'President' ;

create or replace TRIGGER s16_president_trigger
     INSTEAD OF insert ON s16_president_view
     FOR EACH ROW
BEGIN
    insert into Person( 
        person_id,
        type,
        first_name,
        last_name,
        home_address,
        zipcode,
        home_phone,
        us_citizen,
        person_id1,
        employee_id,
        salary,
        salary_exception,
        person_id3,
        bonus,
        dept_no)
    VALUES ( 
            :NEW.person_id,
            'President',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.person_id1,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.person_id3,
            :NEW.bonus,
            :NEW.dept_no) ;
END;
/

create view S16_current_proj_view as
SELECT
    project_no,
    type,
    project_title,
    person_id,
    dept_no,
    project_no1,
    project_active
FROM Project WHERE type = 'Current_Project' ;

create or replace TRIGGER S16_current_proj_trigger
     INSTEAD OF insert ON S16_current_proj_view
     FOR EACH ROW
BEGIN
    insert into Project( 
        project_no,
        type,
        project_title,
        person_id,
        dept_no,
        project_no1,
        project_active)
    VALUES ( 
            :NEW.project_no,
            'Current_Project',
            :NEW.project_title,
            :NEW.person_id,
            :NEW.dept_no,
            :NEW.project_no1,
            :NEW.project_active) ;
END;
/

create view S16_previous_proj_view as
SELECT
    project_no,
    project_title,
    type,
    project_active,
    end_date_month,
    end_date_day,
    end_date_year,
    est_person_hours,
    dept_no,
    person_id,
    project_no1
FROM Project WHERE type = 'Previous_Project';

create or replace TRIGGER S16_previous_proj_trigger
     INSTEAD OF insert ON S16_previous_proj_view
     FOR EACH ROW
BEGIN
    insert into Project(
    project_no,
    project_title,
    type,
    project_active,
    end_date_month,
    end_date_day,
    end_date_year,
    est_person_hours,
    dept_no,
    person_id,
    project_no1)
     VALUES (
            :NEW.project_no,
            :NEW.project_title,
            'Previous_Project',
            :NEW.project_active,
            :NEW.end_date_month,
            :NEW.end_date_day,
            :NEW.end_date_year,
            :NEW.est_person_hours,
            :NEW.dept_no,
            :NEW.person_id,
            :NEW.project_no1) ; 
END;
/

create view S16_department_view as
SELECT
    dept_no,
    dept_name
FROM Department;

create or replace TRIGGER S16_department_trigger
    INSTEAD OF insert ON S16_department_view
    FOR EACH ROW
BEGIN
    insert into Department(
    dept_no,
    dept_name)
     VALUES (
            :NEW.dept_no,
            :NEW.dept_name) ; 
END;
/
