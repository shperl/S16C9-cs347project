DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Department_PK_trig 
; 

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Person_PK_trig 
; 

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER Project_PK_trig 
; 

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_no from dual; 
end; 
/

DROP INDEX person_id_FK_0 ;
CREATE INDEX person_id_FK_0 ON child_parent(person_id) ;
DROP INDEX dept_no_FK_1 ;
CREATE INDEX dept_no_FK_1 ON Project(dept_no) ;
DROP INDEX person_id_FK_2 ;
CREATE INDEX person_id_FK_2 ON project_employees(person_id) ;
DROP INDEX dept_no_FK_3 ;
CREATE INDEX dept_no_FK_3 ON Person(dept_no) ;
DROP INDEX person_id3_FK_4 ;
CREATE INDEX person_id3_FK_4 ON Person(person_id3) ;
DROP INDEX person_id1_FK_5 ;
CREATE INDEX person_id1_FK_5 ON child_parent(person_id1) ;
DROP INDEX project_no_FK_6 ;
CREATE INDEX project_no_FK_6 ON project_employees(project_no) ;
DROP INDEX person_id_FK_7 ;
CREATE INDEX person_id_FK_7 ON Project(person_id) ;
DROP INDEX person_id1_FK_8 ;
CREATE INDEX person_id1_FK_8 ON Person(person_id1) ;
DROP INDEX project_no1_FK_9 ;
CREATE INDEX project_no1_FK_9 ON Project(project_no1) ;
