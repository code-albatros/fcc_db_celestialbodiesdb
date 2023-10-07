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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    elements_id integer NOT NULL,
    name character varying(30) NOT NULL,
    amount text
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: elements_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.elements_elements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.elements_elements_id_seq OWNER TO freecodecamp;

--
-- Name: elements_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.elements_elements_id_seq OWNED BY public.elements.elements_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    n_stars integer,
    codename text,
    lightyears integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass integer,
    diameter integer,
    distance_planet numeric(5,1),
    planet_id integer,
    life boolean,
    water boolean,
    temp integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    life boolean,
    water boolean,
    temp integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    status text,
    mass integer,
    diameter integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: elements elements_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements ALTER COLUMN elements_id SET DEFAULT nextval('public.elements_elements_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'carbon', 'high');
INSERT INTO public.elements VALUES (2, 'iron', 'low');
INSERT INTO public.elements VALUES (3, 'nitrogen', 'very high');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 342, 'C-324', 105700);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 5656, 'A-34', 220000);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 576, 'B-23', 50000);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 1234, 'B-233', 130000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 2323, 'A-234', 170000);
INSERT INTO public.galaxy VALUES (6, 'Whirpool', 243, 'C-342', 60000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'pan', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'daphnis', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'atlas', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'prometheus', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'pandora', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'epimetheus', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'janus', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'aegaeon', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'mimas', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'methone', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'anthe', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'pallene', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'enceladus', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'tethys', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'telesto', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'calypso', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'dione', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'helene', NULL, NULL, NULL, 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'polydeuces', NULL, NULL, NULL, 7, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 7, true, true, 13);
INSERT INTO public.planet VALUES (2, 'mercury', 7, false, false, 4340);
INSERT INTO public.planet VALUES (3, 'venus', 7, false, false, 233);
INSERT INTO public.planet VALUES (4, 'mars', 7, false, true, -23);
INSERT INTO public.planet VALUES (5, 'neptune', 7, false, false, -32);
INSERT INTO public.planet VALUES (6, 'jupiter', 7, false, false, -66);
INSERT INTO public.planet VALUES (7, 'saturn', 7, false, false, -123);
INSERT INTO public.planet VALUES (8, 'uranus', 7, false, false, -200);
INSERT INTO public.planet VALUES (9, 'pluto', 7, false, false, -123);
INSERT INTO public.planet VALUES (10, 'ceres', 2, false, false, 234);
INSERT INTO public.planet VALUES (11, 'haumea', 3, false, false, 32122);
INSERT INTO public.planet VALUES (12, 'makemake', 4, false, false, -123);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Arcturus', 1, 'alive', 2425, 23);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 'red dwarf', 546, 23);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3, 'white dwarf', 454, 54);
INSERT INTO public.star VALUES (4, 'Altair', 2, 'alive', 234, 4343);
INSERT INTO public.star VALUES (5, 'Rigel', 3, 'death', 12323, 22);
INSERT INTO public.star VALUES (6, 'Vega', 5, 'alive', 454, 3434);
INSERT INTO public.star VALUES (7, 'Sun', 1, 'alive', 19891, 696265000);


--
-- Name: elements_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.elements_elements_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: elements elements_elements_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_elements_id_key UNIQUE (elements_id);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (elements_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

