CREATE TABLE campus (
	campus_id SERIAL UNIQUE,
	name VARCHAR ( 150 ) UNIQUE NOT NULL,
    good_value INT NOT NULL DEFAULT 400,
    max_value INT NOT NULL DEFAULT 700,
	critical_value INT NOT NULL DEFAULT 800,
    PRIMARY KEY ( campus_id )
);

CREATE TABLE persoon (
	persoon_id SERIAL UNIQUE,
    campus_id serial,
	username VARCHAR ( 150 ) UNIQUE NOT NULL,
	email VARCHAR ( 150 ) NOT NULL,
    password VARCHAR ( 256 ) NOT NULL,
    role VARCHAR ( 150 ) NOT NULL DEFAULT 'user',
    PRIMARY KEY ( persoon_id ),
    FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);

CREATE TABLE lokaal (
	lokaal_id SERIAL UNIQUE,
    campus_id serial,
    PRIMARY KEY ( lokaal_id ),
    FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);

CREATE TABLE sensor (
    sensor_id VARCHAR ( 150 ) UNIQUE,
    lokaal_id serial,
    new boolean,
    PRIMARY KEY ( sensor_id ),
    FOREIGN KEY (lokaal_id) REFERENCES lokaal (lokaal_id)
);

CREATE TABLE machine (
    machine_id SERIAL UNIQUE,
    lokaal_id serial,
    PRIMARY KEY ( machine_id ),
    FOREIGN KEY (lokaal_id) REFERENCES lokaal (lokaal_id)
);