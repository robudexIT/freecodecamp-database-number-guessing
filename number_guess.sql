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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_guess (
    game_id integer NOT NULL,
    number_of_guess integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.game_guess OWNER TO freecodecamp;

--
-- Name: game_guess_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_guess_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_guess_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_guess_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_guess_game_id_seq OWNED BY public.game_guess.game_id;


--
-- Name: username; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.username (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.username OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.username.user_id;


--
-- Name: game_guess game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_guess ALTER COLUMN game_id SET DEFAULT nextval('public.game_guess_game_id_seq'::regclass);


--
-- Name: username user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: game_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_guess VALUES (1, 2, 56);
INSERT INTO public.game_guess VALUES (2, 9, 56);
INSERT INTO public.game_guess VALUES (3, 896, 57);
INSERT INTO public.game_guess VALUES (4, 770, 57);
INSERT INTO public.game_guess VALUES (5, 3, 58);
INSERT INTO public.game_guess VALUES (6, 715, 58);
INSERT INTO public.game_guess VALUES (7, 215, 57);
INSERT INTO public.game_guess VALUES (8, 913, 57);
INSERT INTO public.game_guess VALUES (9, 41, 57);
INSERT INTO public.game_guess VALUES (10, 180, 59);
INSERT INTO public.game_guess VALUES (11, 918, 59);
INSERT INTO public.game_guess VALUES (12, 40, 60);
INSERT INTO public.game_guess VALUES (13, 591, 60);
INSERT INTO public.game_guess VALUES (14, 584, 59);
INSERT INTO public.game_guess VALUES (15, 416, 59);
INSERT INTO public.game_guess VALUES (16, 981, 59);
INSERT INTO public.game_guess VALUES (17, 540, 61);
INSERT INTO public.game_guess VALUES (18, 4, 61);
INSERT INTO public.game_guess VALUES (19, 798, 62);
INSERT INTO public.game_guess VALUES (20, 108, 62);
INSERT INTO public.game_guess VALUES (21, 264, 61);
INSERT INTO public.game_guess VALUES (22, 67, 61);
INSERT INTO public.game_guess VALUES (23, 53, 61);
INSERT INTO public.game_guess VALUES (24, 430, 63);
INSERT INTO public.game_guess VALUES (25, 87, 63);
INSERT INTO public.game_guess VALUES (26, 388, 64);
INSERT INTO public.game_guess VALUES (27, 85, 64);
INSERT INTO public.game_guess VALUES (28, 556, 63);
INSERT INTO public.game_guess VALUES (29, 426, 63);
INSERT INTO public.game_guess VALUES (30, 903, 63);
INSERT INTO public.game_guess VALUES (31, 6, 65);
INSERT INTO public.game_guess VALUES (32, 566, 65);
INSERT INTO public.game_guess VALUES (33, 190, 66);
INSERT INTO public.game_guess VALUES (34, 453, 66);
INSERT INTO public.game_guess VALUES (35, 935, 65);
INSERT INTO public.game_guess VALUES (36, 539, 65);
INSERT INTO public.game_guess VALUES (37, 633, 65);


--
-- Data for Name: username; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.username VALUES (57, 'user_1668632179509');
INSERT INTO public.username VALUES (58, 'user_1668632179508');
INSERT INTO public.username VALUES (59, 'user_1668632189405');
INSERT INTO public.username VALUES (60, 'user_1668632189404');
INSERT INTO public.username VALUES (61, 'user_1668632255366');
INSERT INTO public.username VALUES (62, 'user_1668632255365');
INSERT INTO public.username VALUES (63, 'user_1668632262227');
INSERT INTO public.username VALUES (64, 'user_1668632262226');
INSERT INTO public.username VALUES (65, 'user_1668632328782');
INSERT INTO public.username VALUES (66, 'user_1668632328781');
INSERT INTO public.username VALUES (55, 'robudex');
INSERT INTO public.username VALUES (56, 'rogmer');


--
-- Name: game_guess_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_guess_game_id_seq', 37, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 66, true);


--
-- Name: game_guess game_guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_guess
    ADD CONSTRAINT game_guess_pkey PRIMARY KEY (game_id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: username username_usernaem_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.username
    ADD CONSTRAINT username_usernaem_key UNIQUE (username);


--
-- Name: game_guess game_guess_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_guess
    ADD CONSTRAINT game_guess_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.username(user_id);


--
-- PostgreSQL database dump complete
--

