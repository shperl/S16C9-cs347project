DROP SEQUENCE Department_seq ; 
create sequence Department_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Department_PK_trig 
before insert on Department
for each row 
begin 
select Department_seq.nextval into :new.dept_no from dual; 
end; 
/
alter table Department add created date ; 
alter table Department add created_by VARCHAR2 (255) ; 
alter table Department add row_version_number integer ; 
alter table Department add updated date ; 
alter table Department add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Department_AUD_trig 
before insert or update on Department 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Person_seq ; 
create sequence Person_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Person_PK_trig 
before insert on Person
for each row 
begin 
select Person_seq.nextval into :new.person_id from dual; 
end; 
/
alter table Person add created date ; 
alter table Person add created_by VARCHAR2 (255) ; 
alter table Person add row_version_number integer ; 
alter table Person add updated date ; 
alter table Person add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Person_AUD_trig 
before insert or update on Person 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE Project_seq ; 
create sequence Project_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger Project_PK_trig 
before insert on Project
for each row 
begin 
select Project_seq.nextval into :new.project_no from dual; 
end; 
/
alter table Project add created date ; 
alter table Project add created_by VARCHAR2 (255) ; 
alter table Project add row_version_number integer ; 
alter table Project add updated date ; 
alter table Project add updated_by VARCHAR2 (255) ; 
/
create or replace trigger Project_AUD_trig 
before insert or update on Project 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX person_id_FK_0 ;
CREATE INDEX person_id_FK_0 ON child_parent(person_id) ;
DROP INDEX dept_no_FK_1 ;
CREATE INDEX dept_no_FK_1 ON Project(dept_no) ;
DROP INDEX person_id2_FK_2 ;
CREATE INDEX person_id2_FK_2 ON Person(person_id2) ;
DROP INDEX person_id_FK_3 ;
CREATE INDEX person_id_FK_3 ON project_employees(person_id) ;
DROP INDEX dept_no_FK_4 ;
CREATE INDEX dept_no_FK_4 ON Person(dept_no) ;
DROP INDEX person_id3_FK_5 ;
CREATE INDEX person_id3_FK_5 ON Person(person_id3) ;
DROP INDEX person_id1_FK_6 ;
CREATE INDEX person_id1_FK_6 ON child_parent(person_id1) ;
DROP INDEX project_no_FK_7 ;
CREATE INDEX project_no_FK_7 ON project_employees(project_no) ;
DROP INDEX person_id_FK_8 ;
CREATE INDEX person_id_FK_8 ON Project(person_id) ;
DROP INDEX person_id1_FK_9 ;
CREATE INDEX person_id1_FK_9 ON Person(person_id1) ;
DROP INDEX project_no1_FK_10 ;
CREATE INDEX project_no1_FK_10 ON Project(project_no1) ;
