create table Departments(
department_id int Primary Key,
department_name varchar(20)
);


create table Employees(
employee_id int Primary Key,
name varchar(50),
birthdate date,
phone_number int,
national_id varchar(20),
nationality varchar(20),
marital_status varchar(10),
personal_photo varchar(255), 
entry_date date,
password varchar(20), 
department_id int,
is_manager BIT DEFAULT 0, -- Using BIT, with 0 for FALSE (non-manager) and 1 for TRUE (manager)
Foreign Key (department_id) References Departments(department_id)
);


create table Tasks(
task_id int Primary Key,
task_title varchar(20),
start_date date,
due_date date,
task_description text,
employee_id int,
Foreign Key (employee_id) References Employees(employee_id)
);


create table Feedback(
feedback_id int Primary Key,
sender_email varchar(20),
message text,
received_date date
);