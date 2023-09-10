create schema yes_fitness;
use yes_fitness;

create table clients(
id_client INT NOT NULL auto_increment,
first_name VARCHAR (30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
email varchar (50) NOT NULL,
birthday date,
weight float,
height INT,
currently_workout int NOT NULL,
times_per_week int NOT NULL,
primary key (id_client));

INSERT INTO `clients` (id_client, first_name, last_name, email, birthday, weight, height, currently_workout,times_per_week) 
VALUES 
(1 , 'Natalia', 'Rodoni', 'nrodoni@gmail.com', '1975-05-27', '53', '162', '3', '3'),
(2 ,'Alejandra ', 'Romano', 'romano@hotmail.com', '1976-06-15', '68', '172', '6', '2'),
(3 ,'Martina', 'Ramsfelder', 'martinarams@gmail.com', '1987-07-31', '50', '163', '1', '2'),
(4 ,'Fran', 'Carr Rollitt', 'rollitt@gmail.com', '1985-04-30', '80', '190', '4', '2'),
(5 ,'Emilia', 'Montero', 'montero@outlook.com', '1975-06-20', '55', '175', '2', '2'),
(6 ,'Victoria', 'Gomez', 'gomezv@gmail.com', '1980-12-22', '80', '174', '7', '2'),
(7 ,'Sebastian', 'Riganti', 'riganti@gmail.com', '1970-07-22', '80', '172', '11', '2'),
(8 ,'Laura', 'Scarafia', 'scarafia@gmail.com', '1968-07-16', '65', '157', '6', '2'),
(9 ,'Camila', 'Mango', 'cami.mango@hotmail.com', '1993-11-15', '60', '164', '5', '4'),
(10 ,'Erica', 'Gaitan', 'gaitan@gmail.com', '1975-07-16', '58', '157', '8', '1'),
(11 ,'Fernando', 'Sanchez', 'fernando.sanchez.eijo@gmail.com', '1972-04-26', '76', '175', '9', '1'),
(12 ,'Fiona', 'Barcenilla', 'bfio@hotmail.com', '1996-04-12', '50', '158', '10', '2'),
(13 ,'Claudia', 'Steve', 'steve@gmail.com', '1995-10-01', '50', '161', '1', '3'),
(14 ,'Esther', 'Sanchez', 'esther@gmail.com', '1995-04-14', '52', '158', '3', '3'),
(15 ,'Catalina', 'Loed', 'catalina.loeb@gmail.com', '1995-02-03', '52', '122', '6', '1'),
(16 ,'Paula', 'Blanco', 'raigant10@icloud.com', '1972-04-02', '57', '167', '8', '2'),
(17 ,'Camila', 'Martinez', 'cam.martinezg@gmail.com', '1972-07-05', '60', '167', '11', '2'),
(18 ,'Marcela', 'San Martin-Foley', 'masamafoley32@gmail.com', '1970-04-09', '60', '158', '1', '2');


alter table clients drop column height;

alter table clients add height float; 

UPDATE `clients` SET `height` = '1.62' WHERE (`id_client` = '1');
UPDATE `clients` SET `height` = '1.72' WHERE (`id_client` = '2');
UPDATE `clients` SET `height` = '1.63' WHERE (`id_client` = '3');
UPDATE `clients` SET `height` = '1.90' WHERE (`id_client` = '4');
UPDATE `clients` SET `height` = '1.75' WHERE (`id_client` = '5');
UPDATE `clients` SET `height` = '1.74' WHERE (`id_client` = '6');
UPDATE `clients` SET `height` = '1.72' WHERE (`id_client` = '7');
UPDATE `clients` SET `height` = '1.57' WHERE (`id_client` = '8');
UPDATE `clients` SET `height` = '1.64' WHERE (`id_client` = '9');
UPDATE `clients` SET `height` = '1.57' WHERE (`id_client` = '10');
UPDATE `clients` SET `height` = '1.75' WHERE (`id_client` = '11');
UPDATE `clients` SET `height` = '1.58' WHERE (`id_client` = '12');
UPDATE `clients` SET `height` = '1.61' WHERE (`id_client` = '13');
UPDATE `clients` SET `height` = '1.58' WHERE (`id_client` = '14');
UPDATE `clients` SET `height` = '1.61' WHERE (`id_client` = '15');
UPDATE `clients` SET `height` = '1.58' WHERE (`id_client` = '16');
UPDATE `clients` SET `height` = '1.22' WHERE (`id_client` = '17');
UPDATE `clients` SET `height` = '1.67' WHERE (`id_client` = '18');


create table workouts(
id_workouts INT NOT NULL auto_increment,
name_of_workout varchar (30) not null,
workout_description varchar (200),
id_workout_level int not null,
primary key (id_workouts));

INSERT INTO `workouts`(id_workouts, name_of_workout, workout_description, id_workout_level) 
VALUES
('1', 'UpperBody', 'Arms, back, chest & abs', '1'),
('2', 'UpperBody', 'Arms, back, chest & abs', '2'),
('3', 'UpperBody', 'Arms, back, chest & abs', '3'),
('4', 'LowerBody', 'Legs, booty', '1'),
('5', 'LowerBody', 'Legs, booty', '2'),
('6', 'LowerBody', 'Legs, booty', '3'),
('7', 'FullBody', 'The full body', '1'),
('8', 'FullBody', 'The full body', '2'),
('9', 'FullBody', 'The full body', '3'),
('10', 'Aerobic', 'Cardio', '1'),
('11', 'Aerobic', 'Cardio', '2'),
('12', 'Aerobic', 'Cardio', '3'),
('13', 'Abs', 'Media Zone', '1'),
('14', 'Abs', 'Media Zone', '2'),
('15', 'Abs', 'Media Zone', '3'),
('16', 'Yoga', 'Technique', '3');


create table workout_level (
id_level INT NOT NULL auto_increment,
workout_level_description varchar (200),
primary key (id_level));

INSERT INTO `workout_level` (id_level, workout_level_description)
VALUES 
('1', 'easy'),
('2', 'medium'),
('3', 'hard');

create table week_days (
id_day INT NOT NULL auto_increment,
name_day varchar (45) not null,
primary key (id_day));

INSERT INTO `week_days` (id_day, name_day)
VALUES 
(null, 'Lunes'),
(null, 'Martes'),
(null, 'Miercoles'),
(null, 'Jueves'),
(null, 'Viernes'),
(null, 'Sabado'),
(null, 'Domingo');

create table best_voted (
id_vote INT NOT NULL auto_increment,
score int,
id_workout int not null,
id_system_user int not null,
primary key (id_vote));

INSERT INTO `best_voted` (id_vote, score, id_workout, id_system_user)
VALUES 
(null, '10', '1', '1'),
(null, '10', '2', '2'),
(null, '9', '3', '7'),
(null, '8', '4', '6'),
(null, '7', '5', '16'),
(null, '10', '6', '14'),
(null, '10', '7', '18'),
(null, '10', '8', '3'),
(null, '9', '9', '5'),
(null, '8', '10', '11'),
(null, '8', '11', '4'),
(null, '7', '12', '17');


create table plan(
id_plan INT NOT NULL auto_increment,
day_of_the_week int,
name_of_workout int,
id_system_user int,
primary key (id_plan));


INSERT INTO `plan` (`id_plan`,`day_of_the_week`, `name_of_workout`, `id_system_user`) 
VALUES 
(null,'1', '1', '1'),
(null,'2', '3', '2'),
(null,'4', '2', '1');


create table payment (
id_pay INT NOT NULL auto_increment,
amount_per_class REAL NOT NULL DEFAULT 3850,
currency varchar (20) NOT null,
pay_type varchar (50),
id_system_user int not null,
primary key (id_pay));


INSERT INTO `payment` (currency,pay_type, id_system_user) 
VALUES 
('ARS', 'WIRE', '1'),
('ARS', 'CASH', '2'),
('ARS', 'WIRE', '3'),
('ARS', 'WIRE', '4'),
('ARS', 'WIRE', '5'),
('ARS', 'WIRE', '6'),
('ARS', 'CASH', '7'),
('ARS', 'WIRE', '8'),
('ARS', 'CASH', '9'),
('ARS', 'CASH', '10'),
('ARS', 'CASH', '11'),
('ARS', 'CASH', '12'),
('ARS', 'CASH', '13'),
('ARS', 'WIRE', '14'),
('ARS', 'CASH', '15'),
('ARS', 'CASH', '16'),
('ARS', 'CASH', '17'),
('ARS', 'WIRE', '18');

create table order_details(
id_invoice INT NOT NULL auto_increment,
id_plan_info int not null,
id_client_info int not null,
id_level_info int not null,
id_payment_info int not null,
invoice_description varchar (30) not null,
primary key (id_invoice));

INSERT INTO `order_details` 
VALUES 
(null, '1', '1', '2', '1', 'in process'),
(null, '2', '5', '3', '2', 'done'),
(null, '3', '16', '1', '3', 'done');


create table best_workouts (
id_best_workout INT NOT NULL auto_increment,
name_of_workout int,
workout_exercises varchar (500),
score tinyint,
primary key (id_best_workout)); 

INSERT INTO `best_workouts` (`name_of_workout`, `workout_exercises`, `score`) 
VALUES 
('1', '3 Rounds= 15 box jump, 10 plate over head, 5 burpees', '5'),
('2', '3 Rounds= 12 Front Squats, Hip thrust, Deadlift', '5'),
('3', '5 Rounds= 30\"run, 15 thrusters, 10 scorpion push ups, 5 burpees', '3'),
('4', '5 Rounds= 5 pull ups, 5 triceps dips', '3'),
('5', '3 Rounds=25 Walking lunges, 25/25 Bulgarian lunges', '5'),
('6', '60\"50\"40\" of Burpees, high knees, crunchs and hollow', '5'),
('7', 'EMOM 18 Push ups, 4 Pull ups', '5'),
('8', '50 Lunges, 15 push ups, 80 Squats, 10 Push ups', '5'),
('9', '20-18-16 Hip thurst, Back Squat', '4'),
('10', '3 Rounds= 10/10 Alt box jump', '3'),
('11', '20-18-16 Push ups, Bear crawl, supermans', '4'),
('12', '12-11-10-9-8-7-6-5-4-3-2-1 burpees, russian twist', '5'),
('13', '3 rounds= 12 back squat, 12 Lunges, 12 Deadlift', '5'),
('14', '4 Rounds = 10 min run max ', '3'),
('15', '30 burpees, 15 shoulder press, 20 burpees, 30 low jack', '4');

alter table plan add (
foreign key (name_of_workout) references workout_level (id_level)); 

alter table clients add (
foreign key (currently_workout) references workouts(id_workouts),
foreign key (times_per_week) references week_days (id_day)
);

alter table workouts add (
foreign key (id_workout_level) references workout_level(id_level));

alter table order_details add (
foreign key (id_plan_info) references plan (id_plan),
foreign key (id_client_info) references clients (id_client),
foreign key (id_level_info) references workout_level (id_level),
foreign key (id_payment_info) references payment (id_pay));


alter table payment add (
foreign key (id_system_user) references clients (id_client));



-- View conocer cuantos entrenamientos hay disponibles y como se relaciona su dificultad
create view types_of_level as 
select * from workouts W
inner join workout_level L on
W.id_workout_level = L.id_level;


create table exercises
(
id_exercises INT NOT NULL auto_increment,
name_of_exercises varchar (200) not null,
exercises_description varchar (900),
equipment varchar (200) not null,
rating int not null,
primary key (id_exercises));


create table workout_completed
(
id_workouts INT NOT NULL auto_increment,
id_client int not null,
completed int not null,
primary key (id_workouts));


INSERT INTO `workout_completed` 
VALUES 
(null,'1', true),
(null,'2', false),
(null,'3', false),
(null,'4', true),
(null,'5', false),
(null,'6', false),
(null,'7', true),
(null,'8', true),
(null,'9', true),
(null,'10', true),
(null,'11', false),
(null,'12', false),
(null,'13', true),
(null,'14', true),
(null,'15', true),
(null,'16', false),
(null,'17', false),
(null,'18', false);

create table workout_incompleted
(select* from workout_completed where completed = FALSE);

alter table workout_incompleted rename column completed to incompleted;

-- VIEW clients quienes no han completado sus entrenamientos
create view workout_client_incompleted as 
select c.first_name, c.last_name, WIC.id_workouts, WIC.incompleted, WIC.id_client from workout_incompleted WIC
inner join clients C on
WIC.id_client = C.id_client;

-- VIEW de ejercicios que requieren el uso de todo el cuerpo
create view workout_one_exercises as
select*from exercises
where id_exercises in ('196','205','262', '285', '997', '1335');

-- VIEW del solo el nombre, apellido peso y altura del cliente para tener una vista lista para calcular IMC
create view clients_weight_height as
select first_name, last_name, weight, height
from clients;

-- VIEW de entrenamientos faciles a dificiles
create view workouts_easy_to_hard as
select * from workouts W
inner join workout_level L on
W.id_workout_level = L.id_level;

-- VIEW de ejercicios mejores votados 
create view best_voted_exercises as
select* from best_voted B
inner join exercises E on
B.id_vote = E.id_exercises;



-- Para saber quienes estan haciendo piernas
create view clients_doing_lowerbody as
(select * from clients
where currently_workout = 2);

-- FUNCIONES crear una funcion que me calcule el IMC el indice de masa muscular 
DELIMITER $$
create function `calculate_imc` (weight float, height_in_meters float)
returns float
no SQL
begin
	DECLARE result float;
    SET result = (weight / (height_in_meters * height_in_meters));
    RETURN result;
end
$$

select id_client, first_name, last_name, weight, height, calculate_imc(weight, height) as 'IMC' from clients;

-- VIEW para saber IMC de cada cliente

create view clients_IMC as 
(select id_client, first_name, last_name, weight, height, calculate_imc(weight, height) as 'IMC' from clients);

-- FUNCION para darle la Bienvenida a los clientes
DELIMITER //
create function Welcome (first_name varchar(50), last_name varchar(50))
returns VARCHAR (150)
deterministic
begin
declare full_name varchar (100);
set full_name = concat (first_name, ' ', last_name);
return concat ('Bienvenido ', full_name); 
end
//

select id_client, first_name, last_name, Welcome(first_name, last_name) as 'Welcome' from clients;

-- FUNCION para saber que entrenamientos estan buenos

DELIMITER //
create function f_score (
amount tinyint)
returns varchar(15)
deterministic
begin
declare score varchar(15) default '';
declare x int default 0;

while x<amount do
set score = concat(score, '*');
set x=x+1;
end while;

return score;
end //


select workout_exercises, f_score(score) from best_workouts;

-- FUNCION para calcular el monto mensual  
DELIMITER $$
create function `calculate_total_payment` (amount_per_class REAL, total_per_week INT)
returns float
no SQL
begin
	DECLARE result float;
    SET result = ((amount_per_class * total_per_week)*4);
    RETURN result;
end
$$

create view total_to_amount_due as
select id_pay, amount_per_class, currency, pay_type, id_system_user, calculate_total_payment(amount_per_class, total_per_week) as 'total' from payment;

-- STORED PROCEDURES sin parámetros, seleccion de nombre, apellido y entrenamientos actual de clientes.

DELIMITER //
create procedure pa_clients_currently_workout()
begin
select first_name, last_name, currently_workout
from clients;
end //

call pa_clients_currently_workout();

-- STORED PROCEDURE, sin parametros. Ahora buscaremos cuantas veces por semana entrena cada uno de los clientes

DELIMITER //
create procedure pa_clients_times_per_week()
begin
select first_name, last_name, times_per_week
from clients
where times_per_week >0;
end //

call pa_clients_times_per_week();

-- STORED PROCEDURE con parametros, aquellos clientes que entrenen 2 o 3 veces por semana con su nombre y apellido

DELIMITER // 
create procedure pa_clients_workout_more_than_twice (
in p_times_per_week int )
begin
select first_name, last_name, times_per_week
from clients
where times_per_week >= p_times_per_week;
end //

call pa_clients_workout_more_than_twice(2);

-- STORE PROCEDURE con parametros, actualizar los entrenamientos de los clientes

DELIMITER //
create procedure pa_update_clients_workout (
in p_last_workout int,
in p_update_workout int)
begin
update clients
set currently_workout=p_update_workout
where currently_workout=p_last_workout;
end //

call pa_update_clients_workout (1, 2);

-- TRIGGER insertar nuevos entrenamientos que clientes han calificado como buenos 
create table new_best_workouts(
id_best_workout INT NOT NULL auto_increment,
name_of_workout int,
workout_exercises VARCHAR (500),
score tinyint,
primary key (id_best_workout));

create trigger `tr_add_new_best_workout`
after insert on `best_workouts`
for each row
insert into `new_best_workouts` (id_best_workout, name_of_workout, workout_exercises, score)
values (new.id_best_workout, new.name_of_workout, new.workout_exercises, new.score);

insert into best_workouts (id_best_workout, name_of_workout, workout_exercises, score)
VALUES (16, 2, '4 Rounds= 20 Push ups, 60" mountain climber, 50 russian swing', '8');

select * from best_workouts where id_best_workout = 16;
select * from new_best_workouts;

insert into best_workouts (id_best_workout, name_of_workout, workout_exercises, score)
VALUES (17, 4, '50 Low plank to high plank, 100 squats, 100 push ups, 100 sit-ups', '10'),
(18, 7, '5/5 Rounds= 5/5 Lunges, 5 Front Squat, 5 Thrusters, 5 Deadlift ', '10');

-- TRIGGER CON AUDITORIA ahora se vera actualizado cada nuevo entrenamiento que salga para mantener a los clientes motivados para su nuevo y mejor votado entrenamiento:

create table _audits (
id_log int primary key auto_increment,
entity varchar (100),
entity_id int,
insert_dt datetime,
created_by varchar (100),
last_update_dt datetime,
last_updated_by varchar (100));

create trigger `tr_insert_best_workouts_aud`
after insert on `best_workouts`
for each row
insert into `_audits` (entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by)
values ('best_workouts', new.id_best_workout, current_timestamp(), user(), current_timestamp(), user());

insert into best_workouts (id_best_workout, name_of_workout, workout_exercises, score)
VALUES (19, 9, '100 burpees, 100 squats, 20 pulls', '7');

select * from best_workouts;
select* from _audits;
select* from new_best_workouts;

-- creando usuarios y permisos

use mysql;
show tables;

create user coderhouse@localhost identified by 'coder#sql';
create user user1@localhost identified by 'yes1234';
create user user2@localhost identified by 'yes12345';
show variables like 'validate_password%';

-- modificar contraseña
alter user coderhouse@localhost identified by 'coder1234';

-- cambiar nombre
rename user coderhouse@localhost to 'prueba@localhost';

select*from user;

-- El user1 tendra acceso a columnas especificas solo para ver entrenamientos porque este usuario es un cliente
GRANT select (workout_exercises) on yes_fitness.best_workouts to user1@localhost;

-- user1 tendra acceso para ver quienes han completado los entrenamientos y quienes no
grant all on yes_fitness.best_workouts to user1@localhost;
grant all on yes_fitness.workout_completed to user1@localhost;
grant all on yes_fitness.workout_incompleted to user1@localhost;
grant all on yes_fitness.workout_exercises to user1@localhost;


-- user2 tendra acceso a todo el esquema yes_fitness porque es como un administrador para verificar que toda la información este bien
grant all on yes_fitness.* to user2@localhost;

-- Empezar transaction para actualizar el entrenamiento que estaba escrito antes  
use yes_fitness;
select @@autocommit;
set autocommit = 0;


start transaction;
update best_workouts
set
workout_exercises = '5-4-3-2-1 Pull ups, Front Squat, Deadlift & Push ups'

where
id_best_workout= 4 and
name_of_workout= 4;

commit;

-- Intentando de poner un poco mas picante los entrenamientos pero decidi que ya con el nombre hard describe especifico que va ser difcil

start transaction;
update workout_level
set 
workout_level_description = 'Super Hard'
where
id_level= 3;

rollback;

-- Actualizar y agregar detalles de quien a hechos pagos

start transaction;
update order_details
set
invoice_description= 'done'
where
id_invoice = 1 and
id_plan_info = 1 and
id_client_info = 1 and
id_level_info = 2 and
id_payment_info = 1;

commit;

-- Empezar a guardar nuevos entrenamientos (savepoint)
start transaction;
insert into best_workouts (id_best_workout, name_of_workout, workout_exercises) 
values
(20, 5, '200 row, 15 box jump, 10 plate over head, 5 burpee pull ups');
savepoint sp1;
insert into best_workouts (id_best_workout, name_of_workout, workout_exercises) 
values
(21, 8, '20-18-16 Russian swing, thrusters, high knee kick, push ups jacks'),
(22, 6, '18-16-14-16-18 hip thrust, superman, diamond push ups, bear crawl');
commit;

select *from best_workouts;
