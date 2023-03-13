--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id character varying(30) NOT NULL,
    color character varying(30) NOT NULL,
    species character varying(30),
    home_planet character varying(30),
    age integer,
    name character varying(30)
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id character varying(40) NOT NULL,
    star_count integer,
    distance_km integer NOT NULL,
    life_source boolean,
    name character varying(30),
    black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id character varying(40) NOT NULL,
    distance_km numeric NOT NULL,
    life_sign boolean,
    planet_id character varying(40),
    name character varying(30),
    composition character varying(40)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id character varying(40) NOT NULL,
    alias text,
    gases boolean,
    star_id character varying(30) NOT NULL,
    life_sign boolean,
    name character varying(30),
    weather character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id character varying(40) NOT NULL,
    galaxy_id character varying(40) NOT NULL,
    name character varying(30),
    lumens character varying(30),
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES ('1', 'brown', 'ewok', NULL, NULL, NULL);
INSERT INTO public.alien VALUES ('2', 'grey', 'borg', NULL, NULL, NULL);
INSERT INTO public.alien VALUES ('3', 'blue', 'daleks', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('adromeda', NULL, 100, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('elliptical', NULL, 101, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('backward', NULL, 110, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('corvus', NULL, 111, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('coma', NULL, 112, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('ursa major', NULL, 113, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('1', 1001, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('2', 1002, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('3', 1003, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('4', 1004, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('5', 1005, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('6', 1006, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('7', 1007, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('8', 2000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('9', 2001, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('10', 1004, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('11', 200000, NULL, 'jupiter', 'europa', NULL);
INSERT INTO public.moon VALUES ('12', 3000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('13', 4000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('24', 2002, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('14', 4000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('15', 100000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('16', 200000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('17', 100001, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('18', 2000000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('19', 110000, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('jupiter', NULL, NULL, 'hunter', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('mars', NULL, NULL, 'alpha', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('pluto', NULL, NULL, 'beta', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('earth', NULL, NULL, 'big dipper', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('saturn', NULL, NULL, 'iota', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 9', NULL, NULL, 'aries', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet x', NULL, NULL, 'gama', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('uranus', NULL, NULL, 'antilia', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('ceres', NULL, NULL, 'gama', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('haumea', NULL, NULL, 'alpha', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('eris', NULL, NULL, 'north star', NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('unnamed', NULL, NULL, 'little dipper', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('hunter', 'ursa major', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('big dipper', 'corvus', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('little dipper', 'adromeda', NULL, NULL, NULL);
INSERT INTO public.star VALUES ('north star', 'backward', NULL, '1000', NULL);
INSERT INTO public.star VALUES ('antilia', 'ursa major', NULL, '1001', NULL);
INSERT INTO public.star VALUES ('aries', 'elliptical', NULL, '1010', 1000000);
INSERT INTO public.star VALUES ('alpha', 'corvus', NULL, NULL, 10001000);
INSERT INTO public.star VALUES ('beta', 'adromeda', NULL, NULL, 10000001);
INSERT INTO public.star VALUES ('gama', 'ursa major', NULL, NULL, 1000003);
INSERT INTO public.star VALUES ('iota', 'backward', NULL, NULL, 10002000);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: alien alien_species_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_species_key UNIQUE (species);


--
-- Name: galaxy galaxy_black_hole_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_black_hole_key UNIQUE (black_hole);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_composition_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_composition_key UNIQUE (composition);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_weather_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_weather_key UNIQUE (weather);


--
-- Name: star star_lumens_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumens_key UNIQUE (lumens);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

