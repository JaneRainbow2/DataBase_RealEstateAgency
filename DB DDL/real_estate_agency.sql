CREATE TABLE real_estates (
	real_estate_id serial,
	area integer NOT NULL,
	type varchar(100) NOT NULL,
	number_of_rooms integer NOT NULL,
	floor integer,
	number_of_floors integer,
	living_space integer,
	cost integer NOT NULL,
	status varchar(100) NOT NULL,
	agent_id integer NOT NULL,
	CONSTRAINT real_estates_pk PRIMARY KEY (real_estate_id)
);



CREATE TABLE clients (
	client_id serial,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	preferences varchar(150),
	contacts varchar(100) NOT NULL,
	real_estate_id integer NOT NULL,
	CONSTRAINT clients_pk PRIMARY KEY (client_id)
);



CREATE TABLE contracts (
	contract_id serial,
	contract_number integer NOT NULL UNIQUE,
	contract_amount integer NOT NULL,
	signing_date DATE NOT NULL,
	status varchar(100) NOT NULL,
	owner_id integer NOT NULL,
	client_id integer NOT NULL,
	CONSTRAINT contracts_pk PRIMARY KEY (contract_id)
);



CREATE TABLE agents (
	agent_id serial,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	commission integer NOT NULL,
	contacts varchar(100) NOT NULL,
	CONSTRAINT agents_pk PRIMARY KEY (agent_id)
);



CREATE TABLE owners (
	owner_id serial,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	address varchar(100) NOT NULL,
	contacts varchar(100) NOT NULL,
	real_estate_id integer NOT NULL,
	CONSTRAINT owners_pk PRIMARY KEY (owner_id)
);



ALTER TABLE real_estates ADD CONSTRAINT real_estates_fk0 FOREIGN KEY (agent_id) REFERENCES agents(agent_id);

ALTER TABLE clients ADD CONSTRAINT clients_fk0 FOREIGN KEY (real_estate_id) REFERENCES real_estates(real_estate_id);

ALTER TABLE contracts ADD CONSTRAINT contracts_fk0 FOREIGN KEY (owner_id) REFERENCES owners(owner_id);
ALTER TABLE contracts ADD CONSTRAINT contracts_fk1 FOREIGN KEY (client_id) REFERENCES clients(client_id);


ALTER TABLE owners ADD CONSTRAINT owners_fk0 FOREIGN KEY (real_estate_id) REFERENCES real_estates(real_estate_id);






