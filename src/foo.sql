-- Database: foo

-- DROP DATABASE foo;

CREATE DATABASE foo
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

ALTER DATABASE foo
    SET session_preload_libraries TO 'anon';


CREATE TABLE usuario(
	id serial NOT NULL,
	usuario character varying (15) NOT NULL,
	clave bytea
)

INSERT INTO usuario (usuario, clave) values ('alex', encrypt('11112222', 'password', '3des')), 
											 ('andres',  encrypt('22223333', 'password', '3des')),
											 ('juan',  encrypt('33334444', 'password', '3des')),
											 ('angel',  encrypt('44445555', 'password', '3des')),
											 ('ramon',  encrypt('55556666', 'password', '3des'));

SELECT * FROM usuario;



SELECT usuario, encode(decrypt(clave,'password','3des'::text), 'escape'::text) FROM usuario


INSERT INTO usuario (usuario, clave) VALUES ('luis', encrypt_iv('66667777', 'password', '', 'des'))


CREATE TABLE player (
	id serial NOT NULL,
	name text NOT NULL,
	points integer NOT NULL
)

SELECT * FROM player;


INSERT INTO player (name, points) VALUES 
('pmartinez', 125),
('asandoval', 124),
('jsanchez', 123),
('ahernandez', 122),
('jvazquez', 121),
('rmata', 120),
('atorres', 119),
('eguerrero', 118),
('smadrid', 117),
('lgarcia', 116),
('ctovar', 115),
('rluna', 114),
('greyna', 113),
('jamaro', 112),
('dlopez', 111),
('ctrejo', 110),
('dmontiel', 109),
('jmartinez', 108),
('fespinoza', 107),
('jcoronado', 106),
('aflores', 105),
('framirez', 104),
('slona', 103),
('egarcia', 102),
('joviedo', 101)





