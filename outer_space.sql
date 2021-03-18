-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE orbital_periods
(
  id SERIAL PRIMARY KEY,
  orbital_period_in_years FLOAT NOT NULL
);

CREATE TABLE orbits
(
  id SERIAL PRIMARY KEY,
  orbits_around TEXT NOT NULL
);

CREATE TABLE galaxy
(
  id SERIAL PRIMARY KEY,
  galaxy TEXT NOT NULL
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  moons TEXT[]
);


INSERT INTO planets
  (name)
VALUES
  ('Earth'),
  ('Mars'),
  ('Venus'),
  ('Neptune'),
  ('Proxima Centauri b'),
  ('Gliese 876 b');

INSERT INTO orbital_periods
  (orbital_period_in_years)
VALUES
  (1.00),
  (1.88),
  (0.62),
  (164.8),
  (0.03),
  (0.23);

INSERT INTO orbits
  (orbits_around)
VALUES
  ('The Sun'),
  ('Proxima Centauri'),
  ('Gliese 876');

INSERT INTO galaxy
  (galaxy)
VALUES
  ('Milky Way');

INSERT INTO moons
  (moons)
VALUES
  ('{"The Moon"}'),
  ('{"Phobos"}'),
  ('{"Deimos"}'),
  ('{}'),
  ('{"Naiad"}'),
  ('{"Thalassa"}'),
  ('{"Despina"}'),
  ('{"Galatea"}'),
  ('{"Larissa"}'),
  ('{"S/2004 N 1"}'),
  ('{"Proteus"}'),
  ('{"Triton"}'),
  ('{"Nereid"}'),
  ('{"Halimede"}'),
  ('{"Sao"}'),
  ('{"Laomedeia"}'),
  ('{"Psamathe"}'),
  ('{"Neso"}');