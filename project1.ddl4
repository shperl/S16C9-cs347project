drop view S16_person_view ;
drop view S16_employee_view ;
drop view S16_previous_employee_view ;
drop view S16_project_employee_view ;
drop view S16_manager_view ;
drop view S16_interim_manager_view ;
drop view S16_president_view ;
drop view S16_project_view ;
drop view S16_current_project_view ;
drop view S16_previous_project_view ;
drop view S16_department_view ;

create view S16_employee_view as
SELECT 
    person_id1,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager_id

FROM Person where type = 'Employee' ;

create or replace TRIGGER S16_employee_trigger
     INSTEAD OF insert ON S16_employee_view
     FOR EACH ROW
BEGIN
    insert into Person( 
            person_id1,
            type,
            first_name,
            last_name,
            home_address,
            zipcode,
            home_phone,
            us_citizen,
            spouse,
            employee_id,
            salary,
            salary_exception,
            manager_id)
         VALUES ( 
            :NEW.person_id1,
            'Employee',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.spouse,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.manager_id
            ) ;
END;
/

create view s16_previous_employee_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    isFired,
    salary
FROM Person WHERE type = 'Previous_Employee' ;

create or replace TRIGGER s16_previous_employee_trigger
     INSTEAD OF insert ON s16_previous_employee_view
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
        spouse,
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
            :NEW.spouse,
            :NEW.isFired,
            :NEW.salary) ;
END;
/

create view s16_project_employee_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager_id
FROM Person WHERE type = 'Project_Employee' ;

create or replace TRIGGER s16_project_employee_trigger
     INSTEAD OF insert ON s16_project_employee_view
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
        spouse,
        employee_id,
        salary,
        salary_exception,
        manager_id)
    VALUES ( 
            :NEW.person_id,
            'Project_Employee',
            :NEW.first_name,
            :NEW.last_name,
            :NEW.home_address,
            :NEW.zipcode,
            :NEW.home_phone,
            :NEW.us_citizen,
            :NEW.spouse,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.manager_id) ;
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
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager_id,
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
        spouse,
        employee_id,
        salary,
        salary_exception,
        manager_id,
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
            :NEW.spouse,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.manager_id,
            :NEW.bonus,
            :NEW.dept_no) ;
END;
/


create view s16_interim_manager_view as
SELECT
    person_id,
    type,
    first_name,
    last_name,
    home_address,
    zipcode,
    home_phone,
    us_citizen,
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager_id,
    bonus,
    dept_no
FROM Person WHERE type = 'Interim_Manager' ;

create or replace TRIGGER s16_interim_manager_trigger
     INSTEAD OF insert ON s16_interim_manager_view
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
        spouse,
        employee_id,
        salary,
        salary_exception,
        manager_id,
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
            :NEW.spouse,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.manager_id,
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
    spouse,
    employee_id,
    salary,
    salary_exception,
    manager_id,
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
        spouse,
        employee_id,
        salary,
        salary_exception,
        manager_id,
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
            :NEW.spouse,
            :NEW.employee_id,
            :NEW.salary,
            :NEW.salary_exception,
            :NEW.manager_id,
            :NEW.bonus,
            :NEW.dept_no) ;
END;
/

create view s16_current_project_view as
SELECT
    project_no,
    type,
    project_title,
    project_manager,
    dept_assigned,
    project_manager_id,
    dept_no,
    parent_project,
    project_active
FROM Project WHERE type = 'Current_Project' ;

create or replace TRIGGER s16_current_project_trigger
     INSTEAD OF insert ON s16_current_project_view
     FOR EACH ROW
BEGIN
    insert into Project( 
        project_no,
        type,
        project_title,
        project_manager,
        dept_assigned,
        project_manager_id,
        dept_no,
        parent_project,
        project_active)
    VALUES ( 
            :NEW.project_no,
            'Current_Project',
            :NEW.project_title,
            :NEW.project_manager,
            :NEW.dept_assigned,
            :NEW.project_manager_id,
            :NEW.dept_no,
            :NEW.parent_project,
            :NEW.project_active) ;
END;
/

create view S16_previous_project_view as
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
    project_manager_id,
    Project_ID,
    parent_project
FROM
    Project where type = "Previous Project";

create or replace TRIGGER S16_previous_project_trigger
    INSTEAD OF inster ON S16_previous_project_view
    FOR EACH ROW
BEGIN
    instert into Project{
    project_no,
    project_title,
    type,
    project_active,
    end_date_month,
    end_date_day,
    end_date_year,
    est_person_hours,
    dept_no,
    project_manager_id,
    parent_project}
     VALUES {
            :NEW.project_no,
            :NEW.project_title,
            'Previous Project',
            :NEW.project_active,
            :NEW.end_date_month,
            :NEW.end_date_day,
            :NEW.end_date_year,
            :NEW.est_person_hours,
            :NEW.dept_no,
            :NEW.project_manager_id,
            :NEW.parent_project} ; 
END;
/

