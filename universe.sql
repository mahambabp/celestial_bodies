--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    support_life boolean,
    description character varying(125),
    galaxy_type character varying(125)
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
    name character varying(20) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    description character varying(125)
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
    name character varying(20) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    is_spherical boolean,
    star_id integer
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
-- Name: specie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.specie (
    specie_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.specie OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.specie_specie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specie_specie_id_seq OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.specie_specie_id_seq OWNED BY public.specie.specie_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    avg_temperature numeric(3,1),
    has_life text,
    galaxy_id integer
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
-- Name: specie specie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie ALTER COLUMN specie_id SET DEFAULT nextval('public.specie_specie_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (3, 'Antennae', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (5, 'Messier', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (7, 'Sombrero', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (9, 'Black Eye', true, 'Unknown', 'TBD');
INSERT INTO public.galaxy VALUES (10, 'Blue Osiris', true, 'Unknown', 'TBD');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (2, 'Europa', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (3, 'Callisto', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (4, 'The Moon', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (5, 'Europa', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (6, 'Callisto', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (7, 'Io', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (8, 'Ganymede', true, 1, 'This is a moon');
INSERT INTO public.moon VALUES (9, 'Phobos', true, 4, 'This is a moon');
INSERT INTO public.moon VALUES (10, 'Deimos', true, 4, 'This is a moon');
INSERT INTO public.moon VALUES (11, 'Titan', true, 6, 'This is a moon');
INSERT INTO public.moon VALUES (12, 'Enceladus', true, 6, 'This is a moon');
INSERT INTO public.moon VALUES (13, 'Triton', true, 8, 'This is a moon');
INSERT INTO public.moon VALUES (14, 'Charon', true, 9, 'This is a moon');
INSERT INTO public.moon VALUES (15, 'Miranda', true, 10, 'This is a moon');
INSERT INTO public.moon VALUES (16, 'Titania', true, 10, 'This is a moon');
INSERT INTO public.moon VALUES (17, 'Oberon', true, 10, 'This is a moon');
INSERT INTO public.moon VALUES (18, 'Ariel', true, 10, 'This is a moon');
INSERT INTO public.moon VALUES (19, 'Umbriel', true, 10, 'This is a moon');
INSERT INTO public.moon VALUES (20, 'Dione', true, 6, 'This is a moon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4540, 0, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4603, 140, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4503, 238, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL, 5);


--
-- Data for Name: specie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.specie VALUES (1, 'Human', 1);
INSERT INTO public.specie VALUES (2, 'Mammals', NULL);
INSERT INTO public.specie VALUES (3, 'Reptiles', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Supergiants', 49.0, 'Yes', 1);
INSERT INTO public.star VALUES (2, 'Sun', 49.0, 'No', 2);
INSERT INTO public.star VALUES (3, 'Sirius', 49.0, 'No', 3);
INSERT INTO public.star VALUES (4, 'Alpha', 49.0, 'No', 4);
INSERT INTO public.star VALUES (5, 'Centauri', 49.0, 'No', 5);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 49.0, 'No', 6);
INSERT INTO public.star VALUES (7, 'Rigel', 49.0, 'No', 7);
INSERT INTO public.star VALUES (8, 'Polaris', 49.0, 'No', 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: specie_specie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.specie_specie_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: specie specie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_pkey PRIMARY KEY (specie_id);


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
-- Name: specie specie_planet_of_origin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_planet_of_origin_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

