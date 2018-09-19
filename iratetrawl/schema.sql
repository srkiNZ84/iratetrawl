DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE IF NOT EXISTS user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS place (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  latitude REAL NOT NULL,
  longitude REAL NOT NULL
);

INSERT INTO place (created, name, description, latitude, longitude) VALUES (date('now'), 'Tonys', 'Family Italian Resturant', -36.770339, 174.7349993);

