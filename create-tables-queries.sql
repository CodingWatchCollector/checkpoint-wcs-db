CREATE TABLE IF NOT EXISTS Recruiters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Candidates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    about TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS CandidatesOffers (
	offer_id INTEGER NOT NULL,
	candidate_id INTEGER NOT NULL,
	PRIMARY KEY (offer_id, candidate_id),
	FOREIGN KEY (offer_id) REFERENCES Offers (id),
    FOREIGN KEY (candidate_id) REFERENCES Candidates (id)
);

CREATE TABLE IF NOT EXISTS Enterprises (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT NOT NULL,
    fk_recruiter INTEGER NOT NULL,
    FOREIGN KEY (fk_recruiter) REFERENCES Recruiters (id)
);

CREATE TABLE IF NOT EXISTS Offers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    city VARCHAR(255) NOT NULL,
    fk_enterprise INTEGER NOT NULL,
    FOREIGN KEY (fk_enterprise) REFERENCES Enterprises (id)
);
