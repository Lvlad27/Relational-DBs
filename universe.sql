--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_type character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(40) NOT NULL,
    planet_id integer,
    moon_type character varying(40) NOT NULL,
    is_spherical boolean
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
    name character varying(40) NOT NULL,
    star_id integer,
    planet_type text NOT NULL,
    has_life boolean
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
-- Name: space_probe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_probe (
    space_probe_id integer NOT NULL,
    name character varying(55) NOT NULL,
    country_origin text NOT NULL,
    launch_date date NOT NULL,
    planet_id integer,
    mission_duration_days integer
);


ALTER TABLE public.space_probe OWNER TO freecodecamp;

--
-- Name: space_prove_space_probe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_prove_space_probe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_prove_space_probe_id_seq OWNER TO freecodecamp;

--
-- Name: space_prove_space_probe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_prove_space_probe_id_seq OWNED BY public.space_probe.space_probe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    star_type character varying(40) NOT NULL,
    is_spherical boolean
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
-- Name: space_probe space_probe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe ALTER COLUMN space_probe_id SET DEFAULT nextval('public.space_prove_space_probe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13500, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 2537000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 8000, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'Spiral', 21000, 27000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 5000, 23000000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', 12000, 53000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Terrestrial', true);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Terrestrial', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Terrestrial', false);
INSERT INTO public.moon VALUES (4, 'Io', 4, 'Terrestrial', true);
INSERT INTO public.moon VALUES (5, 'Europa', 4, 'Terrestrial', true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, 'Terrestrial', true);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, 'Terrestrial', true);
INSERT INTO public.moon VALUES (8, 'Titan', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (9, 'Rhea', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (11, 'Dione', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (12, 'Tethys', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (14, 'Mimas', 5, 'Terrestrial', true);
INSERT INTO public.moon VALUES (15, 'Oberon', 6, 'Terrestrial', true);
INSERT INTO public.moon VALUES (16, 'Titania', 6, 'Terrestrial', true);
INSERT INTO public.moon VALUES (17, 'Ariel', 6, 'Terrestrial', true);
INSERT INTO public.moon VALUES (18, 'Umbriel', 6, 'Terrestrial', true);
INSERT INTO public.moon VALUES (19, 'Miranda', 6, 'Terrestrial', true);
INSERT INTO public.moon VALUES (20, 'Triton', 7, 'Terrestrial', true);
INSERT INTO public.moon VALUES (21, 'Nereid', 7, 'Terrestrial', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', false);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Terrestrial', false);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, 'Gas Giant', false);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 'Gas Giant', false);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 'Ice Giant', false);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 'Ice Giant', false);
INSERT INTO public.planet VALUES (8, 'Pluto', 1, 'Dwarf', false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 6, 'Terrestrial', NULL);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 6, 'Terrestrial', NULL);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 2, 'Terrestrial', NULL);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri Bc', 2, 'Terrestrial', NULL);


--
-- Data for Name: space_probe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_probe VALUES (1, 'Voyager 1', 'USA', '1977-09-05', NULL, NULL);
INSERT INTO public.space_probe VALUES (2, 'Voyager 2', 'USA', '1977-08-20', NULL, NULL);
INSERT INTO public.space_probe VALUES (3, 'Mars Rover Perseverance', 'USA', '2020-07-30', 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G2V', true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 'G2V', true);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 'A1V', true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 'M1I', true);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 'B8I', true);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 'M5.5Ve', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_prove_space_probe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_prove_space_probe_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_probe space_prove_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_prove_name_key UNIQUE (name);


--
-- Name: space_probe space_prove_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_prove_pkey PRIMARY KEY (space_probe_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- Name: space_probe space_prove_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_probe
    ADD CONSTRAINT space_prove_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

