-
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 828);
INSERT INTO public.games VALUES (2, 1, 414);
INSERT INTO public.games VALUES (3, 2, 901);
INSERT INTO public.games VALUES (4, 2, 677);
INSERT INTO public.games VALUES (5, 1, 572);
INSERT INTO public.games VALUES (6, 1, 222);
INSERT INTO public.games VALUES (7, 1, 900);
INSERT INTO public.games VALUES (8, 3, 27);
INSERT INTO public.games VALUES (9, 4, 78);
INSERT INTO public.games VALUES (10, 4, 83);
INSERT INTO public.games VALUES (11, 5, 565);
INSERT INTO public.games VALUES (12, 5, 844);
INSERT INTO public.games VALUES (13, 4, 378);
INSERT INTO public.games VALUES (14, 4, 362);
INSERT INTO public.games VALUES (15, 4, 256);
INSERT INTO public.games VALUES (16, 6, 195);
INSERT INTO public.games VALUES (17, 6, 789);
INSERT INTO public.games VALUES (18, 7, 194);
INSERT INTO public.games VALUES (19, 7, 636);
INSERT INTO public.games VALUES (20, 6, 66);
INSERT INTO public.games VALUES (21, 6, 459);
INSERT INTO public.games VALUES (22, 6, 350);
INSERT INTO public.games VALUES (23, 8, 31);
INSERT INTO public.games VALUES (24, 8, 524);
INSERT INTO public.games VALUES (25, 9, 658);
INSERT INTO public.games VALUES (26, 9, 239);
INSERT INTO public.games VALUES (27, 8, 111);
INSERT INTO public.games VALUES (28, 8, 514);
INSERT INTO public.games VALUES (29, 8, 897);
INSERT INTO public.games VALUES (30, 10, 934);
INSERT INTO public.games VALUES (31, 10, 682);
INSERT INTO public.games VALUES (32, 11, 266);
INSERT INTO public.games VALUES (33, 11, 388);
INSERT INTO public.games VALUES (34, 10, 835);
INSERT INTO public.games VALUES (35, 10, 191);
INSERT INTO public.games VALUES (36, 10, 951);
INSERT INTO public.games VALUES (37, 12, 22);
INSERT INTO public.games VALUES (38, 12, 369);
INSERT INTO public.games VALUES (39, 13, 670);
INSERT INTO public.games VALUES (40, 13, 343);
INSERT INTO public.games VALUES (41, 12, 909);
INSERT INTO public.games VALUES (42, 12, 112);
INSERT INTO public.games VALUES (43, 12, 574);
INSERT INTO public.games VALUES (44, 18, 87);
INSERT INTO public.games VALUES (45, 18, 251);
INSERT INTO public.games VALUES (46, 19, 621);
INSERT INTO public.games VALUES (47, 19, 60);
INSERT INTO public.games VALUES (48, 18, 812);
INSERT INTO public.games VALUES (49, 18, 947);
INSERT INTO public.games VALUES (50, 18, 91);
INSERT INTO public.games VALUES (51, 20, 217);
INSERT INTO public.games VALUES (52, 20, 852);
INSERT INTO public.games VALUES (53, 21, 149);
INSERT INTO public.games VALUES (54, 21, 67);
INSERT INTO public.games VALUES (55, 20, 338);
INSERT INTO public.games VALUES (56, 20, 388);
INSERT INTO public.games VALUES (57, 20, 232);
INSERT INTO public.games VALUES (58, 22, 875);
INSERT INTO public.games VALUES (59, 22, 501);
INSERT INTO public.games VALUES (60, 23, 771);
INSERT INTO public.games VALUES (61, 23, 519);
INSERT INTO public.games VALUES (62, 22, 595);
INSERT INTO public.games VALUES (63, 22, 21);
INSERT INTO public.games VALUES (64, 22, 812);
INSERT INTO public.games VALUES (65, 24, 478);
INSERT INTO public.games VALUES (66, 24, 230);
INSERT INTO public.games VALUES (67, 25, 662);
INSERT INTO public.games VALUES (68, 25, 546);
INSERT INTO public.games VALUES (69, 24, 704);
INSERT INTO public.games VALUES (70, 24, 430);
INSERT INTO public.games VALUES (71, 24, 31);
INSERT INTO public.games VALUES (72, 26, 732);
INSERT INTO public.games VALUES (73, 26, 373);
INSERT INTO public.games VALUES (74, 27, 579);
INSERT INTO public.games VALUES (75, 27, 966);
INSERT INTO public.games VALUES (76, 26, 416);
INSERT INTO public.games VALUES (77, 26, 395);
INSERT INTO public.games VALUES (78, 26, 515);
INSERT INTO public.games VALUES (79, 28, 655);
INSERT INTO public.games VALUES (80, 28, 678);
INSERT INTO public.games VALUES (81, 29, 952);
INSERT INTO public.games VALUES (82, 29, 396);
INSERT INTO public.games VALUES (83, 28, 508);
INSERT INTO public.games VALUES (84, 28, 632);
INSERT INTO public.games VALUES (85, 28, 746);
INSERT INTO public.games VALUES (86, 30, 491);
INSERT INTO public.games VALUES (87, 30, 757);
INSERT INTO public.games VALUES (88, 31, 768);
INSERT INTO public.games VALUES (89, 31, 114);
INSERT INTO public.games VALUES (90, 30, 340);
INSERT INTO public.games VALUES (91, 30, 886);
INSERT INTO public.games VALUES (92, 30, 564);
INSERT INTO public.games VALUES (93, 32, 71);
INSERT INTO public.games VALUES (94, 32, 384);
INSERT INTO public.games VALUES (95, 33, 298);
INSERT INTO public.games VALUES (96, 33, 734);
INSERT INTO public.games VALUES (97, 32, 236);
INSERT INTO public.games VALUES (98, 32, 746);
INSERT INTO public.games VALUES (99, 32, 847);
INSERT INTO public.games VALUES (100, 34, 21);
INSERT INTO public.games VALUES (101, 34, 92);
INSERT INTO public.games VALUES (102, 35, 678);
INSERT INTO public.games VALUES (103, 35, 870);
INSERT INTO public.games VALUES (104, 34, 313);
INSERT INTO public.games VALUES (105, 34, 576);
INSERT INTO public.games VALUES (106, 34, 657);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1773156160017');
INSERT INTO public.users VALUES (2, 'user_1773156160016');
INSERT INTO public.users VALUES (3, 'ALEXANDER');
INSERT INTO public.users VALUES (4, 'user_1773156590686');
INSERT INTO public.users VALUES (5, 'user_1773156590685');
INSERT INTO public.users VALUES (6, 'user_1773156594809');
INSERT INTO public.users VALUES (7, 'user_1773156594808');
INSERT INTO public.users VALUES (8, 'user_1773156705648');
INSERT INTO public.users VALUES (9, 'user_1773156705647');
INSERT INTO public.users VALUES (10, 'user_1773156756593');
INSERT INTO public.users VALUES (11, 'user_1773156756592');
INSERT INTO public.users VALUES (12, 'user_1773156782769');
INSERT INTO public.users VALUES (13, 'user_1773156782768');
INSERT INTO public.users VALUES (14, '');
INSERT INTO public.users VALUES (18, 'user_1773157600906');
INSERT INTO public.users VALUES (19, 'user_1773157600905');
INSERT INTO public.users VALUES (20, 'user_1773157651493');
INSERT INTO public.users VALUES (21, 'user_1773157651492');
INSERT INTO public.users VALUES (22, 'user_1773157735813');
INSERT INTO public.users VALUES (23, 'user_1773157735812');
INSERT INTO public.users VALUES (24, 'user_1773157809047');
INSERT INTO public.users VALUES (25, 'user_1773157809046');
INSERT INTO public.users VALUES (26, 'user_1773157825409');
INSERT INTO public.users VALUES (27, 'user_1773157825408');
INSERT INTO public.users VALUES (28, 'user_1773157930465');
INSERT INTO public.users VALUES (29, 'user_1773157930464');
INSERT INTO public.users VALUES (30, 'user_1773158831161');
INSERT INTO public.users VALUES (31, 'user_1773158831160');
INSERT INTO public.users VALUES (32, 'user_1773158867910');
INSERT INTO public.users VALUES (33, 'user_1773158867909');
INSERT INTO public.users VALUES (34, 'user_1773158954615');
INSERT INTO public.users VALUES (35, 'user_1773158954614');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete


