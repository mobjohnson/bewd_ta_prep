-- # Create a new database
-- # moma_db

DROP TABLE IF EXISTS artists CASCADE;
CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25) NOT NULL,
  nationality VARCHAR(25) NOT NULL
);

DROP TABLE IF EXISTS paintings CASCADE;
CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  title VARCHAR(25) NOT NULL,
  artist_id INTEGER REFERENCES artists(id)
);