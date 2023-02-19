-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	SELECT * FROM items
	
	SELECT * FROM items ORDER BY prix 
	
	SELECT * FROM items WHERE prix >= 80 ORDER BY prix DESC
	
	SELECT * FROM clients
	
	SELECT nom, prenoms FROM clients ORDER BY nom LIMIT 3
	
	SELECT nom, prenoms FROM clients ORDER BY nom DESC