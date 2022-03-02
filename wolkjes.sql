CREATE TABLE campus (
	campus_id SERIAL UNIQUE,
	name VARCHAR ( 150 ) UNIQUE NOT NULL,
    warning_value INT NOT NULL DEFAULT 400,
    critical_value INT NOT NULL DEFAULT 700,
    PRIMARY KEY ( campus_id ) 
);

CREATE TABLE persoon (
	persoon_id SERIAL UNIQUE,
	username VARCHAR ( 150 ) UNIQUE NOT NULL,
	email VARCHAR ( 150 ) NOT NULL UNIQUE,
    password VARCHAR ( 256 ) NOT NULL,
    role VARCHAR ( 150 ) NOT NULL DEFAULT 'user',
    PRIMARY KEY ( persoon_id )
);

CREATE TABLE lokaal (
	lokaal_id SERIAL UNIQUE,
    campus_id serial,
    lokaal_naam VARCHAR ( 150 ) NOT NULL,	
    PRIMARY KEY ( lokaal_id ),
    FOREIGN KEY (campus_id) REFERENCES campus (campus_id)
);

CREATE TABLE sensor (
    sensor_id VARCHAR ( 150 ) UNIQUE,
    lokaal_id INTEGER,
    new BOOLEAN,
    id INTEGER,
    PRIMARY KEY ( sensor_id ),
    FOREIGN KEY (lokaal_id) REFERENCES lokaal (lokaal_id)
);

CREATE TABLE machine (
    machine_id SERIAL UNIQUE,
    lokaal_id serial,
    PRIMARY KEY ( machine_id ),
    FOREIGN KEY (lokaal_id) REFERENCES lokaal (lokaal_id)
);

CREATE TABLE campus_persoon
(
    campus_id SERIAL,
    persoon_id SERIAL,
    FOREIGN KEY (campus_id) REFERENCES campus (campus_id) ON DELETE CASCADE,
    FOREIGN KEY (persoon_id) REFERENCES persoon (persoon_id) ON DELETE CASCADE
);
